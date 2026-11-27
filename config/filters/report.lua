-- Filtro del informe Trazza para Pandoc (PDF con Typst y DOCX).
-- * \newpage                         -> salto de página nativo del formato
-- * salto automático antes de cada H1, de cada H2 "N.1." y de cada H2 del front matter
-- * <br> dentro de tablas            -> salto de línea
-- * párrafos que solo tienen imágenes -> centrados y con ancho según metadata
-- * todo lo anterior al primer H1/H2 -> portada centrada
-- * ::: toc :::                      -> índice generado en esa posición
-- Así los .md quedan en Markdown estándar (se ven bien en WebStorm y GitHub)
-- y el diseño se controla desde config/metadata.yaml.

local stringify = pandoc.utils.stringify
local toc_title, toc_depth = "Contenido", 3
local widths = { default = "85%", rules = {} }  -- anchos de imagen (metadata "anchos-imagen")
local logo_width = "80px"
local break_patterns = {}                       -- metadata "salto-antes-de"

local function is_typst() return FORMAT:match("typst") ~= nil end
local function is_docx() return FORMAT:match("docx") ~= nil end

local function pagebreak()
  if is_typst() then
    return pandoc.RawBlock("typst", "#pagebreak(weak: true)")
  elseif is_docx() then
    return pandoc.RawBlock("openxml", '<w:p><w:r><w:br w:type="page"/></w:r></w:p>')
  end
  return pandoc.RawBlock("html", '<div style="page-break-after: always;"></div>')
end

local function is_pagebreak(b)
  if not b then return false end
  if b.t == "RawBlock" then
    return b.text:match("pagebreak") or b.text:match('w:type="page"') or b.text:match("^\\newpage")
  end
  return false
end

local function centered(blocks)
  if is_typst() then
    local out = { pandoc.RawBlock("typst", "#align(center)[") }
    for _, b in ipairs(blocks) do out[#out + 1] = b end
    out[#out + 1] = pandoc.RawBlock("typst", "]")
    return out
  end
  return { pandoc.Div(blocks, pandoc.Attr("", {}, { ["custom-style"] = "Centrado" })) }
end

local function image_only(para)
  local has_image = false
  for _, il in ipairs(para.content) do
    if il.t == "Image" then
      has_image = true
    elseif il.t ~= "Space" and il.t ~= "SoftBreak" and il.t ~= "LineBreak" then
      return false
    end
  end
  return has_image
end

local function toc_block()
  if is_typst() then
    return pandoc.RawBlock("typst", string.format(
      "#outline(title: [%s], depth: %d)", toc_title, toc_depth))
  elseif is_docx() then
    return pandoc.RawBlock("openxml", string.format([[
<w:sdt><w:sdtPr><w:docPartObj><w:docPartGallery w:val="Table of Contents"/><w:docPartUnique/></w:docPartObj></w:sdtPr><w:sdtContent>
<w:p><w:pPr><w:pStyle w:val="TOCHeading"/></w:pPr><w:r><w:t xml:space="preserve">%s</w:t></w:r></w:p>
<w:p><w:r><w:fldChar w:fldCharType="begin" w:dirty="true"/><w:instrText xml:space="preserve">TOC \o "1-%d" \h \z \u</w:instrText><w:fldChar w:fldCharType="separate"/><w:t>Haz clic derecho y elige "Actualizar campo" para generar el índice.</w:t><w:fldChar w:fldCharType="end"/></w:r></w:p>
</w:sdtContent></w:sdt>]], toc_title, toc_depth))
  end
  return pandoc.Null()
end

-- Portada --------------------------------------------------------------------
-- Se extrae la estructura de 01-front-page.md (logo, líneas, tabla de
-- integrantes, cierre) y se maqueta con el molde UPC: en PDF con la función
-- #portada de config/typst/portada.typ; en DOCX con párrafos de posición fija.

local function split_lines(inlines)
  local lines, cur = {}, {}
  for _, il in ipairs(inlines) do
    if il.t == "LineBreak" then
      lines[#lines + 1] = cur; cur = {}
    else
      cur[#cur + 1] = il
    end
  end
  lines[#lines + 1] = cur
  local out = {}
  for _, l in ipairs(lines) do
    local text = stringify(l):gsub("^%s+", ""):gsub("%s+$", "")
    if text ~= "" then out[#out + 1] = text end
  end
  return out
end

local function extract_cover(blocks)
  local c = { logo = nil, lines = {}, rows = {}, closing = {} }
  local after_table = false
  for _, b in ipairs(blocks) do
    if (b.t == "Para" or b.t == "Plain") and image_only(b) then
      b.content:walk({ Image = function(img) c.logo = c.logo or img end })
    elseif b.t == "Para" or b.t == "Plain" or b.t == "Header" then
      local target = after_table and c.closing or c.lines
      for _, l in ipairs(split_lines(b.content)) do target[#target + 1] = l end
    elseif b.t == "Table" then
      after_table = true
      local function add_row(row)
        local cells = {}
        for _, cell in ipairs(row.cells) do cells[#cells + 1] = stringify(cell.contents) end
        c.rows[#c.rows + 1] = cells
      end
      for _, row in ipairs(b.head.rows) do add_row(row) end
      for _, body in ipairs(b.bodies) do
        for _, row in ipairs(body.body) do add_row(row) end
      end
    end
  end
  return c
end

local function typst_str(s)
  return '"' .. s:gsub('\\', '\\\\'):gsub('"', '\\"') .. '"'
end

local function cover_typst(c)
  local parts = {}
  local function list(items)
    local xs = {}
    for _, x in ipairs(items) do xs[#xs + 1] = typst_str(x) end
    return "(" .. table.concat(xs, ", ") .. (#xs == 1 and ",)" or ")")
  end
  local rows = {}
  for _, r in ipairs(c.rows) do rows[#rows + 1] = list({ r[1] or "", r[2] or "" }) end
  local args = "lineas: " .. list(c.lines) .. ", integrantes: (" .. table.concat(rows, ", ")
    .. (#rows == 1 and ",)" or ")") .. ", cierre: " .. list(c.closing) .. ")"
  if c.logo then
    c.logo.attributes.width = logo_width
    return {
      pandoc.RawBlock("typst", "#portada(logo: ["),
      pandoc.Plain({ c.logo }),
      pandoc.RawBlock("typst", "], " .. args),
    }
  end
  return { pandoc.RawBlock("typst", "#portada(" .. args) }
end

-- Molde para DOCX: mismas medidas que config/typst/portada.typ (pt desde el borde superior).
local docx_lines = {
  { 142.57, 12, false }, { 164.65, 12, false }, { 208.69, 14, true }, { 234.37, 14, true },
  { 259.93, 12, false }, { 281.89, 14, true }, { 307.46, 16, true }, { 336.73, 12, false },
  { 358.93, 14, true }, { 406.33, 12, false }, { 428.53, 14, true }, { 453.85, 12, false },
  { 476.05, 14, true }, { 523.45, 12, true },
}
local docx_closing = { { 710.41, 12, true }, { 754.33, 12, true } }
local docx_top_margin = 70.9    -- margen superior de reference.docx (1418 twips)
local docx_logo = { y = 73.6, h = 62 }
local docx_table = { y = 545.53, x = 184.32, col2 = 254.16, head = 21.78, step = 20.16, left_margin = 70.9 }

local function line_h(size) return size * 1.221 end
local function tw(pt) return string.format("%d", math.floor(pt * 20 + 0.5)) end

local function xml_escape(s)
  return (s:gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"))
end

local function run(text, size, bold)
  return string.format(
    '<w:r><w:rPr><w:rFonts w:ascii="Aptos" w:hAnsi="Aptos" w:cs="Aptos"/>%s<w:sz w:val="%d"/><w:szCs w:val="%d"/></w:rPr><w:t xml:space="preserve">%s</w:t></w:r>',
    bold and "<w:b/><w:bCs/>" or "", size * 2, size * 2, xml_escape(text))
end

local function docx_para(text, y, size, bold, prev_bottom)
  local before = math.max(0, y - prev_bottom)
  return string.format(
    '<w:p><w:pPr><w:jc w:val="center"/><w:spacing w:before="%s" w:after="0" w:line="%s" w:lineRule="exact"/></w:pPr>%s</w:p>',
    tw(before), tw(line_h(size)), run(text, size, bold)), y + line_h(size)
end

local function cover_docx(c)
  local out, bottom = {}, docx_top_margin
  if c.logo then
    c.logo.attributes.width = tostring(docx_logo.h) .. "pt"
    out[#out + 1] = pandoc.RawBlock("openxml", string.format(
      '<w:p><w:pPr><w:jc w:val="center"/><w:spacing w:before="%s" w:after="0"/></w:pPr></w:p>',
      tw(math.max(0, docx_logo.y - docx_top_margin - 12))))
    out[#out + 1] = pandoc.Div({ pandoc.Para({ c.logo }) },
      pandoc.Attr("", {}, { ["custom-style"] = "Centrado" }))
    bottom = docx_logo.y + docx_logo.h
  end
  local xml = {}
  for i, text in ipairs(c.lines) do
    local spec = docx_lines[i] or { bottom + 8, 12, false }
    local p; p, bottom = docx_para(text, spec[1], spec[2], spec[3], bottom)
    xml[#xml + 1] = p
  end
  if #c.rows > 0 then
    local t = docx_table
    local w1, w2 = t.col2 - t.x, 595.2 - 2 * t.x - (t.col2 - t.x) + 40
    local rows = {}
    for j, r in ipairs(c.rows) do
      local h = (j == 1) and t.head or t.step
      local size, bold = (j == 1) and 12 or 11, j == 1
      local cells = {}
      for k, w in ipairs({ w1, w2 }) do
        cells[#cells + 1] = string.format(
          '<w:tc><w:tcPr><w:tcW w:w="%s" w:type="dxa"/></w:tcPr><w:p><w:pPr><w:spacing w:before="0" w:after="0"/></w:pPr>%s</w:p></w:tc>',
          tw(w), run(r[k] or "", size, bold))
      end
      rows[#rows + 1] = string.format('<w:tr><w:trPr><w:trHeight w:val="%s" w:hRule="exact"/></w:trPr>%s</w:tr>',
        tw(h), table.concat(cells))
    end
    local before = math.max(0, t.y - bottom)
    xml[#xml + 1] = string.format(
      '<w:p><w:pPr><w:spacing w:before="0" w:after="0" w:line="%s" w:lineRule="exact"/></w:pPr></w:p>', tw(before))
    xml[#xml + 1] = string.format(
      '<w:tbl><w:tblPr><w:tblInd w:w="%s" w:type="dxa"/><w:tblBorders><w:top w:val="nil"/><w:left w:val="nil"/><w:bottom w:val="nil"/><w:right w:val="nil"/><w:insideH w:val="nil"/><w:insideV w:val="nil"/></w:tblBorders><w:tblLayout w:type="fixed"/><w:tblCellMar><w:left w:w="0" w:type="dxa"/><w:right w:w="0" w:type="dxa"/></w:tblCellMar></w:tblPr><w:tblGrid><w:gridCol w:w="%s"/><w:gridCol w:w="%s"/></w:tblGrid>%s</w:tbl>',
      tw(t.x - t.left_margin), tw(w1), tw(w2), table.concat(rows))
    bottom = t.y + t.head + t.step * (#c.rows - 1)
  end
  for k, text in ipairs(c.closing) do
    local spec = docx_closing[k] or { bottom + 8, 12, true }
    local p; p, bottom = docx_para(text, spec[1], spec[2], spec[3], bottom)
    xml[#xml + 1] = p
  end
  out[#out + 1] = pandoc.RawBlock("openxml", table.concat(xml, "\n"))
  return out
end

local function portada(div)
  local c = extract_cover(div.content)
  if is_typst() then return cover_typst(c) end
  if is_docx() then return cover_docx(c) end
  return div.content
end

local function needs_break(h, in_front_matter)
  if h.level == 1 then return true end
  local text = stringify(h.content)
  for _, p in ipairs(break_patterns) do
    if text:match(p) then return true end
  end
  if h.level == 2 then
    if in_front_matter then return true end
    return text:match("^%d+%.1%.") ~= nil
  end
  return false
end

function Meta(meta)
  if meta["toc-title"] then toc_title = stringify(meta["toc-title"]) end
  if meta["toc-depth"] then toc_depth = tonumber(stringify(meta["toc-depth"])) or toc_depth end
  local w = meta["anchos-imagen"]
  if w then
    if w.default then widths.default = stringify(w.default) end
    if w.logo then logo_width = stringify(w.logo) end
    for _, r in ipairs(w.reglas or {}) do
      widths.rules[#widths.rules + 1] = { pattern = stringify(r.patron), width = stringify(r.ancho) }
    end
  end
  for _, p in ipairs(meta["salto-antes-de"] or {}) do break_patterns[#break_patterns + 1] = stringify(p) end
end

local function set_width(img, default)
  if img.attributes.width then return img end
  local w = default
  if not w then
    w = widths.default
    for _, r in ipairs(widths.rules) do
      if img.src:match(r.pattern) then w = r.width; break end
    end
  end
  img.attributes.width = w
  return img
end

local function size_images(para, default)
  para.content = para.content:walk({ Image = function(img) return set_width(img, default) end })
  return para
end

-- Las tablas pipe con celdas largas reciben anchos fijos según los guiones del
-- separador (casi siempre iguales). Se dejan en automático para que cada formato
-- reparta el ancho según el contenido.
function Table(t)
  for i, spec in ipairs(t.colspecs) do
    t.colspecs[i] = { spec[1], pandoc.ColWidthDefault }
  end
  return t
end

function RawInline(r)
  if r.format == "html" and r.text:match("^<br%s*/?>$") then return pandoc.LineBreak() end
end

local function transform(blocks)
  local out, in_front_matter = {}, true
  -- portada: bloques antes del primer H1/H2
  local first = 1
  while blocks[first] and not (blocks[first].t == "Header" and blocks[first].level <= 2) do
    first = first + 1
  end
  if first > 1 then
    local cover = {}
    for i = 1, first - 1 do
      local b = blocks[i]
      cover[#cover + 1] = b
    end
    for _, x in ipairs(portada(pandoc.Div(cover))) do out[#out + 1] = x end
  end
  local function push_break()
    local last = out[#out]
    if #out > 0 and not is_pagebreak(last) then out[#out + 1] = pagebreak() end
  end
  for i = first, #blocks do
    local b = blocks[i]
    if b.t == "RawBlock" and b.format == "tex" and b.text:match("^\\newpage") then
      push_break()
    elseif b.t == "Header" then
      if b.level == 1 then in_front_matter = false end
      local prev = out[#out]
      if needs_break(b, in_front_matter) and not (prev and prev.t == "Header") then push_break() end
      out[#out + 1] = b
    elseif b.t == "Div" and b.classes:includes("toc") then
      push_break(); out[#out + 1] = toc_block(); push_break()
    elseif b.t == "Para" and image_only(b) then
      for _, x in ipairs(centered({ size_images(b) })) do out[#out + 1] = x end
    else
      out[#out + 1] = b
    end
  end
  return out
end

function Pandoc(doc)
  doc.blocks = pandoc.Blocks(transform(doc.blocks))
  return doc
end

return {
  { Meta = Meta },
  { RawInline = RawInline, Table = Table },
  { Pandoc = Pandoc },
}

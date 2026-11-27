-- Filtro del informe Trazza para Pandoc (PDF con Typst y DOCX).
-- * \newpage                         -> salto de página nativo del formato
-- * salto automático antes de cada H1, de cada H2 "N.1." y de cada H2 del front matter
-- * <br> dentro de tablas            -> salto de línea
-- * párrafos que solo tienen imágenes -> centrados
-- * ::: portada :::                  -> bloque centrado
-- * ::: toc :::                      -> índice generado en esa posición

local stringify = pandoc.utils.stringify
local toc_title, toc_depth = "Contenido", 3

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

local function portada(div)
  local blocks = div.content:walk({
    Header = function(h) return pandoc.Para({ pandoc.Strong(h.content) }) end,
  })
  if is_typst() then return centered(blocks) end
  return { pandoc.Div(blocks, pandoc.Attr("", {}, { ["custom-style"] = "Portada" })) }
end

local function needs_break(h, in_front_matter)
  if h.level == 1 then return true end
  if h.level == 2 then
    if in_front_matter then return true end
    return stringify(h.content):match("^%d+%.1%.") ~= nil
  end
  return false
end

function Meta(meta)
  if meta["toc-title"] then toc_title = stringify(meta["toc-title"]) end
  if meta["toc-depth"] then toc_depth = tonumber(stringify(meta["toc-depth"])) or toc_depth end
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
  local function push_break()
    local last = out[#out]
    if #out > 0 and not is_pagebreak(last) then out[#out + 1] = pagebreak() end
  end
  for _, b in ipairs(blocks) do
    if b.t == "RawBlock" and b.format == "tex" and b.text:match("^\\newpage") then
      push_break()
    elseif b.t == "Header" then
      if b.level == 1 then in_front_matter = false end
      local prev = out[#out]
      if needs_break(b, in_front_matter) and not (prev and prev.t == "Header") then push_break() end
      out[#out + 1] = b
    elseif b.t == "Div" and b.classes:includes("toc") then
      push_break(); out[#out + 1] = toc_block(); push_break()
    elseif b.t == "Div" and b.classes:includes("portada") then
      for _, x in ipairs(portada(b)) do out[#out + 1] = x end
    elseif b.t == "Para" and image_only(b) then
      for _, x in ipairs(centered({ b })) do out[#out + 1] = x end
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

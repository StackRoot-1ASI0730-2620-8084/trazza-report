// Portada del informe con el molde UPC (1asi0730-...-report-cover.pdf).
// Posiciones en pt medidas desde el borde superior de la hoja A4 (tope del texto).
// El filtro report.lua llama a #portada con el contenido de 01-front-page.md.

#let portada-fuente = ("Aptos", "Arial")

// [y, tamaño, negrita] para cada línea antes de la tabla de integrantes
#let portada-lineas = (
  (142.57, 12pt, false),  // Universidad Peruana de Ciencias Aplicadas
  (164.65, 12pt, false),  // Carrera de Ingeniería de Software
  (208.69, 14pt, true),   // código del curso
  (234.37, 14pt, true),   // nombre del curso
  (259.93, 12pt, false),  // NRC
  (281.89, 14pt, true),   // número de NRC
  (307.46, 16pt, true),   // Informe del Trabajo Final
  (336.73, 12pt, false),  // Docente
  (358.93, 14pt, true),   // nombre del docente
  (406.33, 12pt, false),  // Equipo
  (428.53, 14pt, true),   // nombre del equipo
  (453.85, 12pt, false),  // Proyecto
  (476.05, 14pt, true),   // nombre del proyecto
  (523.45, 12pt, true),   // Integrantes
)
#let portada-tabla = (y: 545.53, x: 184.32, col2: 254.16, paso: 20.16, cabecera: 12pt, filas: 11pt)
#let portada-cierre = ((710.41, 12pt, true), (754.33, 12pt, true))  // período y mes
#let portada-logo = (y: 73.6)

#let portada(logo: none, lineas: (), integrantes: (), cierre: ()) = page(
  margin: 0pt, numbering: none, header: none, footer: none,
)[
  #set text(font: portada-fuente, top-edge: "ascender", bottom-edge: "descender", lang: "es")
  #set par(spacing: 0pt, leading: 0pt)
  #let linea(y, tam, negrita, cuerpo) = place(top + center, dy: y * 1pt,
    text(size: tam, weight: if negrita { "bold" } else { "regular" }, cuerpo))

  #if logo != none { place(top + center, dy: portada-logo.y * 1pt, logo) }

  #for (i, l) in lineas.enumerate() {
    let (y, tam, negrita) = if i < portada-lineas.len() { portada-lineas.at(i) }
      else { (portada-lineas.last().at(0) + 22 * (i - portada-lineas.len() + 1), 12pt, false) }
    linea(y, tam, negrita, l)
  }

  #let t = portada-tabla
  #for (j, fila) in integrantes.enumerate() {
    let y = if j == 0 { t.y } else { t.y + 21.78 + t.paso * (j - 1) }
    let tam = if j == 0 { t.cabecera } else { t.filas }
    let peso = if j == 0 { "bold" } else { "regular" }
    place(top + left, dx: t.x * 1pt, dy: y * 1pt, text(size: tam, weight: peso, fila.at(0)))
    place(top + left, dx: t.col2 * 1pt, dy: y * 1pt, text(size: tam, weight: peso, fila.at(1)))
  }

  #for (k, l) in cierre.enumerate() {
    let (y, tam, negrita) = portada-cierre.at(calc.min(k, portada-cierre.len() - 1))
    linea(y, tam, negrita, l)
  }
]

# Trazza - Informe del Trabajo Final

Informe del proyecto Trazza (equipo StackRoot, 1ASI0730 Desarrollo de Aplicaciones Web). Los capítulos están en `report/` y las imágenes en `assets/images/`.

## Compilar el informe

Requisitos: [Pandoc](https://pandoc.org) 3.x y [Typst](https://typst.app) (`brew install pandoc typst`).

Desde la raíz del repositorio:

```bash
pandoc -d config/pdf.yaml    # PDF con Typst
pandoc -d config/docx.yaml   # Word
```

Los archivos se generan en `dist/` (ignorada por git). En el DOCX, el índice se genera al abrirlo en Word: acepta actualizar los campos o haz clic derecho sobre el índice y elige "Actualizar campo".

### Configuración

- `config/inputs.yaml`: orden de los capítulos y opciones comunes.
- `config/pdf.yaml` y `config/docx.yaml`: opciones de cada formato.
- `config/metadata.yaml`: metadatos y opciones de diseño.
- `config/filters/report.lua`: saltos de página, índice, portada e imágenes centradas.
- `config/typst/header.typ` y `config/reference.docx`: estilos del PDF y del Word.

Los `.md` se escriben en Markdown estándar (sin HTML ni atributos de Pandoc), así se ven igual en el preview de WebStorm o GitHub. El diseño se controla desde `config/metadata.yaml`:

- `anchos-imagen`: ancho por defecto de las imágenes, el del logo de la portada y reglas por nombre de archivo (por ejemplo, `mob` para capturas móviles).
- `salto-antes-de`: títulos que empiezan en página nueva, además de cada capítulo y del front matter.
- Todo lo que va antes del primer título `##` del informe se arma como portada centrada.

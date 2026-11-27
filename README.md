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
- `config/filters/report.lua`: saltos de página, índice, portada e imágenes centradas.
- `config/typst/header.typ` y `config/reference.docx`: estilos del PDF y del Word.

En los `.md` usa sintaxis de Pandoc en lugar de HTML: `![alt](ruta){width=80%}` para el tamaño de una imagen (con `\` al final si no debe llevar leyenda) y `\newpage` para forzar un salto de página.

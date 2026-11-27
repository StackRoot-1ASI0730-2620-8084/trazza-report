// Ajustes de estilo para el PDF generado con Typst
#show figure: set block(breakable: true)   // tablas largas pueden partirse entre páginas
#show figure.where(kind: table): set figure.caption(position: top)
#set table(inset: 5pt)
#show table: set text(size: 9pt)
#set par(justify: false)

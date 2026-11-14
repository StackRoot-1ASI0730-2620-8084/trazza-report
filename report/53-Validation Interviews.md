## 5.3. Validation Interviews. 

### 5.3.1. Diseño de Entrevistas. 

En esta sección se define, por cada segmento objetivo, cómo se realizarán las entrevistas de validación de **Trazza**: qué elementos se muestran al entrevistado (Landing Page y aplicación web), qué user flows se recorren y qué preguntas se formulan. Las entrevistas buscan comprobar si la propuesta resuelve el problema de los fletes de retorno vacíos en Lima y si el diseño es comprensible, útil y confiable para cada segmento.

### Estructura de cada sesión
 
| Bloque | Tiempo | Contenido |
|---|---|---|
| 1. Introducción | 3 min | Presentación, objetivo y consentimiento. Se aclara que se evalúa el producto, no a la persona. |
| 2. Landing Page | 5 min | El entrevistado la revisa en silencio durante 1 minuto y luego responde. |
| 3. Aplicación web | 12 a 15 min | Recorrido de los user flows con pensamiento en voz alta. |
| 4. Cierre | 3 a 5 min | Preguntas finales y agradecimiento. |
 
---
 
## Segmento 1: Transportistas de carga terrestre (Carrier)
 
**Persona de referencia:** Juan David Ramos.
**Perfil del entrevistado:** transportista independiente o dueño de una flota pequeña que opera en Lima y regresa con el vehículo vacío tras una entrega.
 
### Elementos a validar
 
| Elemento | Qué se muestra | Qué se quiere comprobar |
|---|---|---|
| **Landing Page** | Inicio, Cómo funciona, Beneficios, Testimonios y el CTA "Soy Transportista" | Que entienda en pocos segundos qué es Trazza, qué gana y que no se cobra comisión por flete. |
| **Web Application (Carrier)** | Sign up e inicio de sesión, Dashboard, Publish return route, Load Suggestions, Load Detail and Offer, Active Trip, Rate Merchant, Trip History, My Vehicles | Que pueda completar los flujos sin ayuda, entienda los términos y confíe en la información mostrada. |
 
### User flows a validar
 
| Flujo | User Goal | Recorrido que debe realizar el entrevistado |
|---|---|---|
| **UF-C1. Acceder a la plataforma** | UG0 | Landing Page → "Soy Transportista" → registro con DNI → Dashboard. |
| **UF-C2. Publicar una ruta de retorno y asegurar una carga** | UG1 | Dashboard → Publish return route → completar origen, destino, horario, vehículo y capacidad → ver cargas sugeridas → abrir una carga → aceptar o contraofertar. |
| **UF-C3. Ejecutar un viaje** | UG2 | Active Trip → Confirm pickup → viaje en tránsito → Confirm delivery → calificar al emprendedor. |
| **UF-C4. Registrar un vehículo** | UG5 | My Vehicles → registrar vehículo con placa y capacidad. |
 
### Guion de preguntas (8)
 
| # | Bloque | Pregunta | Qué valida |
|---|---|---|---|
| 1 | Landing Page | Después de ver esta página, ¿con sus palabras qué hace Trazza y para quién es? | Claridad de la propuesta de valor. |
| 2 | Landing Page | ¿Qué fue lo que más le llamó la atención o le generó dudas? ¿Qué le haría registrarse o no? | Motivación y barreras de conversión. |
| 3 | Registro | Al crear su cuenta, ¿hubo algún dato o paso que no entendió o que no le gustaría entregar? | Facilidad y confianza en el registro (UF-C1). |
| 4 | Publicar ruta | Al publicar su ruta de retorno, ¿los campos le parecieron claros y fáciles de llenar? ¿Qué cambiaría? | Usabilidad del formulario y términos como "desvío máximo" (UF-C2). |
| 5 | Cargas sugeridas | Mirando las cargas sugeridas, ¿tiene la información que necesita para decidir si la acepta? ¿Qué más necesitaría ver? | Utilidad de las cards y de la tarifa, desvío y reputación (UF-C2). |
| 6 | Viaje | Durante el viaje, ¿entiende cuál es el siguiente paso y qué botón presionar? ¿Se sentiría cómodo compartiendo su ubicación con el celular? | Claridad del stepper, carga cognitiva y aceptación de la geolocalización (UF-C3). |
| 7 | Confianza | ¿Qué tanto confiaría en un emprendedor que no conoce a través de esta plataforma? ¿Qué le daría más seguridad? | Confianza en calificaciones, verificación y reputación. |
| 8 | Valor y adopción | Si estuviera disponible hoy, ¿la usaría para sus viajes de retorno? ¿En qué se parece o se diferencia de cómo consigue carga actualmente? | Intención de uso frente a la alternativa actual (contactos y WhatsApp). |

## Segmento 2: Pequeños y medianos emprendedores (Merchant)
 
**Persona de referencia:** Valeria Torres.
**Perfil del entrevistado:** dueño o encargado de una MYPE en Lima que envía mercadería a clientes y hoy coordina el transporte de forma manual.
 
### Elementos a validar
 
| Elemento | Qué se muestra | Qué se quiere comprobar |
|---|---|---|
| **Landing Page** | Inicio, Cómo funciona, Beneficios, Tabla comparativa, Testimonios y el CTA "Soy Emprendedor" | Que entienda cómo encontrar transporte económico y seguro, y por qué Trazza es distinto a lo que usa hoy. |
| **Web Application (Merchant)** | Sign up e inicio de sesión, Dashboard, New freight request, Find Carriers, Offers, Shipment Tracking, Confirm Delivery, Report Incident, Rate Carrier, Plan & Billing | Que pueda solicitar un flete, elegir un transportista, seguir el envío y confirmar la entrega sin ayuda. |
 
### User flows a validar
 
| Flujo | User Goal | Recorrido que debe realizar el entrevistado |
|---|---|---|
| **UF-M1. Acceder a la plataforma** | UG0 | Landing Page → "Soy Emprendedor" → registro con RUC → Dashboard. |
| **UF-M2. Solicitar un flete y cerrar un acuerdo** | UG3 | Dashboard → New freight request → completar direcciones, horario y carga → Find Carriers → Send offer → Offers → Confirm match. |
| **UF-M3. Seguir un envío y confirmar la entrega** | UG4 | Shipment Tracking → revisar ubicación y alerta de desvío → confirmar entrega → calificar al transportista. |
| **UF-M4. Reportar una incidencia** | UG4 | Confirm Delivery → "No, report an incident" → completar tipo, descripción y fotos. |
| **UF-M5. Revisar el plan de suscripción** | UG5 | Plan & Billing → revisar plan actual y opción de mejorar a Pro. |
 
### Guion de preguntas (8)
 
| # | Bloque | Pregunta | Qué valida |
|---|---|---|---|
| 1 | Landing Page | Después de ver esta página, ¿con sus palabras qué le ofrece Trazza a su negocio? | Claridad de la propuesta de valor. |
| 2 | Landing Page | ¿Qué diferencia ve entre esto y la forma en que hoy busca transporte? ¿Qué le haría registrarse o no? | Diferenciación frente a la alternativa actual y barreras de conversión. |
| 3 | Registro | Al crear su cuenta con su RUC, ¿hubo algo confuso o algún dato que prefiriera no dar? | Facilidad y confianza en el registro (UF-M1). |
| 4 | Solicitar flete | Al pedir un flete, ¿entendió qué información debe llenar y por qué? ¿Falta o sobra algún dato? | Usabilidad del formulario (UF-M2). |
| 5 | Elegir transportista | Mirando la lista de transportistas, ¿qué datos usaría para elegir a uno? ¿Echa en falta alguno? | Utilidad de calificación, verificación de DNI, capacidad y desvío (UF-M2). |
| 6 | Ofertas | ¿Le resultó claro el estado de cada oferta (aceptada, contraoferta, pendiente) y cómo confirmar al elegido? ¿Qué pasaría en su negocio si se cierra el acuerdo por la plataforma, pero el pago se hace por fuera? | Claridad de la negociación y aceptación de un modelo sin pagos dentro de Trazza (UF-M2). |
| 7 | Seguimiento | Viendo el seguimiento del envío, ¿entiende dónde está su mercadería y qué significa la alerta de desvío? ¿Qué haría si algo sale mal? | Visibilidad del estado, alertas e incidencias (UF-M3 y UF-M4). |
| 8 | Valor y adopción | Si estuviera disponible hoy, ¿la usaría para sus envíos? ¿Pagaría una suscripción mensual por esto? | Intención de uso y disposición a pagar el plan (UF-M5). |
 

### 5.3.2. Registro de Entrevistas. 

En esta sección se registran las entrevistas de validación realizadas con usuarios de cada segmento objetivo, siguiendo el guion de la sección 5.3.1. Cada entrevistado recorrió el Landing Page y la Web Application desplegada (sección 5.2.3.7) mientras pensaba en voz alta.

**Segmento 1: Transportistas de carga terrestre (Carrier)**

| # | Nombres y Apellidos | Edad | Distrito | Screenshot | URL del video (Microsoft Stream) | Inicio | Duración |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |
| 2 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |
| 3 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |

**Segmento 2: Pequeños y medianos emprendedores (Merchant)**

| # | Nombres y Apellidos | Edad | Distrito | Screenshot | URL del video (Microsoft Stream) | Inicio | Duración |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |
| 2 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |
| 3 | [Pendiente] | [Pendiente] | [Pendiente] | [Pendiente: captura] | [Pendiente: URL] | [Pendiente] | [Pendiente] |

**Resúmenes de Entrevistas**

*Resumen de entrevista 1 (Segmento 1):* [Pendiente: perfil del entrevistado, respuestas a las 8 preguntas, dónde dudó o se equivocó y qué valoró.]

*Resumen de entrevista 2 (Segmento 1):* [Pendiente]

*Resumen de entrevista 3 (Segmento 1):* [Pendiente]

*Resumen de entrevista 1 (Segmento 2):* [Pendiente]

*Resumen de entrevista 2 (Segmento 2):* [Pendiente]

*Resumen de entrevista 3 (Segmento 2):* [Pendiente]

**Resultados por flujo**

| Segmento | Flujo | Entrevistados que lo completaron sin ayuda | Principales dudas o errores | Cambio propuesto |
| :--- | :--- | :---: | :--- | :--- |
| Carrier | Registro e inicio de sesión | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Carrier | Publicar ruta de retorno | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Carrier | Cargas sugeridas y oferta | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Carrier | Viaje: recojo y entrega | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Merchant | Registro con RUC | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Merchant | Solicitar flete | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Merchant | Elegir transportista y confirmar match | [Pendiente] / 3 | [Pendiente] | [Pendiente] |
| Merchant | Seguimiento y confirmación de entrega | [Pendiente] / 3 | [Pendiente] | [Pendiente] |

**Conclusiones del registro:** [Pendiente: hallazgos comunes a ambos segmentos y cambios que se llevan al Product Backlog.]




### 5.3.3. Evaluaciones según heurísticas

Esta sección presenta la evaluación de la experiencia de usuario de **Trazza** según heurísticas de usabilidad (Nielsen), principios de Inclusive Design y criterios de Arquitectura de Información (Morville), siguiendo la estructura del Anexo D.

## UX Heuristics & Principles Evaluation
**Usability – Inclusive Design – Information Architecture**

| Campo | Detalle |
|---|---|
| **CARRERA** | Ingeniería de Software |
| **CURSO** | Aplicaciones Web (1ASI0730) |
| **SECCIÓN** | 8084 |
| **PROFESORES** | Velásquez Núñez, Ángel Augusto |
| **AUDITOR** | StackRoot |
| **CLIENTE(S)** | Transportistas independientes / dueños de flotas (Carrier) y emprendedores MYPE (Merchant) de Lima |
| **GRUPO QUE EJECUTA LA SESIÓN** | StackRoot |
| **PARTICIPANTES** | Emanuel Renato Checalla Apaza, Fabricio Jofred Lozano Quispe, Gabriel Augusto Peñaranda Caldas, Ingrid Melani Medina Merma, Rodrigo Matias Vite Celis |

---

## SITE o APP A EVALUAR

**Trazza** – Plataforma web logística (Desktop 1280 px y Mobile 390 px) que conecta transportistas con capacidad ociosa en su viaje de retorno con emprendedores que necesitan enviar carga en Lima.

## TAREAS A EVALUAR

El alcance de esta evaluación incluye la revisión de la usabilidad de las siguientes tareas:

1. Registro de un usuario nuevo e inicio de sesión (elección de rol Carrier / Merchant) – *UG0*
2. Publicación de una ruta de retorno (Carrier) – *UG1*
3. Revisión de cargas sugeridas y aceptación o contraoferta (Carrier) – *UG1*
4. Ejecución de un viaje: confirmar recojo y entrega (Carrier) – *UG2*
5. Solicitud de un flete (Merchant) – *UG3*
6. Búsqueda de transportistas, envío de oferta y confirmación del match (Merchant) – *UG3*
7. Seguimiento de un envío y confirmación de la entrega (Merchant) – *UG4*
8. Reporte de una incidencia (Merchant) – *UG4*
9. Calificación de la contraparte (Carrier y Merchant) – *UG2 / UG4*
10. Registro de vehículos y gestión del plan de suscripción – *UG5*

No están incluidas en esta versión de la evaluación las siguientes tareas:

1. Procesamiento de pagos entre transportista y emprendedor (fuera del alcance: Trazza no es pasarela de pagos)
2. Monitoreo IoT/GPS por hardware en el vehículo (fase futura)
3. Matchmaking automático con Inteligencia Artificial (fase futura)
4. Enlace de seguimiento de solo lectura para el cliente final
5. Recuperación de contraseña y módulo de Métricas de Flota
6. Landing Page (evaluada en su propia sección de UI Design)

## ESCALA DE SEVERIDAD

Los errores serán puntuados tomando en cuenta la siguiente escala de severidad:

| Nivel | Descripción |
|---|---|
| **1** | **Problema superficial:** puede ser fácilmente superado por el usuario u ocurre con muy poca frecuencia. No necesita ser arreglado a no ser que exista disponibilidad de tiempo. |
| **2** | **Problema menor:** puede ocurrir un poco más frecuentemente o es un poco más difícil de superar para el usuario. Se le debería asignar una prioridad baja de cara al siguiente release. |
| **3** | **Problema mayor:** ocurre frecuentemente o los usuarios no son capaces de resolverlo. Es importante que sea corregido y se le debe asignar una prioridad alta. |
| **4** | **Problema muy grave:** error de gran impacto que impide al usuario continuar con el uso de la herramienta. Es imperativo que sea corregido antes del lanzamiento. |

---

## TABLA RESUMEN

| # | Problema | Heurística / Principio violada(o) | Severidad |
|---|---|---|:---:|
| 1 | Las etiquetas del sidebar definidas en la IA no coinciden con los nombres de las pantallas diseñadas | Information Architecture: Is it findable? · Usability: Consistencia y estándares | 3 |
| 2 | "Subastas de Carga" y "Liquidaciones y Pagos" prometen funciones que Trazza no ofrece (pujas y pagos) | Usability: Coincidencia entre el sistema y el mundo real · Information Architecture: Is it credible? | 3 |
| 3 | No hay forma de retirar una oferta enviada ni de cancelar un match ya confirmado | Usability: Libertad y control del usuario | 3 |
| 4 | El mapa es el único medio para entender ruta, desvío y ubicación del vehículo | Inclusive Design: Provide comparable experiences | 3 |
| 5 | El seguimiento de ubicación depende del navegador del celular del transportista en ruta | Inclusive Design: Consider situation · Usability: Visibilidad del estado del sistema | 3 |
| 6 | Terminología mezclada: Carrier/Merchant frente a Transportista/Emprendedor | Usability: Consistencia y estándares · Information Architecture: Is it usable? | 2 |
| 7 | El selector "Modo Transportista / Modo Emprendedor" choca con el rol fijado en el registro | Usability: Visibilidad del estado del sistema · Information Architecture: Is it usable? | 2 |
| 8 | El estado "Delivered" no distingue entre entrega marcada por el transportista y entrega confirmada por el emprendedor | Usability: Visibilidad del estado del sistema | 2 |
| 9 | Al confirmar un match, las demás ofertas "se cierran" sin informar a esos transportistas | Usability: Visibilidad del estado del sistema | 2 |
| 10 | La recuperación de errores en el registro de DNI/RUC no está definida | Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores | 2 |
| 11 | No existe ayuda ni onboarding para usuarios con bajo nivel de digitalización | Usability: Ayuda y documentación · Inclusive Design: Add value | 2 |
| 12 | Datos inconsistentes entre secciones del diseño (ancho de pantalla, IDs de envío) | Usability: Consistencia y estándares | 1 |

**Distribución por severidad:** nivel 4 = 0 · nivel 3 = 5 · nivel 2 = 6 · nivel 1 = 1.

---

## DESCRIPCIÓN DE PROBLEMAS

### PROBLEMA #1: Las etiquetas del sidebar de la IA no coinciden con las pantallas diseñadas
**Severidad:** 3
**Heurística violada:** Information Architecture – Is it findable? · Usabilidad – Consistencia y estándares

**Problema:** El sidebar de la sección 4.2.2 usa nombres como "Subastas de Carga" o "Telemetría en Vivo", mientras las pantallas diseñadas se llaman *Load Suggestions*, *Offers* o *Active Trip*. Por eso el usuario no sabe en qué opción del menú encontrar cada pantalla.

**Recomendación:** Unificar los nombres del menú con los de las pantallas y validarlos con 5 usuarios.

---

### PROBLEMA #2: "Subastas de Carga" y "Liquidaciones y Pagos" prometen funciones que Trazza no ofrece
**Severidad:** 3
**Heurística violada:** Usabilidad – Coincidencia entre el sistema y el mundo real · Information Architecture – Is it credible?

**Problema:** Trazza no hace subastas ni procesa pagos, pero esos nombres sugieren pujas y cobros dentro de la plataforma. Esto puede generar desconfianza o expectativas falsas en el transportista.

**Recomendación:** Renombrar los módulos según lo que hacen, por ejemplo "Cargas disponibles" y "Ofertas".

---

### PROBLEMA #3: No hay forma de retirar una oferta enviada ni de cancelar un match confirmado
**Severidad:** 3
**Heurística violada:** Usabilidad – Libertad y control del usuario

**Problema:** Una vez enviada una oferta o confirmado un match, el diseño no ofrece ninguna acción para retirarla o cancelarlo. Si surge un imprevisto, el usuario tiene que resolverlo fuera de la plataforma.

**Recomendación:** Añadir "Retirar oferta" y "Cancelar match" con motivo y aviso automático a la contraparte.

---

### PROBLEMA #4: El mapa es el único medio para entender ruta, desvío y ubicación del vehículo
**Severidad:** 3
**Heurística violada:** Inclusive Design – Provide comparable experiences

**Problema:** La ruta, el desvío y la posición del vehículo solo se ven sobre el mapa. Un usuario con lector de pantalla, baja visión o mala conexión no tiene una alternativa en texto.

**Recomendación:** Mostrar junto al mapa un resumen en texto con distancia, hora estimada y desvío actual.

---

### PROBLEMA #5: El seguimiento de ubicación depende del navegador del celular del transportista en ruta
**Severidad:** 3
**Heurística violada:** Inclusive Design – Consider situation · Usabilidad – Visibilidad del estado del sistema

**Problema:** Si el transportista bloquea la pantalla o pierde cobertura, el navegador puede dejar de enviar su ubicación sin avisar. El emprendedor vería el vehículo detenido y podría pensar que hay un problema.

**Recomendación:** Mostrar un indicador "Compartiendo ubicación / Sin señal desde hh:mm" a ambos usuarios.

---

### PROBLEMA #6: Terminología mezclada entre Carrier/Merchant y Transportista/Emprendedor
**Severidad:** 2
**Heurística violada:** Usabilidad – Consistencia y estándares · Information Architecture – Is it usable?

**Problema:** La Landing Page dice "Soy Transportista / Soy Emprendedor", pero el registro pide elegir "Carrier" o "Merchant". El usuario encuentra dos nombres distintos para el mismo rol.

**Recomendación:** Usar solo "Transportista" y "Emprendedor" en toda la interfaz.

---

### PROBLEMA #7: El selector "Modo Transportista / Modo Emprendedor" choca con el rol fijado en el registro
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema · Information Architecture – Is it usable?

**Problema:** El registro obliga a elegir un solo rol, pero la arquitectura de información propone un selector para cambiar de modo. No queda claro si una cuenta puede tener los dos roles ni en qué modo está el usuario.

**Recomendación:** Definir un solo modelo de roles y, si hay selector, mostrar siempre el modo activo.

---

### PROBLEMA #8: El estado "Delivered" no distingue entre entrega marcada y entrega confirmada
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema

**Problema:** El mismo estado "Delivered" se usa cuando el transportista marca la entrega y cuando el emprendedor la confirma. El transportista puede creer que el servicio terminó cuando aún falta la confirmación.

**Recomendación:** Separar los estados en "Entregado (pendiente de confirmación)" y "Entrega confirmada".

---

### PROBLEMA #9: Las ofertas cerradas tras un match no se comunican a los otros transportistas
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema

**Problema:** Al confirmarse un match, las demás ofertas se cierran sin avisar a esos transportistas. Ellos quedan esperando una respuesta que no llegará.

**Recomendación:** Notificarles y mostrar el estado "Cerrada" con su motivo.

---

### PROBLEMA #10: La recuperación de errores en el registro de DNI/RUC no está definida
**Severidad:** 2
**Heurística violada:** Usabilidad – Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de los errores

**Problema:** El diseño no muestra qué pasa si el DNI o RUC es inválido o si la verificación falla. Un error sin guía en el primer contacto puede hacer que el usuario abandone el registro.

**Recomendación:** Indicar el formato esperado y diseñar los mensajes de error con el siguiente paso a seguir.

---

### PROBLEMA #11: No existe ayuda ni onboarding para usuarios con bajo nivel de digitalización
**Severidad:** 2
**Heurística violada:** Usabilidad – Ayuda y documentación · Inclusive Design – Add value

**Problema:** No hay tutorial, ayuda ni canal de soporte visible, y términos como "desvío máximo" o "contraoferta" no se explican. Para usuarios acostumbrados a coordinar por WhatsApp, el primer uso puede ser confuso.

**Recomendación:** Añadir un onboarding breve por rol, tooltips en los términos clave y un enlace de ayuda.

---

### PROBLEMA #12: Datos inconsistentes entre secciones del diseño
**Severidad:** 1
**Heurística violada:** Usabilidad – Consistencia y estándares

**Problema:** La sección 4.2.5 usa pantallas de 1440 px e IDs como "#TRZ-9104", mientras la sección 4.4 usa 1280 px e IDs como "SH-3310". No afecta al usuario final, pero confunde al equipo de desarrollo.

**Recomendación:** Unificar el ancho de escritorio y el formato de los identificadores en el Style Guide.

---

## ASPECTOS POSITIVOS IDENTIFICADOS

| Heurística / Principio | Evidencia en el diseño |
|---|---|
| Usability: Prevención de errores | Capacidad que supera la del vehículo bloquea el botón "Publish route"; advertencia si se confirma la entrega a más de 1 km del destino; validación de placa duplicada. |
| Usability: Reconocimiento antes que recuerdo | Las cards de Load Suggestions muestran ruta, peso, desvío y tarifa sin abrir el detalle. |
| Usability: Visibilidad del estado | Stepper de cuatro estados en el viaje; chips de estado (Accepted, Pending, Delivered) con texto y color. |
| Inclusive Design: Be consistent / Give control | Una sola acción principal por estado en Active Trip; áreas táctiles de 44 px; contraste mínimo 4.5:1 (WCAG 2.1 AA). |
| Inclusive Design: Consider situation | Alerta de desvío con ícono, texto y color; layout mobile de una sola columna con bottom sheets. |
| Information Architecture: Is it usable? | Sidebar persistente y profundidad máxima de un nivel para funciones críticas; estados vacíos diseñados. |

---

## CONCLUSIONES DE LA EVALUACIÓN

1. **Prioridad alta (severidad 3, antes del siguiente release):** alineación de la IA con las pantallas (#1, #2), cancelación y retiro de ofertas (#3), alternativas al mapa (#4) y señalización del seguimiento de ubicación (#5).
2. **Prioridad baja (severidad 2):** unificar terminología (#6), definir el modelo de roles (#7), refinar los estados de entrega y oferta (#8, #9), completar errores del registro (#10) y añadir ayuda (#11).
3. **Ajustes de documentación (severidad 1):** corregir datos inconsistentes (#12).
4. No se detectaron problemas de severidad 4. Los flujos principales (publicar ruta, ofertar, confirmar match, seguir y entregar) se pueden completar con el diseño actual.
5. **Siguiente paso recomendado:** repetir la evaluación sobre la versión desplegada con 5 usuarios reales de cada segmento, con más pruebas de usabilidad y A/B testing del flujo de Matchmaking.

---

## SEGUIMIENTO SOBRE LA VERSIÓN DESPLEGADA (SPRINT 3)

La evaluación anterior se hizo sobre los diseños de la sección 4.4. Al cierre del Sprint 3 se revisó cada problema contra el código de `trazza-webapp` y los endpoints de `trazza-platform`.

| # | Problema | Estado | Evidencia |
|---|---|:---:|---|
| 1 | Etiquetas del sidebar distintas a las pantallas | Resuelto | El menú usa los mismos nombres que las vistas: "Mis rutas de retorno", "Cargas sugeridas", "Viaje activo", entre otras. |
| 2 | "Subastas de Carga" y "Liquidaciones y Pagos" | Resuelto | Ya no existe "Subastas", y "Liquidaciones" corresponde a una función real de la API. |
| 3 | No se puede retirar una oferta ni cancelar un match | Parcial | Se pueden cancelar rutas, solicitudes y viajes. La API permite cancelar propuestas, pero la Web App todavía no lo usa. |
| 4 | El mapa es el único medio para entender ruta y desvío | Por verificar | La línea de tiempo del envío ya muestra en texto las alertas de desvío y el regreso a la ruta. |
| 5 | El seguimiento depende del navegador del transportista | Por verificar | El seguimiento se probó con el simulador GPS de la API. |
| 6 | Terminología Carrier / Merchant mezclada | Por verificar | En español los roles se muestran como "Transportista" y "Emprendedor". |
| 7 | Selector de modo frente al rol del registro | Por verificar | La API permite activar un segundo rol en la misma cuenta. |
| 8 | "Delivered" no distingue entrega marcada y confirmada | Resuelto | La entrega marcada y la confirmada son estados distintos en la API y en la línea de tiempo. |
| 9 | Ofertas cerradas sin aviso a otros transportistas | Por verificar | Falta comprobar qué ve el transportista cuya propuesta se cierra. |
| 10 | Recuperación de errores en DNI / RUC | Por verificar | La API devuelve mensajes de error en español e inglés. |
| 11 | Sin ayuda ni onboarding | Persiste | La Web App no tiene todavía una vista de ayuda ni un tutorial. |
| 12 | Datos inconsistentes en el diseño | No aplica | Se refería a la documentación del diseño, no a la aplicación. |

**Resumen del seguimiento:** 3 resueltos, 1 parcial, 1 persiste, 6 por verificar y 1 que no aplica. Para el siguiente release quedan con prioridad alta el retiro de ofertas desde la Web App (#3) y la ayuda para nuevos usuarios (#11).

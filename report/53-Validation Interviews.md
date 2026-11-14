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
| 1 | El idioma por defecto de la interfaz es inglés, aunque el público objetivo son transportistas y MYPEs de Lima | Usability: Coincidencia entre el sistema y el mundo real · Inclusive Design: Offer choice | 3 |
| 2 | Las etiquetas del sidebar definidas en la IA no coinciden con los nombres de las pantallas diseñadas | Information Architecture: Is it findable? · Usability: Consistencia y estándares | 3 |
| 3 | "Subastas de Carga" y "Liquidaciones y Pagos" prometen funciones que Trazza no ofrece (pujas y pagos) | Usability: Coincidencia entre el sistema y el mundo real · Information Architecture: Is it credible? | 3 |
| 4 | No hay forma de retirar una oferta enviada ni de cancelar un match ya confirmado | Usability: Libertad y control del usuario | 3 |
| 5 | El mapa es el único medio para entender ruta, desvío y ubicación del vehículo | Inclusive Design: Provide comparable experiences | 3 |
| 6 | El seguimiento de ubicación depende del navegador del celular del transportista en ruta | Inclusive Design: Consider situation · Usability: Visibilidad del estado del sistema | 3 |
| 7 | Terminología mezclada: Carrier/Merchant frente a Transportista/Emprendedor | Usability: Consistencia y estándares · Information Architecture: Is it usable? | 2 |
| 8 | El selector "Modo Transportista / Modo Emprendedor" choca con el rol fijado en el registro | Usability: Visibilidad del estado del sistema · Information Architecture: Is it usable? | 2 |
| 9 | El estado "Delivered" no distingue entre entrega marcada por el transportista y entrega confirmada por el emprendedor | Usability: Visibilidad del estado del sistema | 2 |
| 10 | Al confirmar un match, las demás ofertas "se cierran" sin informar a esos transportistas | Usability: Visibilidad del estado del sistema | 2 |
| 11 | La recuperación de errores en el registro de DNI/RUC no está definida | Usability: Ayudar a reconocer, diagnosticar y recuperarse de errores | 2 |
| 12 | No existe ayuda ni onboarding para usuarios con bajo nivel de digitalización | Usability: Ayuda y documentación · Inclusive Design: Add value | 2 |
| 13 | Datos inconsistentes entre secciones del diseño (ancho de pantalla, IDs de envío) | Usability: Consistencia y estándares | 1 |

**Distribución por severidad:** nivel 4 = 0 · nivel 3 = 6 · nivel 2 = 6 · nivel 1 = 1.

---

## DESCRIPCIÓN DE PROBLEMAS

### PROBLEMA #1: El idioma por defecto de la interfaz es inglés
**Severidad:** 3
**Heurística violada:** Usabilidad – Coincidencia entre el sistema y el mundo real · Inclusive Design – Offer choice

**Problema:** Según la sección 4.4.3, el idioma por defecto es inglés, con soporte para español mediante un selector EN | ES. Los botones y estados principales están en inglés: "Publish return route", "Confirm pickup", "Offers", "Counteroffer", "Delivered". Las personas del proyecto son un transportista independiente (Juan David Ramos) y una emprendedora MYPE (Valeria Torres) de Lima, con nivel de digitalización bajo o medio. Cada vez que alguien abra la app tendrá que buscar el selector de idioma antes de poder trabajar con confianza. Si no lo encuentra, puede equivocarse al confirmar acciones irreversibles como "Confirm delivery".

`[Captura de pantalla: topbar con selector EN | ES y pantalla Active Trip en inglés]`

**Recomendación:** Establecer español (Perú) como idioma por defecto y dejar inglés como opción. Detectar el idioma del navegador y recordar la preferencia en el perfil. Mantener solo en inglés los términos del Ubiquitous Language que el usuario ya conoce, con su equivalente en español visible.

---

### PROBLEMA #2: Las etiquetas del sidebar de la IA no coinciden con las pantallas diseñadas
**Severidad:** 3
**Heurística violada:** Information Architecture – Is it findable? · Usabilidad – Consistencia y estándares

**Problema:** La sección 4.2.2 define el sidebar con "Panel de Control", "Rutas y Retornos", "Subastas de Carga", "Telemetría en Vivo", "Liquidaciones y Pagos" y "Métricas de Flota". Los wireframes de la sección 4.4.1 y los wireflows de la sección 4.4.2 usan otras pantallas y nombres: *Load Suggestions*, *Offers*, *Find Carriers*, *Active Trip*, *Shipment Tracking*, *Trip History*, *My Vehicles* y *Plan & Billing*. No hay una correspondencia clara entre ambos sistemas. Por ejemplo, el usuario no sabría si "Find Carriers" está bajo "Subastas de Carga" o bajo "Rutas y Retornos". Además, "Métricas de Flota" y "Liquidaciones y Pagos" no aparecen en ningún User Goal.

`[Captura de pantalla: sidebar del mock-up junto a la tabla de etiquetas de 4.2.2]`

**Recomendación:** Unificar en un solo sistema de etiquetas, con una tabla "módulo de IA → pantalla → user story" validada con los mock-ups finales. Eliminar del sidebar los módulos sin pantalla diseñada, o diseñarlos. Hacer un card sorting o tree testing corto con 5 usuarios para confirmar los nombres.

---

### PROBLEMA #3: "Subastas de Carga" y "Liquidaciones y Pagos" prometen funciones que Trazza no ofrece
**Severidad:** 3
**Heurística violada:** Usabilidad – Coincidencia entre el sistema y el mundo real · Information Architecture – Is it credible?

**Problema:** La sección 1.2.1 aclara que Trazza **no** actúa como pasarela de pagos y que la negociación financiera ocurre fuera del sistema. El modelo de interacción diseñado es oferta → contraoferta → confirmación de match, no una puja. Sin embargo, "Subastas de Carga" sugiere pujas competitivas, y "Liquidaciones y Pagos" sugiere cobros dentro de la plataforma. Un transportista que busca dónde cobrar puede abrir ese módulo, pensar que Trazza retiene o procesa dinero y desconfiar, o esperar una función que no existe. Esto afecta la credibilidad en un sector donde, según el Task Matrix, el transportista teme la informalidad del pago.

`[Captura de pantalla: ítems "Subastas de Carga" y "Liquidaciones y Pagos" del sidebar]`

**Recomendación:** Renombrar según lo que el sistema realmente hace: "Cargas disponibles" (o "Sugerencias de carga"), "Ofertas" y "Acuerdos registrados". Mostrar en ese módulo el texto fijo "Trazza no procesa pagos entre transportista y emprendedor", igual al que ya aparece en Plan & Billing.

---

### PROBLEMA #4: No hay forma de retirar una oferta enviada ni de cancelar un match confirmado
**Severidad:** 3
**Heurística violada:** Usabilidad – Libertad y control del usuario

**Problema:** Los wireflows 4.4.2 describen estados como "Offer sent" (el transportista acepta una carga y queda esperando) y "Match confirmed" (las demás ofertas se cierran). No se muestra ninguna acción para **retirar la oferta**, **cancelar el match** ni reportar que el transportista ya no puede cumplir. En el sector logístico los imprevistos son frecuentes (avería, tráfico, cambio de horario), y el flujo solo contempla incidencias después de la entrega. Si el usuario se equivoca o su situación cambia, la única salida sería contactar fuera de la plataforma, que es justamente lo que Trazza quiere evitar.

`[Captura de pantalla: Load Detail – offer sent y Offers – match confirmed]`

**Recomendación:** Añadir "Withdraw offer" (retirar oferta) mientras el emprendedor no haya confirmado, y "Cancel match" con selección de motivo y confirmación antes de que inicie el recojo. Informar a la contraparte automáticamente y reabrir la solicitud para que el emprendedor recupere las ofertas cerradas.

---

### PROBLEMA #5: El mapa es el único medio para entender ruta, desvío y ubicación del vehículo
**Severidad:** 3
**Heurística violada:** Inclusive Design – Provide comparable experiences

**Problema:** En Active Trip, el mapa "ocupa la mayor parte de la pantalla", y en Shipment Tracking el desvío se muestra con una línea punteada y la posición del vehículo sobre el mapa. La alerta de desvío sí combina ícono, texto y color, lo cual es un buen punto. Pero el diseño no describe una alternativa textual de la ruta ni de la posición actual (por ejemplo, "Vehículo a 3.2 km del destino, 12 min"). Un usuario con lector de pantalla, con baja visión o con conexión lenta que no logra cargar el mapa no tendría una experiencia equivalente.

`[Captura de pantalla: Shipment Tracking con mapa y panel lateral]`

**Recomendación:** Incluir en el panel lateral un resumen en texto con dirección del próximo punto, distancia, hora estimada y desvío actual, con `aria-live="polite"` para anunciar cambios. Dar al mapa una descripción accesible y un estado de carga o error con mensaje claro.

---

### PROBLEMA #6: El seguimiento de ubicación depende del navegador del celular del transportista en ruta
**Severidad:** 3
**Heurística violada:** Inclusive Design – Consider situation · Usabilidad – Visibilidad del estado del sistema

**Problema:** El wireflow de UG2 indica que, al presionar "Confirm pickup", "el navegador del celular comienza a enviar la ubicación del vehículo". Las restricciones del proyecto exigen conexión ininterrumpida y ubicación activada. Un transportista que conduce suele bloquear la pantalla, cambiar de aplicación o pasar por zonas sin cobertura, y en esos casos un navegador web puede dejar de enviar la ubicación. El diseño no muestra ningún indicador que diga si la ubicación **se está compartiendo ahora mismo**, ni qué pasa si se corta. El emprendedor vería un vehículo "congelado" y podría interpretarlo como un desvío o un incidente.

`[Captura de pantalla: Active Trip – in transit]`

**Recomendación:** Mostrar un indicador permanente "Compartiendo ubicación / Sin señal desde hh:mm" tanto al transportista como al emprendedor. Pedir permisos de ubicación y explicar su motivo antes de iniciar el viaje. Diseñar un estado "Última ubicación conocida" y avisar al transportista cuando se pierda la señal. A mediano plazo, evaluar una PWA o app con seguimiento en segundo plano.

---

### PROBLEMA #7: Terminología mezclada entre Carrier/Merchant y Transportista/Emprendedor
**Severidad:** 2
**Heurística violada:** Usabilidad – Consistencia y estándares · Information Architecture – Is it usable?

**Problema:** La sección 4.2.2 indica que los términos en inglés (Carrier, Merchant, Shipment, Match) se reservan para el diseño técnico interno. Sin embargo, los wireframes y mock-ups usan esos términos de cara al usuario: el registro pide elegir "Carrier" o "Merchant", y los CTAs dicen "I'm a Carrier" / "I'm a Merchant", mientras la Landing Page dice "Soy Transportista / Soy Emprendedor". Un transportista que pasa de la Landing al registro encuentra una palabra distinta para el mismo rol.

`[Captura de pantalla: Sign up – selección de rol, junto a los CTAs de la Landing Page]`

**Recomendación:** Usar solo los nombres de rol que el usuario entiende ("Transportista", "Emprendedor") en toda la interfaz, y dejar Carrier/Merchant para código y documentación técnica. Añadir un glosario de etiquetas en el Style Guide.

---

### PROBLEMA #8: El selector "Modo Transportista / Modo Emprendedor" choca con el rol fijado en el registro
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema · Information Architecture – Is it usable?

**Problema:** La sección 4.2.1 propone un selector de modo en la barra superior para alternar entre vistas, mientras que el registro (4.4.1) obliga a elegir un rol una sola vez y exige DNI para Carrier o RUC para Merchant. El diseño no aclara si una misma cuenta puede tener ambos roles, ni cómo se verifica el segundo. Si el selector existe, el usuario puede no saber en qué modo está o por qué ve un sidebar distinto al de la última vez. Si no existe, la IA documentada y los wireframes se contradicen.

`[Captura de pantalla: topbar con selector de modo y pantalla de Sign up con selección de rol]`

**Recomendación:** Decidir un único modelo: (a) un rol por cuenta y sin selector, o (b) cuentas con doble rol, con selector que muestre siempre el modo activo con texto e ícono y un flujo para agregar el segundo perfil con su DNI/RUC.

---

### PROBLEMA #9: El estado "Delivered" no distingue entre entrega marcada y entrega confirmada
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema

**Problema:** En UG2 el transportista presiona "Confirm delivery" y el viaje pasa a "Delivered". En UG4 el emprendedor recibe después un diálogo para confirmar que la mercadería llegó completa, o reportar una incidencia dentro de 48 horas. El mismo estado "Delivered" parece cubrir los dos momentos. Un transportista podría creer que cerró el servicio mientras el emprendedor aún no lo valida, o que ya no hay posibilidad de incidencias. El stepper tiene cuatro estados (Matched → Picked up → In transit → Delivered) y ninguno refleja la confirmación del emprendedor.

`[Captura de pantalla: Active Trip y diálogo Confirm Delivery del emprendedor]`

**Recomendación:** Separar los estados: "Entregado (pendiente de confirmación)" y "Entrega confirmada" (o "En revisión" si hay incidencia). Mostrar la ventana de 48 horas restante en la vista de ambos usuarios.

---

### PROBLEMA #10: Las ofertas cerradas tras un match no se comunican a los otros transportistas
**Severidad:** 2
**Heurística violada:** Usabilidad – Visibilidad del estado del sistema

**Problema:** En la vista Offers, al confirmar un match "las demás ofertas se cierran". La documentación no indica que esos transportistas reciban una notificación ni un estado visible ("Cerrada: el emprendedor eligió otra oferta"). Esos usuarios quedarían esperando una respuesta que no llegará, y podrían rechazar otras cargas mientras tanto.

`[Captura de pantalla: Offers – match confirmed]`

**Recomendación:** Enviar una notificación y mostrar un chip de estado "Cerrada" con el motivo, y sugerir otras cargas compatibles desde la misma pantalla.

---

### PROBLEMA #11: La recuperación de errores en el registro de DNI/RUC no está definida
**Severidad:** 2
**Heurística violada:** Usabilidad – Ayudar a los usuarios a reconocer, diagnosticar y recuperarse de los errores

**Problema:** El único unhappy path del registro es "correo ya registrado". Sin embargo, la user story US26 incluye validación de identidad del transportista. El diseño no muestra qué ocurre si el DNI/RUC es inválido, si la validación falla o si el servicio tarda. Tampoco hay indicaciones sobre el formato esperado (8 dígitos para DNI, 11 para RUC). Es una tarea de primer contacto, y un fallo sin guía puede hacer que el usuario abandone la plataforma.

`[Captura de pantalla: Sign up – unhappy path]`

**Recomendación:** Mostrar el formato esperado como texto de ayuda en el campo, validar en línea y diseñar los estados "DNI/RUC inválido", "En verificación" y "No se pudo verificar, reintentar", con un mensaje que explique el siguiente paso.

---

### PROBLEMA #12: No existe ayuda ni onboarding para usuarios con bajo nivel de digitalización
**Severidad:** 2
**Heurística violada:** Usabilidad – Ayuda y documentación · Inclusive Design – Add value

**Problema:** Las entrevistas y personas del proyecto describen usuarios que hoy coordinan por WhatsApp y contactos informales. El diseño no incluye tutorial de primer uso, ayuda contextual ni un canal de soporte visible en el topbar o el sidebar. Conceptos como "desvío máximo", "contraoferta" o "match" no se explican en pantalla. Un primer uso sin guía puede generar errores o abandono, especialmente en el formulario de publicar ruta.

`[Captura de pantalla: Publish Return Route y topbar]`

**Recomendación:** Añadir un onboarding breve de 3 pasos por rol, tooltips en términos clave (por ejemplo, "Desvío máximo: kilómetros extra que aceptas recorrer"), un ítem "Ayuda" fijo y un enlace de contacto (por ejemplo, WhatsApp de soporte), coherente con los hábitos de comunicación actuales.

---

### PROBLEMA #13: Datos inconsistentes entre secciones del diseño
**Severidad:** 1
**Heurística violada:** Usabilidad – Consistencia y estándares

**Problema:** La sección 4.2.5 describe pantallas de escritorio de 1440 px y el ejemplo de breadcrumb "Inicio > Envíos Activos > En Ruta GPS #TRZ-9104", pero el resto del informe (4.4) usa 1280 px y envíos con formato "SH-3310". Es un problema menor que no afecta al usuario final, pero genera confusión en el equipo de desarrollo y al construir el Design System.

**Recomendación:** Unificar el breakpoint de escritorio y el formato de identificadores en el Style Guide, y actualizar los ejemplos de la IA.

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

1. **Prioridad alta (severidad 3, antes del siguiente release):** idioma por defecto (#1), alineación de la IA con las pantallas (#2, #3), cancelación y retiro de ofertas (#4), alternativas al mapa (#5) y señalización del seguimiento de ubicación (#6).
2. **Prioridad baja (severidad 2):** unificar terminología (#7), definir el modelo de roles (#8), refinar los estados de entrega y oferta (#9, #10), completar errores del registro (#11) y añadir ayuda (#12).
3. **Ajustes de documentación (severidad 1):** corregir datos inconsistentes (#13).
4. No se detectaron problemas de severidad 4. Los flujos principales (publicar ruta, ofertar, confirmar match, seguir y entregar) se pueden completar con el diseño actual.
5. **Siguiente paso recomendado:** repetir la evaluación sobre la primera versión funcional (Angular) con 5 usuarios reales de cada segmento, tal como sugieren las recomendaciones del informe (más pruebas de usabilidad y A/B testing del flujo de Matchmaking).

---

## SEGUIMIENTO SOBRE LA VERSIÓN DESPLEGADA (SPRINT 3)

La evaluación anterior se hizo sobre los diseños de la sección 4.4. Al cierre del Sprint 3 se revisó cada problema contra el código de `trazza-webapp` y los endpoints de `trazza-platform`. Los estados **Resuelto**, **Parcial** y **Persiste** se respaldan en el código indicado. **Por verificar** indica que el problema debe comprobarse usando la aplicación desplegada.

| # | Problema | Estado | Evidencia |
|---|---|:---:|---|
| 1 | Idioma por defecto en inglés | Persiste | `src/i18n.js` define `locale: 'en'` y `fallbackLocale: 'en'`. Los textos en español existen en `locales/es.json`, pero no se cargan por defecto. |
| 2 | Etiquetas del sidebar distintas a las pantallas | Resuelto | Las opciones del menú en `locales/es.json` (`option.*`) usan los nombres de las vistas: "Mis rutas de retorno", "Cargas sugeridas", "Viaje activo", "Seguimiento de envíos", entre otras. |
| 3 | "Subastas de Carga" y "Liquidaciones y Pagos" | Resuelto | No existe la etiqueta "Subastas". "Liquidaciones" corresponde ahora a una función real: `GET /api/v1/freight-settlements` y la vista de liquidaciones. |
| 4 | No se puede retirar una oferta ni cancelar un match | Parcial | Se pueden cancelar rutas, solicitudes y viajes (`/return-routes/{id}/cancel`, `/shipment-requests/{id}/cancel`, `/trips/{id}/cancel`). La API expone `/match-proposals/{id}/cancel`, pero la Web App todavía no lo llama. |
| 5 | El mapa es el único medio para entender ruta y desvío | Por verificar | La línea de tiempo del envío muestra eventos en texto ("Alerta de desvío ({distance} km)", "De vuelta en la ruta planificada"). Falta comprobar que toda la información del mapa tenga equivalente en texto. |
| 6 | El seguimiento depende del navegador del transportista | Por verificar | El seguimiento recibe puntos por `POST /trips/{id}/tracking-points` y se probó con el simulador GPS de `trazza-platform`. Falta comprobar cómo se comparte la ubicación desde el celular en ruta. |
| 7 | Terminología Carrier / Merchant mezclada | Por verificar | En español los roles se muestran como "Transportista" y "Emprendedor" (`roles.*`). Falta revisar que no queden términos en inglés en las vistas. |
| 8 | Selector de modo frente al rol del registro | Por verificar | La API permite activar un segundo rol (`POST /users/me/roles`) y existe el texto `menu.switch-to`. Falta comprobar el comportamiento del selector en la aplicación. |
| 9 | "Delivered" no distingue entrega marcada y confirmada | Resuelto | La API separa `POST /trips/{id}/deliver` y `POST /trips/{id}/confirm`. La línea de tiempo muestra "Marcado como entregado" y "Recepción confirmada por el emprendedor". |
| 10 | Ofertas cerradas sin aviso a otros transportistas | Por verificar | Falta comprobar qué ve un transportista cuya propuesta queda cerrada tras un match. |
| 11 | Recuperación de errores en DNI / RUC | Por verificar | La API devuelve errores `ProblemDetails` localizados. Falta comprobar cómo los muestra el formulario de registro. |
| 12 | Sin ayuda ni onboarding | Persiste | No se encontró una vista de ayuda, tutorial ni onboarding en `trazza-webapp/src`. |
| 13 | Datos inconsistentes en el diseño | No aplica | Se refería a la documentación del diseño, no a la aplicación. |

**Resumen del seguimiento:** 3 resueltos, 1 parcial, 2 persisten, 6 por verificar y 1 que no aplica. Para el siguiente release quedan con prioridad alta el idioma por defecto (#1) y el retiro de ofertas desde la Web App (#4).

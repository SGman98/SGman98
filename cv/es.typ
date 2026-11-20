#import "lib.typ": *

#show: cv.with(
  name: "Sebastian Garnica Quiroz",
  role: by-focus([Ingeniero de Datos y Backend], data: [Ingeniero de Datos], backend: [Ingeniero Backend]),
  photo: "profile.jpg",
  contact: (
    contact-item(fa-location-dot, [Bogotá, Colombia (UTC-5, mismo horario laboral que EE. UU.)]),
    contact-item(fa-phone, [+57 322 2070679]),
    contact-item(fa-envelope, link("mailto:bastiangarnica@gmail.com")[bastiangarnica\@gmail.com]),
    contact-item(fa-linkedin, link("https://www.linkedin.com/in/sebastiangarnica")[linkedin.com/in/sebastiangarnica]),
    contact-item(fa-github, link("https://github.com/SGman98")[github.com/SGman98]),
  ),
)

#section("Perfil")
#by-focus(
  [Ingeniero de datos con experiencia en backend. Construyo la plataforma de datos en AWS (Glue, PySpark, Redshift) que le entrega al equipo de BI los datos de un producto de gestión de estudios clínicos con clientes en varios países, y las herramientas para migrar a esos clientes entre versiones de Odoo. En backend uso TypeScript, Node.js, tRPC y DynamoDB.],
  data: [Ingeniero de datos en Integra IT. Construyo la plataforma de datos en AWS (Glue, PySpark, Redshift) que le entrega al equipo de BI los datos para reportar sobre un producto de gestión de estudios clínicos con clientes en varios países, y las herramientas con las que migramos a esos clientes entre versiones de Odoo.],
  backend: [Ingeniero backend que trabaja cerca de los datos. He construido APIs y servicios en TypeScript (tRPC, Node.js, Next.js, DynamoDB) y Python, y hoy diseño las integraciones entre una plataforma de gestión de estudios clínicos, sus fuentes de ERP y su data warehouse en Redshift, incluidas las herramientas con las que migramos clientes entre versiones de Odoo.],
)

#section("Experiencia")

#company("Integra IT", "Bogotá, Colombia · Remoto · 01/2024 – Actual")

#role("Ingeniero de Datos", "03/2025 – Actual")[
  #bullets(
    item("data")[Diseñé el data warehouse en Redshift para los reportes de BI y el ETL en Glue/PySpark que lo carga (Glue Workflows, cargas incrementales que hacen merge por llaves únicas y agregan solas las columnas nuevas de la fuente). Consolida unas 100 tablas de 17 bases Odoo (12 clientes) en un solo modelo, con un número similar de vistas para BI.],
    item("data", "backend")[Construí las integraciones que alimentan los pipelines de datos: datos del ERP Odoo vía JSON-RPC y PostgreSQL, APIs REST y archivos de SharePoint a través de AppFlow y S3. Todo va por configuración (un cliente o fuente nueva no requiere código) y pruebas de regresión con snapshots antes de cada despliegue.],
    item("data", "backend")[Llevé de prueba de concepto a uso real las herramientas para migrar clientes de Odoo 13/16 a 18: diseñé su capa de transformaciones, la orquestación de ejecuciones y el manejo de errores. Cada ejecución guarda un mapa de lo creado, así que es idempotente y al repetirla solo agrega lo que falta. Han movido más de 10M de registros en unas 200 tablas.],
    item("data")[#by-focus(
      [Soy el punto de conexión entre el equipo de analítica/BI y los equipos de desarrollo: reviso APIs y modelos de datos del producto para que las nuevas funcionalidades lleguen bien a los reportes.],
      backend: [Reviso APIs y modelos de datos del producto con los equipos de desarrollo para que las nuevas funcionalidades traigan los datos que necesitan los reportes.],
    )],
  )
]

#role("Ingeniero de Desarrollo", "01/2024 – 08/2025 (medio tiempo desde 03/2025)")[
  #bullets(
    item("backend")[Me encargué del backend de TrialPal Movi, la reescritura multi-tenant de nuestra plataforma de monitoreo y reportes de estudios clínicos (Next.js, tRPC, DynamoDB). El tiempo de respuesta promedio bajó un 78~% (5 s a 1,1 s).],
    item("backend")[Construí con el equipo los controles de FDA 21 CFR Part 11: auditoría con versionado y hashing, firmas electrónicas validadas y registros inmutables con escrituras condicionales en DynamoDB.],
    item("backend")[Diseñé su API en tRPC como una sola capa para la app web y para migrar los datos del sistema anterior.],
    item("backend")[Construí desde cero, con otro desarrollador, Mesgo, una plataforma de huella de carbono: del diseño de arquitectura y modelo de datos al desarrollo full-stack en AWS (Next.js, Lambda, S3, SES, Amplify). Grupo Energía Bogotá y Primax la usaron para reportar más de 5M de toneladas de emisiones de CO2.],
  )
]

#company("LIATER, Universidad Nacional de Colombia", "Bogotá, Colombia · Remoto")

#role("Desarrollador", "09/2023 – 01/2024")[
  #bullets(
    item()[Desarrollé Quanticon Valley, una plataforma de aprendizaje gamificado (Next.js) para cursos de innovación de la Universidad Nacional, usada por más de 2.000 estudiantes a lo largo de varios semestres.],
  )
]

#section("Educación")
#entry("Diplomado en Machine Learning and Data Science (MLDS)", "Universidad Nacional de Colombia", "08/2026 – 12/2026")
#entry("Ingeniería de Sistemas y Computación", "Universidad Nacional de Colombia", "2017 – 2023")

#section("Habilidades")
#let data-row = ("Datos", [PySpark, AWS Glue, Redshift, S3, AppFlow, PostgreSQL, Pandas, Qlik])
#let backend-row = ("Backend", [Node.js, Next.js, tRPC, GraphQL, Lambda, DynamoDB, Odoo, Docker, SST, Git, Linux])
#let lang-row = ("Lenguajes", [Python, SQL, TypeScript, Java])
#let spoken-row = ("Idiomas", [Español (nativo), inglés (profesional completo), japonés (profesional limitado), coreano (básico)])
#skills(by-focus(
  (data-row, lang-row, backend-row, spoken-row),
  backend: (lang-row, backend-row, data-row, spoken-row),
))

#section("Certificaciones")
#entry(link("https://github.com/SGman98/SGman98/blob/main/certificates/2024-nida-good-clinical-practice.pdf")[Buenas Prácticas Clínicas (GCP)], "NIDA Clinical Trials Network", "2024")
#entry(link("https://www.credly.com/badges/013a0cbc-f3f2-4b49-855a-e7672a40267e")[AWS Academy Graduate: Introduction to Cloud], "AWS Academy", "2023")
#entry(link("https://coursera.org/verify/specialization/Q8QW7AX4A9X8")[Python for Everybody (Especialización)], "University of Michigan · Coursera", "2021")
#entry(link("https://coursera.org/verify/MUCM36M4NM9B")[Algorithmic Toolbox], "UC San Diego · Coursera", "2021")

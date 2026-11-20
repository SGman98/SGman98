#import "lib.typ": *

#show: cv.with(
  name: "Sebastian Garnica Quiroz",
  role: by-focus([Ingeniero de Datos y Backend], data: [Ingeniero de Datos], backend: [Ingeniero Backend]),
  photo: "profile.jpg",
  contact: (
    contact-item(fa-location-dot, [Bogotá, Colombia]),
    contact-item(fa-phone, [+57 322 2070679]),
    contact-item(fa-envelope, link("mailto:bastiangarnica@gmail.com")[bastiangarnica\@gmail.com]),
    contact-item(fa-linkedin, link("https://www.linkedin.com/in/sebastiangarnica")[in/sebastiangarnica]),
    contact-item(fa-github, link("https://github.com/SGman98")[SGman98]),
  ),
)

#section("Perfil")
#by-focus(
  [Ingeniero de datos con experiencia en backend. Construyo la plataforma de datos en AWS (Glue, PySpark, Redshift) que le entrega al equipo de BI los datos para reportar sobre un producto de gestión de estudios clínicos con clientes en varios países, y las herramientas con las que migramos a esos clientes entre versiones de Odoo. También conecto al equipo de analítica/BI con los equipos de desarrollo, y en backend trabajo con TypeScript, Node.js, tRPC y DynamoDB.],
  data: [Ingeniero de datos en Integra IT. Construyo la plataforma de datos en AWS (Glue, PySpark, Redshift) que le entrega al equipo de BI los datos para reportar sobre un producto de gestión de estudios clínicos con clientes en varios países, y las herramientas con las que migramos a esos clientes entre versiones de Odoo. También conecto al equipo de analítica/BI con los equipos de desarrollo: reviso APIs y modelos de datos para que la información del producto llegue bien a los reportes.],
  backend: [Ingeniero backend que trabaja cerca de los datos. He construido APIs y servicios en TypeScript (tRPC, Node.js, Next.js, DynamoDB) y Python, y hoy diseño las integraciones entre una plataforma de gestión de estudios clínicos, sus fuentes de ERP y su data warehouse en Redshift, incluidas las herramientas con las que migramos clientes entre versiones de Odoo.],
)

#section("Experiencia")

#company("Integra IT", "Bogotá, Colombia · Remoto")

#role("Ingeniero de Datos", "03/2025 – Actual")[
  #bullets(
    item("data")[Diseñé el data warehouse en Redshift con el que reporta el equipo de BI y el framework de ETL en Glue/PySpark que lo carga: integra las bases Odoo de todos los clientes (cerca de 1.000 tablas) en un solo modelo con unas 100 vistas.],
    item("data", "backend")[Construí las integraciones que alimentan los pipelines de datos: APIs de ERP vía Odoo JSON-RPC, APIs REST y archivos de SharePoint a través de AppFlow y S3. Todo funciona por configuración, así que sumar un cliente o una fuente no requiere código nuevo, y se prueba antes de cada despliegue.],
    item("data", "backend")[Construí con un equipo de cuatro las herramientas para migrar clientes de Odoo 13/16 a 18, donde el proceso estándar de actualización no alcanza. Han movido más de 10M de registros en unas 200 tablas.],
    item("data", "backend")[Construí una extensión server-side para Qlik en Python (gRPC) que agrega análisis de sentimiento y traducción a los dashboards de Qlik.],
    item("data", "backend")[Soy el punto de conexión entre el equipo de analítica/BI y los equipos de desarrollo: reviso APIs y modelos de datos del producto para que las nuevas funcionalidades lleguen bien a los reportes.],
  )
]

#role("Ingeniero de Desarrollo", "01/2024 – 08/2025")[
  #bullets(
    item("data", "backend")[Me encargué del backend de TrialPal Movi, el sistema renovado de informes de monitoreo de estudios clínicos (Next.js, tRPC, DynamoDB): cumple la norma FDA 21 CFR Part 11, es multi-tenant, tiene informes configurables y redujo el tiempo de respuesta promedio un 78 % (de 5 s a 1,1 s).],
    item("data", "backend")[Diseñé su API en tRPC para que la misma capa sirviera a la aplicación web y a las herramientas que migraron los datos de la plataforma anterior.],
    item("data", "backend")[Diseñé la arquitectura y el modelo de datos de Mesgo, una plataforma de huella de carbono, y la construí full-stack en AWS (Next.js, Lambda, S3, SES, Amplify). Grupo Energía Bogotá y Primax la usan para monitorear más de 5M de toneladas de emisiones de CO2.],
  )
]

#company("LIATER, Universidad Nacional de Colombia", "Bogotá, Colombia · Remoto")

#role("Desarrollador", "09/2023 – 01/2024")[
  #bullets(
    item()[Desarrollé Quanticon Valley, una plataforma de aprendizaje gamificado (Next.js) para cursos de innovación de la Universidad Nacional, usada por más de 2.000 estudiantes a lo largo de varios semestres.],
  )
]

#section("Educación")
#entry("Diplomado en Machine Learning y Ciencia de Datos", "Universidad Nacional de Colombia", "08/2026 – 12/2026")
#entry("Ingeniería de Sistemas y Computación", "Universidad Nacional de Colombia", "2017 – 2023")

#section("Habilidades")
#let data-row = ("Datos", [PySpark, AWS Glue, Redshift, S3, AppFlow, Lambda, DynamoDB, PostgreSQL, Pandas, Qlik])
#let backend-row = ("Backend y herramientas", [Node.js, Next.js, tRPC, GraphQL, Odoo, Docker, SST, Git, Linux])
#let lang-row = ("Lenguajes", [Python, SQL, TypeScript, Go, Rust, Java])
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

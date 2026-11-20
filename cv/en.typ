#import "lib.typ": *

#show: cv.with(
  name: "Sebastian Garnica Quiroz",
  role: by-focus([Data & Backend Engineer], data: [Data Engineer], backend: [Backend Engineer]),
  photo: "profile.jpg",
  contact: (
    contact-item(fa-location-dot, [Bogotá, Colombia]),
    contact-item(fa-phone, [+57 322 2070679]),
    contact-item(fa-envelope, link("mailto:bastiangarnica@gmail.com")[bastiangarnica\@gmail.com]),
    contact-item(fa-linkedin, link("https://www.linkedin.com/in/sebastiangarnica")[in/sebastiangarnica]),
    contact-item(fa-github, link("https://github.com/SGman98")[SGman98]),
  ),
)

#section("Summary")
#by-focus(
  [Data engineer with a backend background. I build the AWS data platform (Glue, PySpark, Redshift) that gives our BI team the data to report on a clinical trial management product with clients in several countries, and the tooling we use to migrate those clients between Odoo versions. I also connect the analytics/BI team with the development teams, and on the backend side I work with TypeScript, Node.js, tRPC and DynamoDB.],
  data: [Data engineer at Integra IT. I build the AWS data platform (Glue, PySpark, Redshift) that gives our BI team the data to report on a clinical trial management product with clients in several countries, and the tooling we use to migrate those clients between Odoo versions. I also sit between the analytics/BI team and the development teams, reviewing APIs and data models so product data reaches reporting the way it should.],
  backend: [Backend engineer who works close to the data. I've built APIs and services in TypeScript (tRPC, Node.js, Next.js, DynamoDB) and Python, and today I design the integrations between a clinical trial management platform, its ERP sources and its Redshift warehouse, including the tooling we use to migrate clients between Odoo versions.],
)

#section("Experience")

#company("Integra IT", "Bogotá, Colombia · Remote")

#role("Data Engineer", "Mar 2025 – Present")[
  #bullets(
    item("data")[Designed the Redshift data warehouse the BI team reports from and the Glue/PySpark ETL framework that loads it, bringing every client's Odoo database (around 1,000 tables) into one model with about 100 reporting views.],
    item("data", "backend")[Built the integrations that feed the data pipelines: ERP APIs over Odoo JSON-RPC, REST APIs, and SharePoint files through AppFlow and S3. Everything is config-driven, so a new client or source needs no new code, and it is tested before each deploy.],
    item("data", "backend")[Built, with a team of four, the tooling that migrates clients from Odoo 13/16 to 18 where the standard upgrade path falls short. It has moved more than 10M records across about 200 tables.],
    item("data", "backend")[Built a Qlik server-side extension in Python (gRPC) that adds sentiment analysis and translation to Qlik dashboards.],
    item("data", "backend")[Act as the link between the analytics/BI team and the development teams, reviewing product APIs and data models so new features reach reporting correctly.],
  )
]

#role("Development Engineer", "Jan 2024 – Aug 2025")[
  #bullets(
    item("data", "backend")[Owned the backend of TrialPal Movi, the rebuilt clinical trial monitoring reports system (Next.js, tRPC, DynamoDB): FDA 21 CFR Part 11 compliant, multi-tenant, with configurable reports and average response times down 78% (5 s to 1.1 s).],
    item("data", "backend")[Designed its tRPC API so the same layer served the web app and the tools that migrated the legacy platform's data.],
    item("data", "backend")[Designed the architecture and data model of Mesgo, a carbon footprint platform, and built it full-stack on AWS (Next.js, Lambda, S3, SES, Amplify). Grupo Energía Bogotá and Primax use it to track more than 5M tonnes of CO2 emissions.],
  )
]

#company("LIATER, Universidad Nacional de Colombia", "Bogotá, Colombia · Remote")

#role("Developer", "Sep 2023 – Jan 2024")[
  #bullets(
    item()[Built Quanticon Valley, a gamified learning platform (Next.js) for innovation courses at Universidad Nacional, used by more than 2,000 students across semesters.],
  )
]

#section("Education")
#entry("Postgraduate Diploma in Machine Learning & Data Science", "Universidad Nacional de Colombia", "Aug 2026 – Dec 2026")
#entry("B.S. Systems and Computing Engineering", "Universidad Nacional de Colombia", "2017 – 2023")

#section("Skills")
#let data-row = ("Data", [PySpark, AWS Glue, Redshift, S3, AppFlow, Lambda, DynamoDB, PostgreSQL, Pandas, Qlik])
#let backend-row = ("Backend & tools", [Node.js, Next.js, tRPC, GraphQL, Odoo, Docker, SST, Git, Linux])
#let lang-row = ("Languages", [Python, SQL, TypeScript, Go, Rust, Java])
#let spoken-row = ("Spoken", [Spanish (native), English (full professional), Japanese (limited working), Korean (elementary)])
#skills(by-focus(
  (data-row, lang-row, backend-row, spoken-row),
  backend: (lang-row, backend-row, data-row, spoken-row),
))

#section("Certifications")
#entry(link("https://github.com/SGman98/SGman98/blob/main/certificates/2024-nida-good-clinical-practice.pdf")[Good Clinical Practice], "NIDA Clinical Trials Network", "2024")
#entry(link("https://www.credly.com/badges/013a0cbc-f3f2-4b49-855a-e7672a40267e")[AWS Academy Graduate: Introduction to Cloud], "AWS Academy", "2023")
#entry(link("https://coursera.org/verify/specialization/Q8QW7AX4A9X8")[Python for Everybody (Specialization)], "University of Michigan · Coursera", "2021")
#entry(link("https://coursera.org/verify/MUCM36M4NM9B")[Algorithmic Toolbox], "UC San Diego · Coursera", "2021")

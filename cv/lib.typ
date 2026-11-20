// Shared layout for the CV. Content lives in en.typ / es.typ.
#import "@preview/fontawesome:0.6.0": *

// Focus: "general" (default), "data" or "backend".
// Build with: typst compile --input focus=data en.typ
#let focus = sys.inputs.at("focus", default: "general")

// Pick text per focus, falling back to the general version.
// by-focus([general text], data: [...], backend: [...])
#let by-focus(general, ..alts) = alts.named().at(focus, default: general)

// Photo on by default; build with --input photo=false for US/EU applications.
#let show-photo = sys.inputs.at("photo", default: "true") != "false"

// A bullet tagged with the focuses it is most relevant to.
//   item("data", "backend")[...]           shown everywhere
//   item("data", hide: ("backend",))[...]  left out of the backend build
// To change wording per focus instead of hiding, use by-focus inside the body.
#let item(..args, body) = (
  tags: args.pos(),
  hide: args.named().at("hide", default: ()),
  body: body,
)

// In a focused build, bullets tagged with that focus move to the top;
// the rest keep their written order. Bullets hidden for the focus are dropped.
#let bullets(..items) = {
  let all = items.pos().filter(i => focus not in i.hide)
  if focus != "general" {
    all = all.sorted(key: i => if focus in i.tags { 0 } else { 1 })
  }
  list(..all.map(i => i.body))
}

#let accent = rgb("#1f5fa8")
#let muted = rgb("#5a5a5a")
#let rule-color = rgb("#c8c8c8")

#let cv(
  name: "",
  role: "",
  contact: (),
  photo: none,
  body,
) = {
  set document(title: name + " - CV", author: name)
  set page(paper: "a4", margin: (x: 1.6cm, y: 1.4cm))
  set text(font: "Adwaita Sans", size: 9.5pt, fill: rgb("#1a1a1a"))
  set par(justify: false, leading: 0.55em, spacing: 0.7em)
  set list(indent: 0.2em, body-indent: 0.5em, spacing: 0.55em, marker: text(fill: muted)[•])
  show link: it => it

  grid(
    columns: (1fr, auto),
    column-gutter: 12pt,
    align: (left + horizon, right + horizon),
    [
      #text(size: 20pt, weight: "bold")[#name]
      #v(-6pt)
      #text(size: 11.5pt, fill: accent, weight: "medium")[#role]
      #v(2pt)
      #text(size: 8.5pt, fill: muted)[#contact.join(h(10pt))]
    ],
    if photo != none and show-photo {
      box(clip: true, radius: 100%, width: 64pt, height: 64pt, image(photo, width: 100%, height: 100%, fit: "cover"))
    },
  )
  v(4pt)
  body
}

#let contact-item(icon, content) = box[#icon(fill: accent) #h(1pt) #content]

#let section(title) = {
  v(8pt)
  text(size: 10.5pt, weight: "bold", fill: accent, tracking: 0.04em)[#upper(title)]
  v(-7pt)
  line(length: 100%, stroke: 0.6pt + rule-color)
  v(2pt)
}

// One employer, possibly several roles.
#let company(name, place) = {
  v(2pt)
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 10pt)[#name], text(size: 8.5pt, fill: muted)[#place],
  )
  v(-3pt)
}

#let role(title, dates, body) = {
  grid(
    columns: (1fr, auto),
    text(style: "italic")[#title], text(size: 8.5pt, fill: muted)[#dates],
  )
  v(-2pt)
  body
  v(3pt)
}

#let entry(title, org, dates) = grid(
  columns: (1fr, auto),
  row-gutter: 4pt,
  [*#title* #h(4pt) #text(fill: muted)[#org]], text(size: 8.5pt, fill: muted)[#dates],
)

#let skills(rows) = grid(
  columns: (auto, 1fr),
  column-gutter: 10pt,
  row-gutter: 6pt,
  ..rows.map(((k, v)) => (text(weight: "bold")[#k], v)).flatten(),
)

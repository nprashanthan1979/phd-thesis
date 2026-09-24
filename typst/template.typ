// Document styling shared by main.typ and analysis.typ.

#let proposal(doc) = {
  set document(
    title: "Enhancing the competency of using problem solving strategy in mathematics among senior secondary teachers in Sri Lanka",
    author: "Navarajah Prashanthan",
  )
  set page(
    paper: "a4",
    margin: (x: 2.5cm, y: 2.5cm),
    numbering: "1",
    number-align: center,
  )
  set text(font: ("Times New Roman", "Libertinus Serif"), size: 12pt, lang: "en")
  set par(justify: true, leading: 0.9em, spacing: 1.2em)
  set heading(numbering: none)
  show heading.where(level: 1): set text(size: 15pt)
  show heading.where(level: 2): set text(size: 13pt)
  show heading.where(level: 3): set text(size: 12pt)
  show heading: set block(above: 1.4em, below: 0.9em)
  set table(stroke: 0.6pt, inset: 6pt)
  show table: set par(justify: false)
  show link: set text(fill: blue)
  doc
}

// Bordered box used for the methodology design diagram.
#let phase-box(body, width: 100%) = rect(
  width: width,
  stroke: 0.8pt,
  inset: 8pt,
  text(size: 10.5pt, body),
)

// APA-style hanging-indent reference entry.
#let ref-entry(body) = par(hanging-indent: 1.27cm, justify: true, body)

#import "../meta.typ": title, student, supervisor

// Source pages 1–3: cover, topic page, supervisor recommendation.
#set page(numbering: none)
#set par(justify: false)

// --- Cover (p. 1) ---
#align(center)[
  #v(1cm)
  #text(size: 24pt, weight: "bold")[Research Proposal]
  #v(1fr)
  #text(size: 14pt, weight: "bold")[
    Enhancing the competency of using \
    problem solving strategy in mathematics \
    among senior secondary teachers in Sri Lanka
  ]
  #v(1fr)
  #text(size: 14pt, weight: "bold")[
    #upper(student.name) \
    (#student.status) \
    #student.faculty \
    #student.university
  ]
  #v(2cm)
]
#pagebreak()

// --- Topic page (p. 2) ---
#align(center)[
  #v(2.5cm)
  #text(size: 15pt, weight: "bold")[Research Proposal]
  #v(1fr)
  #text(size: 12pt, weight: "bold")[Research Topic]
  #v(0.4em)
  #text(size: 15pt, weight: "bold")[
    Enhancing the competency of using \
    problem solving strategy in mathematics \
    among senior secondary teachers in Sri Lanka
  ]
  #v(1fr)
  #text(size: 13pt, weight: "bold")[Students Index No.:- #student.index]
  #v(3cm)
]
#pagebreak()

// --- Supervisor recommendation (p. 3) ---
#v(5cm)
#text(size: 13pt)[*The Name of Student:* - #h(0.3em) #student.name]
#v(1.2em)
#text(size: 13pt)[*The Name of Supervisor:* - #h(0.6em) #supervisor.name]
#linebreak()
#text(size: 11pt)[(#supervisor.role)]
#v(3em)
#text(size: 13pt)[Supervisor’s Recommendation:]
#v(4em)
#grid(
  columns: (1fr, auto),
  text(size: 13pt)[Signature: #box(width: 4cm, stroke: (bottom: 0.5pt + gray), inset: (bottom: 2pt))[#text(fill: gray, size: 9pt)[_(signed)_]]],
  text(size: 13pt)[Date: #supervisor.signed],
)
#pagebreak()

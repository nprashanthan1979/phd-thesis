// PhD thesis — layout from the candidate's MPhil thesis (see thesis-template.typ).
// Build: typst compile thesis.typ thesis.pdf
//
// UoC GenAI policy: every prose slot below is a placeholder for the
// candidate's own draft. Do not let an AI tool write first drafts here.
#import "meta.typ": title, student, supervisor, thesis-info
#import "thesis-template.typ": *

#let (degree, year, qualifications) = (thesis-info.degree, thesis-info.year, thesis-info.qualifications)

#show: thesis.with(title: title, author: student.name)

#cover-page(title: title, author: student.name, degree: degree, year: year)

#show: front-matter
#title-page(title: title, author: student.name, qualifications: qualifications,
  degree: degree, year: year)

#declaration(supervisors: ((name: supervisor.name, role: supervisor.role),))[
  I do hereby declare that the work reported in this thesis was exclusively
  carried out by me under the supervision of #supervisor.name. It describes the
  results of my own independent research except where due reference has been
  made in the text. No part of this thesis has been submitted earlier or
  concurrently for the same or any other degree.
]

#include "thesis/acknowledgements.typ"
#include "thesis/abstract.typ"

#table-of-contents()
#list-of-tables()
#list-of-figures()
#list-of-abbreviations((
  // Add entries as they are used in the text.
  ([G.C.E (A/L)], [General Certificate of Education (Advanced Level)]),
  ([G.C.E (O/L)], [General Certificate of Education (Ordinary Level)]),
  ([NIE], [National Institute of Education]),
))

#show: main-matter
#include "thesis/ch1-introduction.typ"
#include "thesis/ch2-literature-review.typ"
#include "thesis/ch3-methodology.typ"
#include "thesis/ch4-results.typ"
#include "thesis/ch5-conclusion.typ"

#heading(level: 1, numbering: none)[References]
#set par(justify: false)
#bibliography("thesis/references.bib")

#show: appendices
#include "thesis/appendices.typ"

// Thesis layout modelled on the candidate's MPhil thesis
// ("complete thesis final draft print.pdf", UoC Faculty of Education, 2022).
// A4; margins left 40mm (binding), right 15mm, top/bottom 30mm;
// Times New Roman 12pt; 1.5 line spacing (20.7pt pitch, as in the MPhil); justified;
// page number top-centre, Roman capitals (I, II, …) in front matter,
// Arabic from Chapter 1; tables captioned above, figures below,
// numbered per chapter (Table 1.1, Figure 2.3).

// APA figure with Note / specific / probability notes (versatile-apa).
#import "@preview/versatile-apa:7.2.0": apa-figure

#let serif = ("Times New Roman", "Libertinus Serif")

// Set to true after `#show: appendices` so level-1 headings render as appendices.
#let _in-appendix = state("in-appendix", false)

// Front-matter heading: centred bold capitals, listed in the TOC.
#let front-heading(body) = heading(level: 1, numbering: none, body)

// ---------------------------------------------------------------------------
// Main show rule
// ---------------------------------------------------------------------------
#let thesis(title: "", author: "", doc) = {
  set document(title: title, author: author)
  set page(
    paper: "a4",
    margin: (left: 40mm, right: 15mm, top: 30mm, bottom: 30mm),
    header-ascent: 45%,
    header: context {
      let fmt = page.numbering
      if fmt != none { align(center, counter(page).display(fmt)) }
    },
    numbering: none,
    footer: none,
  )
  set text(font: serif, size: 12pt, lang: "en", region: "gb")
  // 1.5 line spacing: baseline pitch = 1.5 × single line height. Single line
  // height for Times New Roman is 1.15em (ascender + descender + line gap, as
  // Word uses); Typst leading is measured from the baseline to the next line's
  // cap height (0.662em), so leading = 1.725em − 0.662em.
  set par(justify: true, leading: 1.063em, spacing: 1.8em)

  // Heading numbering: 1 / 1.1 / 1.1.1 / 1.1.1.1
  set heading(numbering: "1.1")
  show heading: set text(size: 12pt, weight: "bold")
  show heading: set block(above: 2em, below: 1.2em)
  show heading.where(level: 4): set text(style: "italic")

  // Level 1: chapter opening ("CHAPTER N" / TITLE), unnumbered front/back
  // headings (centred capitals), or appendix headings.
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    set text(size: 14pt)
    set par(justify: false)
    if _in-appendix.get() and it.numbering != none {
      block(below: 1.5em)[Appendix-#counter(heading).display("1"): #it.body]
    } else if it.numbering != none {
      align(center, block(below: 2em)[
        CHAPTER #counter(heading).display("1") \
        #v(0.3em)
        #upper(it.body)
      ])
    } else {
      align(center, block(below: 1.5em, upper(it.body)))
    }
  }
  // Reset per-chapter figure/table/equation counters at every chapter.
  show heading.where(level: 1): it => {
    counter(figure.where(kind: table)).update(0)
    counter(figure.where(kind: image)).update(0)
    counter(math.equation).update(0)
    it
  }

  // Per-chapter numbering: Table 1.1, Figure 1.1, (1.1).
  let chap-num(n) = context {
    let h = counter(heading).get().first()
    if _in-appendix.get() { numbering("A.1", h, n) } else { numbering("1.1", h, n) }
  }
  set figure(numbering: chap-num)
  set math.equation(numbering: n => [(#chap-num(n))])
  show figure.where(kind: table): set figure.caption(position: top)
  // Keep a table caption on the same page as the table it heads.
  show figure.caption.where(position: top): set block(sticky: true)
  show figure.caption: it => block(width: 100%, align(left)[
    #it.supplement #it.counter.display(it.numbering): #it.body
  ])
  show figure: set block(breakable: true, above: 1.5em, below: 1.5em)
  set table(stroke: 0.6pt, inset: 6pt)
  show table: set par(justify: false, leading: 0.65em)
  show table: set text(size: 11pt)

  // References: APA 7 via the versatile-apa CSL (vendored as thesis/apa.csl),
  // single-spaced entries with 0.5in hanging indent, blank line between.
  set bibliography(style: "thesis/apa.csl", title: none)
  show bibliography: set par(first-line-indent: 0in, hanging-indent: 0.5in,
    justify: false, leading: 0.65em, spacing: 1.2em)
  // Typst wraps entries in blocks, which drops the hanging indent; re-wrap
  // them as paragraphs (same workaround as versatile-apa's lib.typ).
  show bibliography: bib => {
    show block: b => if b.body == auto { b } else { par(b.body) }
    bib
  }

  doc
}

// ---------------------------------------------------------------------------
// Page-numbering phases
// ---------------------------------------------------------------------------
// Front matter: Roman capitals; the inner title page is page I (unprinted).
#let front-matter(body) = {
  set page(numbering: "I")
  counter(page).update(1)
  body
}

// Main text: Arabic from Chapter 1.
#let main-matter(body) = {
  pagebreak(weak: true)
  set page(numbering: "1")
  counter(page).update(1)
  body
}

// Appendices: "APPENDICES" divider, then `= Title` renders "Appendix-1: Title".
#let appendices(body) = {
  heading(level: 1, numbering: none)[Appendices]
  _in-appendix.update(true)
  counter(heading).update(0)
  body
}

// ---------------------------------------------------------------------------
// Title pages (MPhil pp. 1–2)
// ---------------------------------------------------------------------------
#let _title-block(title) = text(size: 16pt, weight: "bold", upper(title))

#let cover-page(title: "", author: "", degree: "", year: "") = {
  set page(header: none)
  set par(justify: false)
  align(center, block(height: 100%)[
    #v(2cm)
    #_title-block(title)
    #v(1fr)
    #text(weight: "bold")[BY \ #v(0.6em) #upper(author)]
    #v(1fr)
    #text(weight: "bold")[FOR THE DEGREE OF \ #v(0.6em) #upper(degree)]
    #v(1fr)
    #text(weight: "bold")[
      FACULTY OF EDUCATION \ UNIVERSITY OF COLOMBO \ SRI LANKA \ #v(0.3em) #year
    ]
    #v(1cm)
  ])
}

#let title-page(title: "", author: "", qualifications: "", degree: "", year: "") = {
  set page(header: none)
  set par(justify: false)
  align(center, block(height: 100%)[
    #v(1cm)
    #_title-block(title)
    #v(1fr)
    #text(weight: "bold")[By \ #v(0.6em) #upper(author)]
    #if qualifications != "" [\ #text(weight: "bold")[(#qualifications)]]
    #v(1fr)
    #emph[in the partial fulfilment of the requirement \ for the award of the degree of]
    #v(1fr)
    #text(weight: "bold", upper(degree))
    #v(1fr)
    of the
    #v(1fr)
    #text(weight: "bold")[
      FACULTY OF EDUCATION \ UNIVERSITY OF COLOMBO \ SRI LANKA. \ #v(0.3em) #year
    ]
    #v(1cm)
  ])
}

// ---------------------------------------------------------------------------
// Declaration (MPhil p. 3). `supervisors`: array of (name:, role:).
// ---------------------------------------------------------------------------
#let _dots(w) = box(width: w, repeat[.])

#let declaration(supervisors: (), body) = {
  front-heading[Declaration]
  body
  v(2em)
  grid(columns: (1fr, auto), row-gutter: 0.6em,
    [Date: #_dots(3.5cm)], _dots(4.5cm),
    [], [Signature of the Candidate],
  )
  v(2em)
  [Certified by:]
  for s in supervisors {
    v(1em)
    grid(columns: (auto, 1fr), column-gutter: 0.5em, row-gutter: 0.6em,
      [Supervisor (Name):], [#s.name, \ #s.role],
    )
    v(1em)
    [Date: #_dots(3.5cm)]
    v(1em)
    [(Signature): #_dots(5.5cm)]
  }
}

// ---------------------------------------------------------------------------
// Abstract (MPhil pp. 5–6)
// ---------------------------------------------------------------------------
#let abstract(title: "", author: "", affiliation: "", keywords: (), body) = {
  front-heading[Abstract]
  align(center)[
    #set par(justify: false)
    #text(weight: "bold", title) \
    #v(0.3em)
    #author \
    #text(size: 10pt, affiliation)
  ]
  v(1em)
  body
  v(1em)
  [*Keywords:* #keywords.join(", ").]
}

// ---------------------------------------------------------------------------
// Table of contents, list of tables, list of figures, abbreviations
// ---------------------------------------------------------------------------
#let table-of-contents() = {
  front-heading[Table of Contents]
  set par(justify: false, leading: 0.65em)
  show outline.entry: it => {
    let el = it.element
    let loc = el.location()
    let in-app = _in-appendix.at(loc)
    if it.level == 1 and el.numbering != none {
      // Chapter or appendix entry.
      if in-app {
        block(above: 0.8em, link(loc, box(width: 100%)[
          APPENDIX #numbering("1", ..counter(heading).at(loc)) #el.body
          #box(width: 1fr) #it.page()
        ]))
      } else {
        block(above: 1.8em, below: 1em, link(loc, text(weight: "bold")[
          CHAPTER #numbering("1", ..counter(heading).at(loc)) \
          #upper(el.body)
        ]))
      }
    } else if it.level == 1 {
      block(above: if el.body == [Appendices] or el.body == [References] { 1.8em } else { 0.8em },
        link(loc, box(width: 100%)[
          #if el.body in ([References], [Appendices]) { upper(el.body) } else { el.body }
          #box(width: 1fr) #it.page()
        ]))
    } else {
      let indent = (it.level - 2) * 1.2cm
      block(above: 0.8em, link(loc, box(width: 100%)[
        #h(indent) #box(width: 1.2cm + (it.level - 2) * 0.3cm, it.prefix()) #it.body()
        #box(width: 1fr) #it.page()
      ]))
    }
  }
  outline(title: none, depth: 4)
}

// Column-style list of tables/figures as in MPhil pp. 12–15.
#let _figure-list(kind, heading-text, col-label, cap-label) = {
  front-heading(heading-text)
  set par(justify: false, leading: 0.65em)
  context {
    let items = query(figure.where(kind: kind))
    table(
      columns: (2.2cm, 1fr, 1.6cm),
      stroke: none,
      inset: (x: 4pt, y: 5pt),
      align: (left, left, right),
      table.header([#col-label], [#cap-label], [Page]),
      ..items.map(f => {
        let loc = f.location()
        let chap = counter(heading).at(loc).first()
        let fmt = if _in-appendix.at(loc) { "A.1" } else { "1.1" }
        let num = numbering(fmt, chap, f.counter.at(loc).first())
        let pg = counter(page).at(loc).first()
        (link(loc, num), link(loc, f.caption.body), str(pg))
      }).flatten(),
    )
  }
}

#let list-of-tables() = _figure-list(table, [List of Tables], [Table no.], [Descriptions])
#let list-of-figures() = _figure-list(image, [List of Figures], [Figure no.], [Caption])

// `entries`: array of (abbreviation, expansion) pairs.
#let list-of-abbreviations(entries) = {
  front-heading[List of Abbreviations]
  set par(justify: false)
  grid(columns: (3.5cm, 1fr), row-gutter: 1.1em, ..entries.flatten())
}

// Bordered placeholder, used until real content exists.
#let todo(body) = block(breakable: false,
  width: 100%, inset: 8pt, stroke: (paint: gray, dash: "dashed"),
  text(fill: gray.darken(30%), style: "italic", body),
)

// Objective trace tag, e.g. #traces(1, 2) → "Objectives I, II". Every section
// should trace to at least one objective (see CLAUDE.md).
#let traces(..ns) = {
  let ns = ns.pos()
  let label = if ns.len() == 1 { "Objective " } else { "Objectives " }
  block(above: 0.4em, below: 0.8em, text(size: 9pt, fill: blue.darken(20%),
    label + ns.map(n => numbering("I", n)).join(", ")))
}

// Empty table with headers only; cells show "—" until real data exists.
// Never fill these with invented numbers.
#let table-skeleton(caption: [], rows: 3, ..headers) = {
  let hs = headers.pos()
  figure(caption: caption, table(
    columns: hs.len(),
    table.header(..hs.map(h => strong(h))),
    ..range(rows * hs.len()).map(_ => text(fill: gray)[—]),
  ))
}

// Figure placeholder box, captioned and numbered like a real figure.
#let figure-placeholder(caption: [], height: 5cm, note) = figure(
  kind: image,
  caption: caption,
  rect(width: 100%, height: height, stroke: (paint: gray, dash: "dashed"),
    align(center + horizon, text(fill: gray.darken(30%), style: "italic", size: 10pt, note))),
)

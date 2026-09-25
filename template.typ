// Layout for resume.typ, matching the original Word resume: Calibri metrics, a centred name
// and contact line, ruled section headings, and entries with the date right-aligned on the
// title line. The font is Carlito (in fonts/), an open clone of Calibri with identical metrics,
// so the PDF comes out the same on every machine (compile with `--font-path fonts`).

#let accent = rgb("#1a1a1a")

#let resume(name: "", contact: (), body) = {
  set document(title: name + " - Resume", author: name)
  set page(paper: "us-letter", margin: (x: 0.7in, y: 0.6in))
  set text(font: "Carlito", size: 10.5pt, fill: accent, lang: "en")
  set par(leading: 0.55em, spacing: 0.55em, justify: false)
  set list(marker: [•], indent: 0.6em, body-indent: 0.5em, spacing: 0.5em)
  show link: it => it  // links stay black, as on paper

  // Section headings: bold capitals over a thin rule.
  show heading.where(level: 1): it => block(above: 1.0em, below: 0.55em, width: 100%)[
    #set text(size: 10.5pt, weight: "bold")
    #upper(it.body)
    #v(-0.65em)
    #line(length: 100%, stroke: 0.75pt + accent)
  ]

  align(center)[
    #text(size: 20pt, weight: "bold", name)
    #v(-0.3em)
    #text(size: 10pt, contact.join([#h(0.5em)|#h(0.5em)]))
  ]

  body
}

// One entry: bold title with an optional right-aligned date, then an italic line (role,
// stack or degree) with an optional right-aligned second date, then the bullet points.
#let entry(title, date: none, subtitle: none, subdate: none, body) = block(above: 0.75em, below: 0em, breakable: false)[
  #text(weight: "bold", title)#if date != none [#h(1fr)#emph(date)]
  #if subtitle != none [
    \ #emph(subtitle)#if subdate != none [#h(1fr)#emph(subdate)]
  ]
  #set text(size: 10pt)
  #body
]

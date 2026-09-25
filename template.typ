// Layout for resume.typ: a classical Greek look to match the αη brand. EB Garamond (in fonts/),
// an αη monogram in a ring over the name set in spaced capitals like an inscription, a Greek
// key (meander) band under the header, sections numbered α, β, γ, …, and Tyrian purple as the
// accent. Entries are two lines (title and place, then a small-caps line and the dates) with
// bullet points underneath. Compile with `--font-path fonts`.

#let inks = (dark: luma(38), medium: luma(88), light: luma(165))
#let purple = rgb("#5b3a8c")      // Tyrian purple, for accents
#let paper = rgb("#fdfbf7")

#let sizes = (name: 24pt, heading: 12pt, item: 11.5pt, body: 10.5pt, small: 9pt)

// Tracked small caps for notes and dates; spaced capitals for inscriptions.
#let sc(body) = text(tracking: 0.05em, smallcaps(lower(body)))
#let inscribed(body, tracking: 0.22em) = text(tracking: tracking, upper(body))

#let dot = text(fill: inks.light)[#h(0.35em)·#h(0.35em)]

// "start – end", or "start – present" when there's no end yet.
#let daterange(start, end) = {
  set text(size: sizes.small, fill: inks.medium)
  sc(start)
  text(fill: inks.light)[ – ]
  if end == none { text(fill: inks.light, sc("Present")) } else { sc(end) }
}

// A running Greek key filling the available width: a baseline with a hooked spiral per unit.
#let meander(u: 2pt, stroke: 0.65pt + purple) = layout(size => {
  let w = 5 * u
  let n = calc.floor(size.width / w)
  let pad = (size.width - n * w) / 2
  box(width: size.width, height: 5 * u, {
    for i in range(n) {
      let x = pad + i * w
      place(dx: x, dy: 0pt, curve(
        stroke: stroke,
        curve.move((0pt, 5 * u)),
        curve.line((0pt, 0pt)),
        curve.line((4 * u, 0pt)),
        curve.line((4 * u, 3.5 * u)),
        curve.line((1.5 * u, 3.5 * u)),
        curve.line((1.5 * u, 1.5 * u)),
        curve.line((2.5 * u, 1.5 * u)),
      ))
    }
    // the baseline the keys stand on
    place(dx: pad, dy: 5 * u, line(length: n * w, stroke: stroke))
  })
})

// The αη monogram in a ring, after the site's favicon.
#let monogram(size: 34pt) = box(
  width: size, height: size, radius: 50%, stroke: 1.6pt + purple, inset: 0pt,
  align(center + horizon, text(size: size * 0.42, style: "italic", fill: purple, baseline: -0.04em)[αη]),
)

#let resume(first: "", last: "", links: (), more: (), body) = {
  let name = first + " " + last
  set document(title: name + " - Resume", author: name)
  set page(
    paper: "us-letter",
    fill: paper,
    margin: (x: 0.75in, top: 0.55in, bottom: 0.7in),
    footer: context {
      set text(size: 7pt, fill: inks.light)
      sc(datetime.today().display("[month repr:long] [day padding:none], [year]"))
      h(1fr)
      text(style: "italic", fill: purple.lighten(30%))[αη]
      h(1fr)
      sc(str(counter(page).get().first()) + " of " + str(counter(page).final().first()))
    },
  )
  set text(font: "EB Garamond", size: sizes.body, fill: inks.dark, number-type: "old-style", lang: "en")
  set par(leading: 0.55em, spacing: 0.65em, justify: false)
  set list(marker: text(fill: purple.lighten(20%))[·], indent: 0.3em, body-indent: 0.6em, spacing: 0.55em)
  show link: set text(fill: purple)

  // Sections: a Greek numeral in purple, the title in spaced capitals, then a hairline.
  set heading(numbering: "α")
  show heading.where(level: 1): it => block(above: 1.35em, below: 0.8em, width: 100%)[
    #set text(size: sizes.heading, weight: "semibold", number-type: "lining")
    #box(text(fill: purple, style: "italic", weight: "regular", size: sizes.heading * 1.3, counter(heading).display(it.numbering)))
    #h(0.55em)
    #box(inscribed(it.body, tracking: 0.18em))
    #h(0.5em)
    #box(width: 1fr, baseline: -0.3em, line(length: 100%, stroke: 0.5pt + inks.light))
  ]

  align(center, block(spacing: 0em)[
    #set par(leading: 0.5em, spacing: 0.55em)
    #monogram()
    #parbreak()
    #text(size: sizes.name, weight: "regular")[#inscribed(first, tracking: 0.16em)#h(0.45em)#text(weight: "semibold", inscribed(last, tracking: 0.16em))]
    #parbreak()
    #text(size: 11pt, style: "italic", links.join(dot))
    #if more.len() > 0 [
      #parbreak()
      #text(size: 9.5pt, style: "italic", fill: inks.medium, more.join(dot))
    ]
  ])
  v(0.9em)
  meander()
  v(0.2em)

  body
}

// One entry, two lines:
//   title · detail                                   place (italic)
//   SMALL-CAPS NOTE                                  START – END (or DATE)
// then any bullet points. Leave out `end` for "– Present"; use `date` for a single date.
#let entry(title, detail: none, place: none, note: none, start: none, end: none, date: none, body) = block(
  above: 1.05em, below: 0em, breakable: false,
)[
  #set text(size: sizes.item)
  #text(weight: "semibold", title)#if detail != none [#dot#text(fill: inks.medium, style: "italic", detail)]
  #h(1fr)
  #if place != none { text(style: "italic", fill: inks.dark, place) }
  \
  #if note != none { text(size: sizes.small, fill: inks.medium, sc(note)) }
  #h(1fr)
  #if date != none { text(size: sizes.small, fill: inks.medium, sc(date)) } else if start != none { daterange(start, end) }
  #v(0.2em)
  #set text(size: sizes.body)
  #body
]

// A label and value row, for skills.
#let row(label, value) = grid(
  columns: (8.5em, 1fr),
  column-gutter: 0.8em,
  text(weight: "semibold", label), value,
)

# Resume

My resume, typeset in [Typst](https://typst.app).

- `resume.typ` is the content: edit this.
- `template.typ` is the layout: a classical Greek look to match the αη brand, with an αη
  monogram, the name in spaced capitals, a Greek-key band, sections numbered α β γ δ, and
  Tyrian purple accents. Colours, sizes and the `entry` helper are at the top.
- `fonts/` holds EB Garamond (OFL licence included), so the PDF looks the same everywhere.

## Build

```sh
typst compile --font-path fonts resume.typ "Alejandro Escamilla - Resume.pdf"
```

or `typst watch --font-path fonts resume.typ` to rebuild on every save. In VS Code with
Tinymist, add `"tinymist.fontPaths": ["fonts"]` to the workspace settings (already in
`.vscode/settings.json`).

Every push to `main` also builds the PDF in GitHub Actions and attaches it to the `latest`
release, so the current version is always at
<https://github.com/AlejandroE25/resume/releases/latest/download/Alejandro-Escamilla-Resume.pdf>.

## Adding an entry

```typ
#entry(
  [Role or Project],
  detail: [Short description],        // optional, after a dot
  place: [Company or University],     // optional, right-aligned italic
  note: [Team · stack · or a note],   // optional, small caps under the title
  start: [Jan 2027],                  // leave out `end` for "– Present"
  end: [May 2027],                    // or use `date: [Expected May 2029]`
)[
  - What you did, with a result
  - Another bullet
]
```

Sections are `= Title`; they're numbered α, β, γ, … automatically.

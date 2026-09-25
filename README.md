# Resume

My resume, typeset in [Typst](https://typst.app).

- `resume.typ` is the content: edit this.
- `template.typ` is the layout (fonts, spacing, section headings, the `entry` helper).
- `fonts/` holds Carlito, an open-licensed (OFL) clone of Calibri with identical metrics, so the
  PDF looks the same everywhere.

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
  [Company or Project — Short Description],
  date: [Jan 2027 – Present],
  subtitle: [Role, or the stack for a project],
)[
  - What you did, with a result
  - Another bullet
]
```

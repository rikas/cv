# cv

Ricardo Otero's CV, built as a static `index.html` + `styles.css` page.

## Generating a PDF

Run the included script, which uses headless Chrome to render `index.html`
to PDF:

```bash
./generate-pdf.sh
```

This creates `Ricardo_Otero_CV.pdf` in the repo root. Pass a different path
as the first argument to change the output location/filename:

```bash
./generate-pdf.sh ~/Desktop/CV.pdf
```

Requires Google Chrome installed at the default macOS location
(`/Applications/Google Chrome.app`). Alternatively, open `index.html` in
Chrome and use `Cmd+P` → "Save as PDF" (enable "Background graphics" in
print settings for the colors/layout to render correctly).

# Francisca Portugal - CV

[![Build](https://github.com/franpts2/cv/actions/workflows/ci.yml/badge.svg)](https://github.com/franpts2/cv/actions/workflows/ci.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

<div align="left">
    <img src="https://img.shields.io/badge/Typst-239DAD?style=for-the-badge&logo=typst&logoColor=white" alt="Typst"/>
    <img src="https://img.shields.io/badge/PDF-EC1C24?style=for-the-badge&logo=adobeacrobatreader&logoColor=white" alt="PDF"/>
</div>

## About

Source and generated PDF for Francisca Portugal's one-page software engineering CV.

**[View the latest CV](main.pdf)**

`main.typ` is the authoritative source.

## Build

### Prerequisites

- [Typst](https://typst.app/open-source/)

```bash
typst compile --font-path fonts --ignore-system-fonts --creation-timestamp 0 main.typ main.pdf
```

The repository includes the required Source Sans Pro and Font Awesome fonts under their respective licenses.
CI uses Typst 0.15.1 to rebuild the source reproducibly and verifies that the committed `main.pdf` is current.

## Project Structure

```text
main.typ       Authoritative Typst source
main.pdf       Generated CV for direct download
fonts/         Vendored fonts and their licenses
```

## Privacy

This public repository intentionally contains the personal and professional contact details shown in the CV.

## License

The CV source and layout are available under the [MIT License](LICENSE). Vendored fonts remain subject to the license files in `fonts/`.

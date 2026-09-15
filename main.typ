#let primary = rgb("#001233")
#let muted = rgb("#808080")

#let fa-solid(icon) = text(font: "Font Awesome 5 Free Solid")[#icon]
#let fa-regular(icon) = text(font: "Font Awesome 5 Free")[#icon]
#let fa-brand(icon) = text(font: "Font Awesome 5 Brands")[#icon]

#set document(
  title: "Francisca Portugal's CV",
  author: "Francisca Portugal",
)

#set page(
  paper: "us-letter",
  margin: (
    top: 1.2cm,
    bottom: 1.2cm,
    left: 1.5cm,
    right: 1.5cm,
  ),
)

#set text(
  font: "Source Sans Pro",
  size: 10pt,
  hyphenate: true,
  top-edge: 0.8em,
  bottom-edge: -0.2em,
)
#set par(leading: 0.2em)
#set list(
  indent: 0.3cm,
  body-indent: 0.17cm,
  spacing: 0.37em,
)
#show list: it => block(above: 0.06cm, below: 0.06cm)[#it]
#show link: set text(fill: primary)

#let cv-section(title) = [
  #v(0.3cm)
  #block(breakable: false, above: 0pt, below: 0pt)[
    #move(dx: -1pt)[
      #block(width: 100% + 1pt)[
        #grid(
          columns: (auto, 1fr),
          column-gutter: 0.12cm,
          align: horizon,
          text(size: 14.4pt, weight: "bold", fill: primary)[#title],
          line(length: 100%, stroke: 0.8pt + primary),
        )
      ]
    ]
  ]
  #v(0.23cm)
]

#let entry(title, date, body) = block(breakable: false, above: 0pt, below: 0pt)[
  #pad(x: 0.15cm)[
    #grid(
      columns: (1fr, 3.8cm),
      column-gutter: 0cm,
      align: top,
      [#title #{ set text(tracking: -0.008em); body } #v(0.12cm)],
      align(right, text(hyphenate: false)[#date]),
    )
  ]
]

#let education-entry(degree, date, body) = block(breakable: false, above: 0pt, below: 0pt)[
  #pad(x: 0.15cm)[
    #grid(
      columns: (0.8cm, 1fr, 4.2cm),
      column-gutter: 0cm,
      align: top,
      strong(degree),
      [#{ set text(tracking: -0.008em); body } #v(0.06cm)],
      align(right, text(hyphenate: false)[#date]),
    )
  ]
]

#place(top + right, dy: -0.35cm)[
  #text(size: 9pt, style: "italic", fill: muted)[Last updated in September 2026]
]

#align(center)[
  #stack(
    dir: ttb,
    spacing: 0.3cm,
    text(size: 26pt, weight: "bold", fill: primary)[Francisca Portugal],
    text(size: 9.35pt, fill: primary, hyphenate: false)[
      #text(size: 8pt)[#fa-solid("\u{f3c5}")] #h(0.1cm) Porto
      #h(0.2cm) | #h(0.2cm)
      #link("mailto:franciscaportugal2005@gmail.com")[#text(size: 8pt)[#fa-regular("\u{f0e0}")] #h(0.1cm) franciscaportugal2005\@gmail.com]
      #h(0.2cm) | #h(0.2cm)
      #link("https://franciscapt.dev")[#text(size: 8pt)[#fa-solid("\u{f35d}")] #h(0.1cm) franciscapt.dev]
      #h(0.2cm) | #h(0.2cm)
      #link("https://www.linkedin.com/in/franciscaportugal")[#text(size: 8pt)[#fa-brand("\u{f0e1}")] #h(0.1cm) franciscaportugal]
      #h(0.2cm) | #h(0.2cm)
      #link("https://github.com/franpts2")[#text(size: 8pt)[#fa-brand("\u{f09b}")] #h(0.1cm) franpts2]
    ],
  )
]

#v(0.12cm)

#cv-section[Profile]

#pad(x: 0.15cm)[#text(tracking: -0.008em, hyphenate: false)[Frontend Developer with a passion for creating high-caliber, intuitive user interfaces. Driven by a product-centric mindset, I frequently venture into full-stack and mobile development to build tools that feel effortless, technically rigorous, and joyful for the user.]]

#cv-section[Experience]

#entry(
  [*Cloudflare*, Software Engineer Intern],
  [July 2026 – Present],
)[
  - Built and shipped a feature-gated Workflows Timeline in the Cloudflare Dashboard with *React*, *TypeScript*, *Kumo*, and *ECharts*, visualizing live step timing, retries, waits, errors, and concurrency.
  - Migrated the Workflows list to Kumo and fixed search and cache race conditions while preserving server-side search, pagination, metrics, sorting, and workflow actions.
]

#v(0.12cm)

#entry(
  [*NIAEFEUP*, Project Manager – TTS],
  [Porto #linebreak() May 2026 – Present],
)[
  - Lead development and continuous improvement of *Time Table Selector*, a React app streamlining class exchanges and academic schedule planning for university students.
  - Progressed from Recruit (Nov 2025 – Mar 2026) to Member (Mar – May 2026), contributing to *uni* with Flutter and NIAEFEUP's new website with Svelte.
]

#v(0.12cm)

#entry(
  [*Robotair*, Frontend Summer Intern],
  [Porto #linebreak() July 2025 – Aug 2025],
)[
  - Played a central role in the UI/UX redesign of the company's web app, modernizing Robots, Pipelines, and Secrets with *React* and *Tailwind CSS*.
  - Implemented Rigel testing, optional ROS deployments, unit-testing configuration, and critical bug fixes for a production product used by real clients.
]

#cv-section[Education]

#education-entry(
  [MSc],
  [Sept 2026 – July 2028 #linebreak() (Expected)],
)[
  *University of Porto*, #link("https://sigarra.up.pt/feup/en/cur_geral.cur_view?pv_curso_id=10861")[Software Engineering (MESW)]
  - *Relevant Coursework:* Software Architecture, Testing, and AI for Software Engineering.
]

#v(0.18cm)

#education-entry(
  [BSc],
  [Sept 2023 – July 2026],
)[
  *University of Porto*, Informatics and Computing Engineering
  - *Relevant Coursework:* Databases and Web Applications Lab (LBAW), Web Technologies and Languages (LTW), Software Engineering (ES), Algorithm Design (DA).
]

#cv-section[Projects]

#entry(
  [*Personal Portfolio*],
  [#link("https://github.com/franpts2/portfolio")[#text(size: 8pt)[#fa-solid("\u{f35d}")]]],
)[
  - Designed a high-performance website using *React*, *TypeScript*, and *Motion*, featuring interactive UI components, theme switching, and accessibility-first design.
  - #link("https://franciscapt.dev")[Live Demo: franciscapt.dev]
]

#v(0.1cm)

#entry(
  [*junto. — Social Media Platform*],
  [#link("https://github.com/franpts2/junto")[#text(size: 8pt)[#fa-solid("\u{f35d}")]]],
)[
  - Co-developed a full-stack social network for cultural interests using *Laravel*, *PostgreSQL*, and *Docker*, architecting a robust schema for media reviews and social interactions.
  - Implemented features including Google OAuth, real-time messaging, and AJAX feed updates.
]

#cv-section[Volunteering]

#entry(
  [*VO.U*, Pelos Animais],
  [Sept 2024 – Present],
)[
  - Actively contribute to animal care and welfare while assisting in events to raise awareness.
]

#v(0.08cm)

#entry(
  [*Mentoria UP*],
  [Sept 2025 – July 2026],
)[
  - Provide guidance and support to first-year students to facilitate academic and social integration.
]

#cv-section[Skills]

#pad(x: 0.15cm)[
  *Languages:* JavaScript, TypeScript, PHP, Python, Java, C, C++, Dart, Haskell, Prolog, HTML, CSS #linebreak()
  *Technologies:* React, Svelte, Tailwind CSS, Laravel, Flutter, Firebase, Docker, PostgreSQL, SQLite, Git, Figma
]

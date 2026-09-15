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
  #v(0.34cm)
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
  #v(0.27cm)
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
      [#{ set text(tracking: -0.008em); body } #v(0.12cm)],
      align(right, text(hyphenate: false)[#date]),
    )
  ]
]

#place(top + right, dy: -0.35cm)[
  #text(size: 9pt, style: "italic", fill: muted)[Last updated in March 2026]
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
  [*Robotair (INESC TEC)*, Front-End Intern],
  [Porto #linebreak() July 2025 – Aug 2025],
)[
  - #text(hyphenate: false)[Led 60% of a full UI/UX redesign for the company's web application, modernizing critical modules like Robots, Pipelines, and Secrets using *React* and *Tailwind CSS*.]
  - Developed custom interfaces for the Rigel testing system and optional ROS deployments, significantly improving platform responsiveness and consistency.
  - Contributed to a production-level product used by real clients by fixing critical bugs in build and testing workflows within an agile development environment.
]

#v(0.27cm)

#entry(
  [*NIAEFEUP*, Recruit],
  [Porto #linebreak() Nov 2025 – Present],
)[
  - Contributing to *uni*, an open-source *Flutter* application designed to centralize and streamline academic life for university students.
  - Developing *Time Table Selector*, the official FEUP platform for class exchanges and planning, using *React* to optimize the user scheduling experience.
  - Building the organization's new official website with *Svelte* and *Tailwind CSS* to improve information accessibility and member engagement.
]

#cv-section[Education]

#education-entry(
  [BSc],
  [Sept 2023 – June 2026 #linebreak() (Expected)],
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

#v(0.21cm)

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

#v(0.16cm)

#entry(
  [*Mentoria UP*],
  [Sept 2025 – Present],
)[
  - Provide guidance and support to first-year students to facilitate academic and social integration.
]

#cv-section[Skills]

#pad(x: 0.15cm)[
  *Languages:* JavaScript, TypeScript, PHP, Python, Java, C, C++, Dart, Haskell, Prolog, HTML, CSS #linebreak()
  *Technologies:* React, Svelte, Tailwind CSS, Laravel, Flutter, Firebase, Docker, PostgreSQL, SQLite, Git, Figma
]

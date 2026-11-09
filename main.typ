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
  paper: "a4",
  margin: (
    top: 1.0cm,
    bottom: 1.0cm,
    left: 1.5cm,
    right: 1.5cm,
  ),
)

#set text(
  font: "Source Sans Pro",
  size: 9.5pt,
  hyphenate: false,
  top-edge: 0.8em,
  bottom-edge: -0.2em,
)
#set par(leading: 0.18em)
#set list(
  indent: 0.3cm,
  body-indent: 0.17cm,
  spacing: 0.28em,
)
#show list: it => block(above: 0.06cm, below: 0.06cm)[#it]
#show link: set text(fill: primary)

#let cv-section(title) = [
  #v(0.16cm)
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
  #v(0.1cm)
]

#let entry(title, date, body) = block(breakable: false, above: 0pt, below: 0pt)[
  #pad(x: 0.15cm)[
    #grid(
      columns: (1fr, 3.8cm),
      column-gutter: 0cm,
      align: top,
      [#title #{ set text(tracking: -0.008em); body } #v(0.08cm)],
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
  #text(size: 9pt, style: "italic", fill: muted)[Last updated in November 2026]
]

#align(center)[
  #stack(
    dir: ttb,
    spacing: 0.3cm,
    text(size: 26pt, weight: "bold", fill: primary)[Francisca Portugal],
    text(size: 9.35pt, fill: primary, hyphenate: false)[
      #text(size: 8pt)[#fa-solid("\u{f3c5}")] #h(0.1cm) Porto
      #h(0.2cm) | #h(0.2cm)
      #link("mailto:hello@franciscapt.dev")[#text(size: 8pt)[#fa-regular("\u{f0e0}")] #h(0.1cm) hello\@franciscapt.dev]
      #h(0.2cm) | #h(0.2cm)
      #link("https://franciscapt.dev")[#text(size: 8pt)[#fa-solid("\u{f35d}")] #h(0.1cm) franciscapt.dev]
      #h(0.2cm) | #h(0.2cm)
      #link("https://www.linkedin.com/in/franciscaportugal")[#text(size: 8pt)[#fa-brand("\u{f0e1}")] #h(0.1cm) franciscaportugal]
      #h(0.2cm) | #h(0.2cm)
      #link("https://github.com/franpts2")[#text(size: 8pt)[#fa-brand("\u{f09b}")] #h(0.1cm) franpts2]
    ],
  )
]

#v(0.08cm)

#cv-section[Profile]

#pad(x: 0.15cm)[#text(tracking: -0.008em, hyphenate: false)[Frontend Developer with a passion for creating high-caliber, intuitive user interfaces. Driven by a product-centric mindset, I frequently venture into full-stack development to build tools that feel effortless, technically rigorous, and joyful for the user.]]

#cv-section[Experience]

#entry(
  [*University of Porto*, Teaching Assistant – Databases and Web Applications Lab],
  [Porto #linebreak() Sept 2026 – Present],
)[
  - Build course materials (guides, tutorials) and support students in weekly lab sessions and asynchronously.
]

#v(0.08cm)

#entry(
  [*Cloudflare*, Software Engineer Intern],
  [Lisbon #linebreak() July 2026 – Sept 2026],
)[
  - Built and shipped a feature-gated Workflows Timeline in the Cloudflare Dashboard with *React*, *TypeScript*, *Kumo*, and *ECharts* — a waterfall chart providing a more comprehensive view of a workflow instance, visualizing live step timing, retries, waits, errors, and concurrency.
  - Fixed bugs and improved the *DAG* view that renders each workflow's control flow — nested try/catch blocks, loops, and conditional branches. Also migrated the main Workflows table to *Kumo* (Cloudflare's component library).
]

#v(0.08cm)

#entry(
  [*NIAEFEUP*, Project Manager – TTS],
  [Porto #linebreak() May 2026 – Present],
)[
  - Lead *Time Table Selector* (#link("https://tts.niaefeup.pt")[#text(size: 9.5pt)[tts.niaefeup.pt] #h(0.05cm) #text(size: 8pt)[#fa-solid("\u{f35d}")]]), the open-source platform where University of Porto students experiment with all possible class schedule combinations at the start of the semester, and the official class exchange platform for L.EIC and M.EIC students.
  - Coordinate the team through a full backend remake, migrating off the legacy *Django* service onto a *Bun* workspace monorepo with a *Bun* + *Elysia* + *Prisma* backend and a *React* + *Vite* + *Tailwind CSS* frontend — setting the roadmap and turning student feedback into product and engineering priorities.
  - Joined as Recruit (Nov 2025), became Member (Mar 2026), and contributed to *uni* with Flutter and NIAEFEUP's new website with Svelte.
]

#v(0.08cm)

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
  *University of Porto*, Software Engineering (MESW)
  - *Relevant Coursework:* Software Architecture, Testing, and AI for Software Engineering.
]

#v(0.1cm)

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
  [#link("https://franciscapt.dev")[#text(size: 9.5pt)[franciscapt.dev] #h(0.05cm) #text(size: 8pt)[#fa-solid("\u{f35d}")]]],
)[
  - Designed and built the site from scratch with *React*, *TypeScript*, *Tailwind CSS*, *Motion*, and *Vite*, including a custom design system, physics-based interactions, a scroll-driven narrative, and a *Cloudflare Pages Functions* contact pipeline with validation, rate limiting, and spam protection.
]

#v(0.1cm)

#entry(
  [*Cadence*],
  [#link("https://cadence.franciscapt.dev")[#text(size: 9.5pt)[cadence.franciscapt.dev] #h(0.05cm) #text(size: 8pt)[#fa-solid("\u{f35d}")]]],
)[
  - Designed and shipped a full-stack music journal where each day gets a song, explored through an interactive calendar; built with *SvelteKit*, *Svelte 5*, *TypeScript*, and *Tailwind CSS*, deployed by *Cloudflare*.
  - Implemented Google OAuth with *Auth.js*, a *Drizzle* / *Turso* data layer and Spotify Web API search; added drag-and-drop rescheduling with touch support, song previews, and shareable month images.
]

#cv-section[Volunteering]

#entry(
  [*VO.U*, Pelos Animais],
  [Sept 2024 – Present],
)[
  - Animal care and welfare, plus running awareness events.
]

#v(0.08cm)

#entry(
  [*Mentoria UP*],
  [Sept 2025 – July 2026],
)[
  - Mentor first-year students through their academic and social transition to university.
]

#cv-section[Skills]

#pad(x: 0.15cm)[
  *Languages:* JavaScript, TypeScript, SQL, PHP, Python, Java, C, C++, Dart, Haskell, Prolog, HTML, CSS #linebreak()
  *Frameworks & Libraries:* React, Svelte / SvelteKit, Tailwind CSS, Motion, Laravel, Flutter, Bun, Elysia, Prisma, Drizzle ORM #linebreak()
  *Platforms & Tools:* Cloudflare, PostgreSQL, SQLite, Turso, Firebase, Auth.js, Zod, Docker, Vite, Vitest, Git, GitHub Actions, Figma
]

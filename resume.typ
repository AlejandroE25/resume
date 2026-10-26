#import "template.typ": resume, entry, row, dot

#show: resume.with(
  first: "Alejandro",
  last: "Escamilla",
  links: (
    link("https://aescamilla.uk")[aescamilla.uk],
    link("mailto:ae42@illinois.edu")[ae42\@illinois.edu],
  ),
  more: (
    link("https://github.com/AlejandroE25")[github.com/AlejandroE25],
    link("https://linkedin.com/in/alejandroe06")[linkedin.com/in/alejandroe06],
    [(224) 425-6301],
  ),
)

= Education

#entry(
  [Engineering Undeclared],
  place: [University of Illinois Urbana-Champaign],
  note: [Cumulative GPA 3.72 / 4.00],
  date: [Expected May 2029],
)[]

= Projects

#entry(
  [iKB],
  detail: [AI-Powered Knowledge Base Search Tool],
  note: [Python (Flask) · Claude API · Voyage AI · BM25 · sqlite-vec · Azure App Service],
  start: [Mar 2026],
)[
  - Combined Voyage AI embeddings and BM25 lexical search in a hybrid retrieval pipeline backed by sqlite-vec
  - Boosted accuracy via Anthropic’s Contextual Retrieval, prepending Claude-generated context before indexing
  - Built a Chrome/Firefox extension handling Cerebro SSO via postMessage, integrating into IT workflows
  - Deployed the Flask backend to Azure App Service to serve search and embedding requests in production
]

#entry(
  [JACK],
  detail: [Real-Time Voice-First AI Assistant],
  note: [Python · Claude API · Speech-to-Text],
  start: [Dec 2025],
)[
  - Designed a Claude-backed router that decomposes voice input into intents with parameter extraction
  - Built a dependency-resolution engine sequencing intents into an execution queue for multi-step commands
  - Architected dynamic capability generation, extending the assistant’s actions at runtime without hardcoded handlers
  - Implemented compound command handling, using a Claude agent to compile results into one spoken response
]

= Experience

#entry(
  [Help Desk Team Lead],
  place: [University of Illinois Urbana-Champaign],
  note: [Technology Services · Promoted from Help Desk Student Consultant],
  start: [Oct 2025],
)[
  - Supervise a team of student consultants, assigning tasks and spot-checking tickets for service quality
  - Train and onboard new student employees, assisting with hiring decisions and performance feedback
  - Deliver in-person classroom tech training for faculty and staff, alongside phone, email, and walk-in support
  - Serve as the escalation point for complex tickets, mentoring consultants on troubleshooting and KB use
]

#entry(
  [Beach Manager],
  place: [Waukegan Municipal Beach],
  note: [Promoted from Beach Ranger],
  start: [May 2026],
  end: [Aug 2026],
)[
  - Directed a City Council-mandated initiative installing pier ID markers, cutting 911 response times
  - Scheduled and delegated daily tasks across a staff of 6–15
  - Served as the primary contact for visitor concerns, maintaining CPR/First Aid certification for on-site emergencies
]

= Involvement

#entry(
  [Design Team Member],
  place: [Engineers Without Borders],
  note: [Secor Water Treatment Plant Project],
  start: [Sep 2026],
)[
  - Researched corporate grants to fund a village water treatment plant upgrade, aiming to keep residents’ water bills affordable
]

= Skills

#row[Programming][Python#dot C++#dot JavaScript#dot Java]
#v(0.2em)
#row[Languages][English #text(style: "italic", fill: luma(82))[(native)]#dot Spanish #text(style: "italic", fill: luma(82))[(heritage)]]

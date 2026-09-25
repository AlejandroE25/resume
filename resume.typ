#import "template.typ": resume, entry

#show: resume.with(
  name: "Alejandro Escamilla",
  contact: (
    [(224) 425-6301],
    link("mailto:ae42@illinois.edu")[ae42\@illinois.edu],
    link("https://linkedin.com/in/alejandroe06")[linkedin.com/in/alejandroe06],
    link("https://github.com/AlejandroE25")[github.com/AlejandroE25],
    link("https://aescamilla.uk")[aescamilla.uk],
  ),
)

= Education

#entry(
  [University of Illinois Urbana-Champaign],
  subtitle: [Engineering Undeclared],
  subdate: [Expected May 2029],
)[
  - Cumulative GPA: 3.72 / 4.00
]

= Projects

#entry(
  [iKB (IntelligentKB) — AI-Powered Knowledge Base Search Tool],
  date: [Mar 2026 – Present],
  subtitle: [Python (Flask), Anthropic Claude API, Voyage AI, BM25, sqlite-vec, Azure App Service],
)[
  - Combined Voyage AI embeddings and BM25 lexical search in a hybrid retrieval pipeline backed by sqlite-vec
  - Boosted accuracy via Anthropic’s Contextual Retrieval, prepending Claude-generated context before indexing
  - Built a Chrome/Firefox extension handling Cerebro SSO via postMessage, integrating into IT workflows
  - Deployed the Flask backend to Azure App Service to serve search and embedding requests in production
]

#entry(
  [JACK — Real-Time Voice-First AI Assistant],
  date: [Dec 2025 – Present],
  subtitle: [Python, Anthropic Claude API, Speech-to-Text],
)[
  - Designed a Claude-backed router that decomposes voice input into intents with parameter extraction
  - Built a dependency-resolution engine sequencing intents into an execution queue for multi-step commands
  - Architected dynamic capability generation, extending the assistant’s actions at runtime without hardcoded handlers
  - Implemented compound command handling, using a Claude agent to compile results into one spoken response
]

= Professional Experience

#entry(
  [University of Illinois Technology Services],
  date: [Oct 2025 – Present],
  subtitle: [Help Desk Student Consultant],
)[
  - Provide Tier 1 support for UIUC accounts, campus network access, and Microsoft 365 across university services
  - Troubleshoot connectivity, authentication, and software issues, escalating complex tickets to Tier 2 with documentation
]

#entry(
  [Waukegan Municipal Beach],
  date: [May 2026 – Aug 2026],
  subtitle: [Beach Manager],
)[
  - Directed a City Council-mandated initiative installing pier ID markers, cutting 911 response times
  - Promoted from Beach Ranger to Beach Manager; scheduled and delegated daily tasks across a staff of 6–15
  - Trained and onboarded new staff on safety, customer service, and facility procedures
  - Served as the primary contact for visitor concerns, maintaining CPR/First Aid certification for on-site emergencies
]

= Skills

*Programming:* Python, C++, JavaScript, Java \
*Spoken Languages:* English (native), Spanish (heritage)

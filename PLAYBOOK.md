# PLAYBOOK - Quick Skills Cheat Sheet

A clean, scannable guide to all 22 global skills and 26 on-demand library skills. Find what you need at a glance.

---

## 1. The Daily 5-Step Loop (How to Build Anything)

Follow this rhythm for any non-trivial feature, API route, or database change:

```
1. Grill Plan      -->  /grilling (or /grill-with-docs)
2. Lock Spec       -->  /to-spec
3. Create Tickets  -->  /to-tickets
4. Build Test-First-->  tdd + framework rules
5. Audit & Ship    -->  /code-review -> /build-in-public
```

| Step | Command & Skill | What It Does | Natural Prompt Example |
|---|---|---|---|
| **1. Grill Plan** | `/grilling`<br>`/grill-with-docs` | Pokes holes in your idea, finds missing edge cases, and clarifies data flow before writing code. | *"Grill me on adding team workspaces"* |
| **2. Lock Spec** | `/to-spec` | Turns conversational agreements into an immutable, testable written contract. | *"/to-spec lock this into a feature spec"* |
| **3. Create Tickets** | `/to-tickets` | Breaks the spec into small vertical task files in `.scratch/issues/*.md` with clear blocking edges. | *"/to-tickets break this spec into tasks"* |
| **4. Build Test-First** | `tdd` | Writes a failing test first, watches it fail in the terminal, applies minimal fix, verifies passing run. | *"Build ticket 01 using TDD"* |
| **5. Audit & Ship** | `/code-review`<br>`/build-in-public` | Dual sub-agents check spec alignment and rules diff; turns work card into proof-first social posts. | *"/code-review check my uncommitted changes"* |

---

## 2. Global Skills Catalog (22 Skills Loaded Everywhere)

### Planning & Architecture
| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`grilling`**<br>`/grilling` | Socratic interview that maps out decisions to kill hidden assumptions before coding. | You have an idea or plan, but haven't settled the trade-offs. | *"Grill me on this feature plan"* |
| **`grill-with-docs`**<br>`/grill-with-docs` | Grilling with doc verification so the agent never hallucinates fake endpoints. | Integrating 3rd-party APIs (Stripe, Clerk, Supabase, Twilio). | *"/grill-with-docs integrate Stripe checkout"* |
| **`to-spec`**<br>`/to-spec` | Turns messy chat discussions into an immutable, locked specification document. | You just agreed on a feature and need a written contract before coding. | *"/to-spec write the spec for this"* |
| **`to-tickets`**<br>`/to-tickets` | Breaks a spec into small vertical task files in `.scratch/issues/*.md`. | A feature is too big for one prompt and needs step-by-step tickets. | *"/to-tickets break this into tasks"* |
| **`wayfinder`**<br>`/wayfinder` | Roadmaps complex projects through decision checkpoints instead of fragile timelines. | Large architectural efforts where early choices change later steps. | *"/wayfinder plan this project"* |
| **`triage`**<br>`/triage` | Front-door bug and request triage into structured, agent-ready tickets. | Incoming bug reports or feature requests arrive raw. | *"/triage review incoming bug reports"* |
| **`graphify`**<br>`/graphify` | Draws visual AST dependency graphs showing how all files in the project connect. | Entering a large repo or planning a major structural refactor. | *"/graphify build a dependency map"* |

### Coding, Execution & Testing
| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`ponytail`**<br>`/ponytail` | Enforces the smallest working diff, native platform APIs, and zero wrapper bloat. | Anytime you want simple, clean code without AI over-engineering. | *"Be lazy. Use ponytail."* |
| **`tdd`**<br>`/tdd` | Invariant TDD enforcing Failure-Mode Enumeration; bans fake tautological tests. | Building critical business logic (payments, auth, orders, permissions). | *"Write this cart logic with TDD"* |
| **`diagnosing-bugs`**<br>`/diagnosing-bugs` | 4-step debugging loop: isolate cause, write a failing repro test first, minimal fix. | Any error, crash, or unexpected behavior occurs. | *"Diagnose this error"* |
| **`e2e-testing`**<br>`/e2e` | Playwright browser runner that clicks and tests the app like a real human user. | Verifying critical user flows (login, checkout, onboarding) before release. | *"/e2e run the test suite"* |
| **`create-verification-skill`**<br>`/create-verification-skill` | Generates a one-command health check runner (`verify-<app>`) with doctor checks. | Starting a new project or standardizing checks across an existing repo. | *"Set up verification for this repo"* |

### Backend, Database & Performance
| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`supabase`**<br>`/supabase` | Writes clean database queries, secure Row-Level Security (RLS) policies, and Edge Functions. | Creating tables, securing access with RLS, or querying Supabase. | *"Write the RLS policy for this table"* |
| **`postgres-best-practices`**<br>`/postgres-best-practices` | Optimizes indexes (B-tree, GIN), query plans (`EXPLAIN`), and connection pooling. | Database queries are slow or when designing tables under load. | *"Optimize this Postgres query"* |
| **`react-best-practices`**<br>`/react-best-practices` | Applies 70+ Vercel rules to kill unnecessary re-renders, hook leaks, and waterfalls. | A React component feels slow, re-renders too much, or has messy state. | *"Optimize this component's performance"* |

### UI Polish & Visual Craft
| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`taste-skill`**<br>`/taste-skill` | Generates bespoke layouts, distinct typography, and intentional aesthetics (anti-AI-slop). | Designing landing pages, portfolios, or fixing an ugly interface. | *"/taste make this hero look high-end"* |
| **`shadcn`**<br>`/shadcn` | Installs and customizes accessible Radix UI primitives styled with Tailwind tokens. | Adding accessible UI elements (modals, dropdowns, tables, sheets, toasts). | *"Add a shadcn dropdown menu here"* |
| **`emil-design-eng`**<br>`/emil-design-eng` | Adds Emil Kowalski spring curves, fluid drawers, tactile buttons, and micro-interactions. | Modals, tabs, or buttons feel stiff and you want an iOS-like fluid feel. | *"/emil polish this dialog animation"* |
| **`impeccable`**<br>`/impeccable` | 59-point design audit checking spacing, hierarchy, contrast, typography, and button states. | A page is built but feels slightly off, messy, or unpolished. | *"/impeccable audit this page"* |

### Review, Copy & Marketing
| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`code-review`**<br>`/code-review` | Dual sub-agents auditing git diffs: one checks coding rules, one checks spec alignment. | Auditing uncommitted changes or PRs before merging. | *"/code-review check my uncommitted changes"* |
| **`unslop`**<br>`/unslop` | Strips robotic AI words ("seamless", "delve"), em-dashes, and buzzwords from text. | Editing READMEs, documentation, commit messages, or assistant prose. | *"/unslop rewrite this copy"* |
| **`build-in-public`**<br>`/build-in-public` | Turns real git commits and `JOURNAL.md` cards into proof-first posts for X and LinkedIn. | After shipping a feature or fixing a bug to share progress online. | *"/build-in-public write a post on this ship"* |

---

## 3. On-Demand Library Catalog (`~/.agents/library/`)

*Cold storage on disk to save tokens. Bring into a project with: **"Use [skill] from the library"***

### AI Infrastructure (2 Skills)
| Skill | What It Does & When to Pull It In |
|---|---|
| **`mcp-builder`** | Building custom Model Context Protocol (MCP) servers in Python or TypeScript. |
| **`writing-for-agents`** | Writing token-efficient prompts, skill specifications, and instructions for AI agents. |

### Web Scraping (1 Skill)
| Skill | What It Does & When to Pull It In |
|---|---|
| **`scrapling-official`** | Writing resilient web scrapers that bypass Turnstile, Cloudflare, and extract clean markdown. |

### Tools, Architecture & Git (12 Skills)
| Skill | What It Does & When to Pull It In |
|---|---|
| **`blast-radius`** | Running safety verification scripts to prove a refactor didn't break untouched code. |
| **`codebase-design`** | Architecting deep modules with clean public interfaces and minimal hidden state. |
| **`domain-modeling`** | Domain-driven design workflows; creates ubiquitous domain vocabularies in `GLOSSARY.md`. |
| **`improve-codebase-architecture`** | Scans git churn hot spots to identify shallow, tangled modules and proposes refactors. |
| **`ketchup`** | Summarizes recent conversation progress and pending decisions in under 100 words. |
| **`pr`** | Formats pull request descriptions with architecture diagrams, proof, and risk analysis. |
| **`prototype`** | Builds disposable single-file HTML or route prototypes to settle UX questions fast. |
| **`show-me`** | Renders complex logic as ASCII diagrams, call trees, or interactive visual HTML widgets. |
| **`show-me-your-work`** | Formats agent decision trails and reasoning into an ISO-timestamped TSV log. |
| **`to-questionnaire`** | Formats messy requirements into a clean discovery questionnaire for stakeholders. |
| **`using-git-worktrees`** | Manages parallel git branches in isolated folders to prevent multi-agent collisions. |
| **`wizard`** | Creates interactive step-by-step bash terminal wizards for manual cloud credentials setup. |

### UI Sub-Styles & Motion (5 Skills)
| Skill | What It Does & When to Pull It In |
|---|---|
| **`animate`** | Exact web spring physics formulas, duration tables, and interruptible gesture rules. |
| **`animate-expo`** | React Native / Expo motion guide using Reanimated 4 worklets to prevent frame drops. |
| **`break-ui`** | Injects extreme text, weird dimensions, and edge data into components to expose layout bugs. |
| **`mobile-native`** | 12 mobile CSS fixes (tap delays, 100vh viewport bugs, input zoom) so web apps feel native. |
| **`review-animations`** | Animation code-review checklist enforcing spring physics and performance guardrails. |

### Marketing & Growth (6 Skills)
| Skill | What It Does & When to Pull It In |
|---|---|
| **`competitors`** | High-converting competitor comparison pages and alternative landing pages. |
| **`copywriting`** | Conversion copywriting frameworks with diagnostic modes and claim verification. |
| **`directory-submissions`** | Curated database of 100+ vetted AI & SaaS launch directories with Domain Ratings. |
| **`programmatic-seo`** | Database-backed programmatic SEO landing page architecture, schemas, and thin-content defenses. |
| **`schema`** | Ready-to-use schema.org JSON-LD structured data for Google search snippets. |
| **`seo-audit`** | Diagnostic checklist for site crawlability, canonicals, robots.txt, and Core Web Vitals. |

---

## 4. Emergency & Speed Invariants

* **"bro":** Tell the agent to explain its last message again, simpler and with zero jargon.
* **"ketchup":** Tell the agent to give you a <100 word recap of what changed and what decisions are waiting on you.
* **Two-Fail Circuit Breaker:** If a test or build fails twice on the same fix attempt, the agent must stop guessing and ask for direction.
* **Session Handoff:** When wrapping up or pausing, the agent writes a 5-line summary to `.scratch/HANDOFF.md` so a new session resumes instantly.

# PLAYBOOK - Quick Skills Cheat Sheet

A clean, scannable guide to all 22 global skills and 26 on-demand library skills. Find what you need at a glance.

---

## 1. Planning & Architecture (Before You Code)

| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`grilling`**<br>`/grilling` | Socratic interview that maps out decisions to kill hidden assumptions and flaws before coding. | You have an idea or architecture plan, but haven't settled the trade-offs. | *"Grill me on this feature plan"* |
| **`grill-with-docs`**<br>`/grill-with-docs` | Same as grilling, but forces checking official docs/APIs so the AI doesn't invent fake endpoints. | Integrating third-party APIs (Swiggy, Clerk, Stripe, Supabase). | *"/grill-with-docs integrate Swiggy checkout"* |
| **`graphify`**<br>`/graphify` | Draws visual AST dependency graphs showing how all files in the project connect. | Entering a large repo or planning a major structural refactor. | *"/graphify"* |
| **`to-spec`**<br>`/to-spec` | Turns messy chat discussions into an immutable, locked specification document. | You just agreed on a feature and need a written contract before coding. | *"/to-spec write the spec for this"* |
| **`to-tickets`**<br>`/to-tickets` | Breaks a spec into small vertical task files in `.scratch/issues/*.md`. | A feature is too big for one prompt and needs step-by-step tickets. | *"/to-tickets break this into tasks"* |
| **`wayfinder`**<br>`/wayfinder` | Roadmaps complex projects through decision checkpoints instead of fragile timelines. | Large architectural efforts where early choices change later steps. | *"/wayfinder plan this project"* |
| **`triage`**<br>`/triage` | Front-door bug and request triage into structured, agent-ready tickets. | Incoming bug reports or feature requests arrive raw. | *"/triage review incoming bug reports"* |

---

## 2. Coding, Backend & Execution

| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`ponytail`**<br>`/ponytail` | Enforces the smallest working diff, native APIs, and zero speculative wrapper bloat. | Anytime you want simple, clean code without AI over-engineering. | *"Be lazy. Use ponytail."* |
| **`supabase`**<br>`/supabase` | Writes clean database queries, secure Row-Level Security (RLS) policies, and Edge Functions. | Creating database tables, securing access with RLS, or querying Supabase. | *"Write the RLS policy for this table"* |
| **`postgres-best-practices`**<br>`/postgres-best-practices` | Optimizes indexes (B-tree, GIN), query plans (`EXPLAIN`), and connection pooling. | Database queries are slow or when designing tables and indexes under load. | *"Optimize this Postgres query"* |
| **`react-best-practices`**<br>`/react-best-practices` | Applies 70+ Vercel rules to kill unnecessary re-renders, hook leaks, and data waterfalls. | A React component feels slow, re-renders too much, or has messy state. | *"Optimize this component's performance"* |

---

## 3. UI Polish & Visual Craft

| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`taste-skill`**<br>`/taste-skill` | Generates bespoke layouts, distinct typography, and intentional aesthetics (anti-AI-template). | Designing landing pages, portfolios, or fixing an ugly interface. | *"/taste make this hero look high-end"* |
| **`impeccable`**<br>`/impeccable` | 59-point design audit checking spacing, hierarchy, contrast, typography scaling, and button states. | A page is built but feels slightly off, messy, or unpolished. | *"/impeccable audit this page"* |
| **`emil-design-eng`**<br>`/emil-design-eng` | Adds Emil Kowalski spring curves, fluid drawers, tactile buttons, and micro-interactions. | Modals, tabs, or buttons feel stiff and you want an iOS-like fluid feel. | *"/emil polish this dialog animation"* |
| **`shadcn`**<br>`/shadcn` | Installs and customizes accessible Radix UI primitives styled with Tailwind tokens. | Adding accessible UI elements (modals, dropdowns, tables, sheets, toasts). | *"Add a shadcn dropdown menu here"* |

---

## 4. Testing & Debugging

| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`diagnosing-bugs`**<br>`/diagnosing-bugs` | 4-step debugging loop: isolate cause, write a failing repro test first (Red), apply minimal fix (Green). | Any error, crash, or unexpected behavior occurs. | *"Diagnose this error"* |
| **`tdd`**<br>`/tdd` | Invariant TDD enforcing Failure-Mode Enumeration (FME); bans fake tautological tests. | Building critical business logic (payments, auth, orders, cart calculations). | *"Write this cart logic with TDD"* |
| **`e2e`** (`e2e-testing`)<br>`/e2e` | Playwright browser runner that clicks and tests the app like a real human user. | Verifying critical user flows (login, checkout, onboarding) before release. | *"/e2e run the test suite"* |
| **`create-verification-skill`**<br>`/create-verification-skill` | Generates a one-command health check runner (`verify-<app>`) with doctor checks and tests. | Starting a new project or standardizing checks across an existing repo. | *"Set up verification for this repo"* |

---

## 5. Review & Content Discipline

| Skill & Command | What It Does & Why | When to Use It | Natural Prompt Example |
|---|---|---|---|
| **`code-review`**<br>`/code-review` | Dual sub-agents auditing git diffs: one checks project rules (`AGENTS.md`), one checks spec alignment. | Auditing uncommitted changes or PRs before merging. | *"/code-review check my uncommitted changes"* |
| **`unslop`**<br>`/unslop` | Strips robotic AI words ("seamless", "delve"), em-dashes, and buzzwords from text. | Editing READMEs, documentation, commit messages, or assistant prose. | *"/unslop rewrite this copy"* |
| **`build-in-public`**<br>`/build-in-public` | Turns real git commits and `JOURNAL.md` cards into proof-first posts for X and LinkedIn. | After shipping a feature or fixing a bug to share progress online. | *"/build-in-public write a post on this ship"* |

---

## 6. On-Demand Library Catalog (`~/.agents/library/`)

*Cold storage on disk to save tokens. Bring into a project with: "Use [skill] from the library"*

| Category | Skills Included | When to Pull It In |
|---|---|---|
| **AI Infrastructure (2)** | `mcp-builder`, `writing-for-agents` | Building custom MCP servers or writing prompt specifications. |
| **Web Scraping (1)** | `scrapling-official` | Writing scrapers to bypass anti-bot shields and extract markdown. |
| **Tools, Architecture & Git (12)** | `blast-radius`, `codebase-design`, `domain-modeling`, `improve-codebase-architecture`, `ketchup`, `pr`, `prototype`, `show-me`, `show-me-your-work`, `to-questionnaire`, `using-git-worktrees`, `wizard` | Managing architecture refactors, pull requests, parallel git branches, or prototypes. |
| **UI Sub-Styles & Motion (5)** | `animate`, `animate-expo`, `break-ui`, `mobile-native`, `review-animations` | Polishing web animations, React Native gestures, or stress-testing UI layouts. |
| **Marketing & Growth (6)** | `competitors`, `copywriting`, `directory-submissions`, `programmatic-seo`, `schema`, `seo-audit` | Building competitor comparison pages, conversion copy, directory submissions, or technical SEO. |

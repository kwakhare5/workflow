# Playbook — Master Agent Workflow & Skill Reference Manual

This playbook is the primary operational manual for pair programming, slash commands, craft skills, and lifecycle management. It covers all 60 active craft skills, phase-by-phase execution workflows, and universal path architectures.

---

## 1. Core Principles

- **Crisp & Direct**: Zero conversational fluff. Direct fragments for status/chat. Full structured markdown & complete code for plans, diffs, and reviews.
- **Ponytail (YAGNI)**: Minimum code. Prefer standard library and existing dependencies. Zero speculative abstractions or premature layers.
- **Surgical**: Touch only what the request strictly requires.
- **Think First**: State assumptions explicitly. Ask when unclear. Never make silent architectural choices.
- **Build in Public**: Use `/build-in-public` for high-converting indie hacker dev logs, 1-click copyable X posts, and streak maintenance.

---

## 2. Complete Command & Skill Index by Phase (60 Active Skills)

### Phase 1 — Planning, Research & Specifications (14 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/grill` / `/grill-me` | `grill-with-docs` | Relentless requirements interview → drafts `implementation_plan.md` → waits for approval. |
| `/to-spec` | `to-spec` | Converts conversation thread or feature idea into a formal technical specification. |
| `/to-issues` / `/to-tickets` | `to-tickets` | Breaks approved plan into a tracer-bullet task list in `task.md`. |
| `/research` | `research` | Systematic primary-source investigation against high-trust docs with citations. |
| `/scrape` | `scrapling-official` | Stealth web scraping, Cloudflare Turnstile bypass, and structured page extraction. |
| `/prototype` | `prototype` | Builds throwaway prototype spikes to answer design/feasibility questions before production code. |
| `/wayfinder` | `wayfinder` | Plans massive multi-session epics that span beyond a single agent context. |
| `/ask-matt` | `ask-matt` | Meta-router to diagnose which engineering skill or flow fits your current situation. |
| `/doc-coauthoring` | `doc-coauthoring` | Structured workflow for co-authoring RFCs, architecture specs, and documentation. |
| `/domain` | `domain-modeling` | Builds and sharpens project Ubiquitous Language, domain models, and ADRs. |
| `/codebase-design` | `codebase-design` | Deep vs. shallow module design principles (Ousterhout's *Philosophy of Software Design*). |
| `/arch` | `software-architecture` | Clean architecture boundaries, module separation, and DDD service design. |
| `/graphify` | `graphify` | Turns codebase/docs into a persistent visual knowledge graph with God-nodes analysis. |
| `/teach` | `teach` | Matt Pocock workspace tutor: interactive HTML lessons, MISSION.md, spaced retrieval. |

---

### Phase 2 — Implementation & Testing (4 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/implement` | `implement` | Executes `task.md` checklist item-by-item: Schema → API → UI. |
| `/tdd` | `tdd` | Strict test-driven development loop (red-green-refactor) with tight test seams. |
| `/worktree` | `using-git-worktrees` | Isolated workspace branches and git worktrees for parallel tasks. |
| `/subagents` | `dispatching-parallel-agents` | Spawns parallel research and testing subagents for multi-file surveys. |

---

### Phase 3 — Debugging, Anti-Bloat & Review (9 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/diagnose` | `diagnosing-bugs` | 6-phase scientific debugging loop (requires runnable red repro command in Phase 1). |
| `/review` | `code-review` | Parallel review verifying Standards and Spec correctness. |
| `/cleanup` | `codebase-cleanup` | Automated purge of dead exports, unreferenced packages (`knip`), and unused code. |
| `/ponytail` | `ponytail` | Master minimalism engine: diff reviews (`/ponytail diff`), whole-repo scans (`/ponytail audit`). |
| `/arch-improve` | `improve-codebase-architecture` | Scans codebase for deepening opportunities and architectural debt. |
| `/merge-resolve` | `resolving-merge-conflicts` | Interactive 3-way git merge/rebase conflict resolver. |
| `/triage` | `triage` | Moves issues and PRs through a structured triage state machine. |
| `/retro` | `retro` | Conducts a retrospective on a completed coding session. |
| `/handoff` | `handoff` | Compacts session context into a structured handoff document for future sessions. |

---

### Phase 4 — Frontend Design, Aesthetics & Motion (8 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/impeccable [cmd]` | `impeccable` | Master UI/UX polish suite (13 sub-commands: `craft`, `polish`, `audit`, `bolder`, `quieter`, `harden`, `onboard`, `animate`). |
| `/frontend-design` | `frontend-design` | Builds new UI components, dashboards, and landing pages from scratch. |
| `/apple-design` | `apple-design` | Apple Human Interface Guidelines: continuous squircle corners, SF Pro optical scales, depth & blur. |
| `/emil` | `emil-design-eng` | Emil Kowalski UI philosophy: micro-interactions, Apple-tier spring curves, gestures, and tactile feedback. |
| `/taste` | `taste-skill` | Anti-slop aesthetic director with brutalist, minimalist, soft, and brandkit visual modes. |
| `/shadcn` | `shadcn` | Components, registries, and composition patterns for shadcn/ui. |
| `/tailwind` | `tailwind-patterns` | Modern Tailwind CSS v4 patterns, container queries, and theme tokens. |
| `/threejs` | `threejs-fundamentals` | Three.js 3D scene setup, cameras, WebGL renderers, and coordinate systems (Forest project). |

#### Sub-commands for `/impeccable`:
- `init`: Setup `PRODUCT.md` and `DESIGN.md`.
- `craft [feature]`: End-to-end shape, design, and build of a feature.
- `shape [feature]`: UX/UI wireframe planning prior to code.
- `document`: Reverse-engineer `DESIGN.md` from code.
- `critique`: Heuristic design review with scoring.
- `audit`: Accessibility, responsiveness, and performance audit.
- `polish`: Typography, spacing, and color refinement.
- `bolder` / `quieter`: Adjust design intensity and visual noise.
- `harden`: Production edge cases (empty states, errors, skeletons).
- `onboard`: First-run onboarding paths.
- `animate`: Transition curves and layout springs.

---

### Phase 5 — Backend, Databases & Infrastructure (16 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/api-patterns` | `api-patterns` | REST vs tRPC vs GraphQL decision matrix, pagination, error schemas, rate limits. |
| `/nextjs` | `nextjs-best-practices` | App Router architecture, Server Components (RSC), Server Actions, and caching. |
| `/react-perf` | `vercel-react-best-practices` | React performance optimization and bundle reduction. |
| `/typescript` | `typescript-best-practices` | Strict type safety, ESM, and modern async patterns. |
| `/nodejs` | `nodejs-best-practices` | Node.js architecture, streams, and runtime security. |
| `/python` | `python-best-practices` | Modern Python 3.12+, PEP 8 style, strict typing, and Ruff formatting. |
| `/fastapi` | `fastapi-best-practices` | Async FastAPI backends, Pydantic v2 schemas, and dependency injection. |
| `/pytest` | `python-testing-patterns` | Pytest fixtures, mocking, parametrization, and coverage strategies. |
| `/drizzle` | `drizzle-orm-expert` | Type-safe schema design, relational queries, migrations, and serverless DBs. |
| `/prisma` | `prisma-expert` | Prisma schema modeling, relations, query optimization, and typed SQL. |
| `/supabase` | `supabase` | Supabase Database, Auth, Edge Functions, RLS security policies, and Realtime. |
| `/postgres` | `postgres-best-practices` | Postgres query tuning, indexing strategies, and connection pooling. |
| `/docker` | `docker-expert` | Docker containerization, multi-stage builds, and Docker Compose architectures. |
| `/ci-cd` | `github-actions-templates` | Production GitHub Actions CI/CD workflows for testing, build, and deploy. |
| `/cloudflare` | `cloudflare-suite` | Workers, Agents SDK, Durable Objects, D1/KV/R2, and Zero Trust. |
| `/mcp` | `mcp-builder` | Model Context Protocol server builder for Python and TypeScript. |

---

### Phase 6 — Marketing, Growth & Social (3 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/marketing` | `marketing-suite` | Master growth suite housing 44 playbooks: Hormozi offers, Ogilvy copywriting, CRO, pricing, ads, AI SEO, and launch roadmaps. |
| `/build-in-public` | `build-in-public` | Mines real journal and git evidence into proof-led X and LinkedIn posts, selects a weekly main project, drafts grounded replies, and checks every draft for one tension, one artifact, honest metrics, and an unfinished truth. |
| `/no-slop` | `no-ai-slop` | Human copyeditor: strips banned AI words, corporate speak, and false drama. |

#### Sub-commands for `/build-in-public`:
- `/build-in-public`: Best grounded X drafts from the current project's evidence.
- `/build-in-public weekly`: Score active projects and select one main story plus an optional secondary.
- `/build-in-public stuck`: Draft from a real failure, ambiguity, deletion, or unresolved state without inventing progress.
- `/build-in-public x`: Render selected evidence for X.
- `/build-in-public linkedin`: Render selected evidence for LinkedIn.
- `/build-in-public both`: Produce separate X and LinkedIn versions from the same evidence card.
- `/build-in-public reply "<post text or link>"`: Draft grounded reply options from the actual target post and real project evidence.
- `/build-in-public review <draft>`: Score the draft with the v4 rubric and rewrite any result below 8/10 or any hard-rule failure.
- `/build-in-public thread`: Use one tension for a real sequence or postmortem.

---

### Phase 7 — Ship, Security & Documentation (6 Skills)
| Trigger | Skill | What It Does |
| :--- | :--- | :--- |
| `/git-commit` | `git-commit` | Stages changes logically, analyzes diffs, and drafts conventional commit messages. |
| `/deploy` | `deploy-to-vercel` | Deploys site/app directly to Vercel (interactive or token-based). |
| `/web-perf` | `web-perf` | Core Web Vitals profiling (LCP, INP, CLS) and render bottleneck analysis. |
| `/security-audit` | `web-security-testing` | OWASP Top 10 security audit workflow for web applications. |
| `/readme` | `readme` | Generates exhaustive, absurdly thorough project `README.md` documentation. |
| `/meta` | `writing-for-agents` | Authoring guide for creating agent skills, rules, and system prompts. |

---

## 3. Global File Map & Storage Hierarchy

There are no mystery directories. The system paths are strictly defined below:

| Purpose | Active Primary Path | Mirror / Backup Path |
| :--- | :--- | :--- |
| **Global Rules (`AGENTS.md`)** | `~/.gemini/config/AGENTS.md` | `~/.agents/AGENTS.md`, `~/.AGENTS.md`, `D:\workflow\AGENTS.md` |
| **Global Playbook (`playbook.md`)** | `~/.gemini/config/playbook.md` | `~/.agents/playbook.md`, `D:\workflow\playbook.md` |
| **Active Global Skills (60 Skills)** | `~/.gemini/config/skills/` | `~/.gemini/skills/`, `~/.agents/skills/`, `D:\workflow\skills/` |
| **On-Demand Skill Packs** | `~/.agents/skill-packs/` | `D:\workflow\skill-packs/` |
| **Project Rules & Context** | `./.agents/AGENTS.md` | `./CONTEXT.md`, `./JOURNAL.md` |

### On-Demand Domain Packs Directory (`~/.agents/skill-packs/`):
- 📁 `video-motion-pack/`: `remotion-suite`, `animation-vocabulary`, `improve-animations`
- 📁 `devops-pack/`: `vercel-cli-with-tokens`
- 📁 `documents-pack/`: `pdf`, `xlsx`, `docx-official`
- 📁 `scraping-pack/`: `scrapling-official`
- 📁 `workflow-pack/`: `request-refactor-plan`
- 📁 `artifacts-pack/`: `web-artifacts-builder`
- 📁 `social-pack/`: `x-ghostwriter-indie-aidev-twitter-niche`

---

## 4. Session Lifecycle & Invariants

1. **Session Start**: Say what you want to work on. The agent reads `.agents/AGENTS.md` and `CONTEXT.md` automatically and proceeds immediately with your prompt.
2. **Feature Planning**: Run `/grill` on any non-trivial task before writing code.
3. **Session End**: Big changes automatically log 3–5 bullets to `JOURNAL.md` and update `SESSION RESUME`.

# Playbook — Master Agent Workflow & Skill Reference Manual

This playbook is the primary operational manual for pair programming, slash commands, craft skills, and lifecycle management. All **95 curated elite skills** reside uncompressed and standalone directly in the global active directory (`~/.gemini/config/skills/`), with exact bit-for-bit mirrors across `~/.gemini/skills/`, `~/.agents/skills/`, and `~/.codex/skills/`.

---

## 1. Core Principles

- **Crisp & Direct**: Concise, high-signal technical prose. No conversational filler or hollow apologies. Full structured markdown & complete code for plans, diffs, and reviews.
- **Ponytail (YAGNI)**: Minimum code. Prefer standard library and existing dependencies. Zero speculative abstractions or premature layers.
- **Surgical Edits**: Touch only what the request strictly requires. Never reformat, re-indent, or refactor code outside the immediate scope of the change. Preserve existing comments, styles, and naming conventions.
- **Output Discipline**: Never dump raw terminal output > 50 lines into context. Cap command outputs with `Select-Object -First 30` or pipe large logs to scratch files.
- **Execution Proof**: Never declare any task complete without running the verification command in the terminal and proving exit code 0 on the actual assertions.
- **Build in Public**: Use `/build-in-public` for high-converting indie hacker dev logs, 1-click copyable X posts, and streak maintenance.

---

## 2. Universal Global Core Commands

Active directly in global memory (`~/.gemini/config/skills/`, mirrored to `~/.gemini/skills/`, `~/.agents/skills/`, `~/.codex/skills/`):

| Trigger / Command | Skill | Domain & Purpose |
| :--- | :--- | :--- |
| `/taste` | `taste-skill` | Anti-slop frontend art direction, typography pairings, and calibrated palettes. |
| `/emil` | `emil-design-eng` | Tactile micro-interactions, `scale(0.97)` press, popover origins, spring easing. |
| `/apple` | `apple-design` | Fluid motion, momentum inheritance, 1:1 direct manipulation, interruptibility. |
| `/tdd` | `tdd` | System-first invariant testing & failure-mode enumeration (anti-test slop). |
| `/diagnose` | `diagnosing-bugs` | 6-phase scientific debugging loop (requires runnable red repro command first). |
| `/e2e` | `e2e-testing` | Production Playwright E2E testing engine with verifiable artifacts. |
| `/review` | `code-review` | Parallel review verifying Standards and Spec correctness. |
| `/cleanup` | `codebase-cleanup` | Automated purge of dead exports, unreferenced packages (`knip`), and unused code. |
| `/ponytail` | `ponytail` | Master minimalism engine: diff reviews (`/ponytail diff`), repo scans (`/ponytail audit`). |
| `/arch` | `software-architecture` | Clean architecture boundaries, module separation, and DDD service design. |
| `/codebase-design` | `codebase-design` | Deep vs. shallow module design principles (Ousterhout's *Philosophy of Software Design*). |
| `/domain` | `domain-modeling` | Builds and sharpens project Ubiquitous Language, domain models, and ADRs. |
| `/to-spec` | `to-spec` | Converts conversation thread or feature idea into a formal technical specification. |
| `/git-commit` | `git-commit` | Stages changes logically, analyzes diffs, and drafts conventional commit messages. |
| `/worktree` | `using-git-worktrees` | Isolated workspace branches and git worktrees for parallel tasks. |
| `/build-in-public` | `build-in-public` | Mines real journal/git evidence into proof-led X and LinkedIn posts with anchor reply engine. |
| `/readme` | `readme` | Generates exhaustive, absurdly thorough project `README.md` documentation. |

---

## 3. High-Craft Domain Stacks (Flat Active Directory)

All 95 elite skills are active globally. The agent reads the exact standalone skill required for the task without pack loaders or stub indirection:

| Domain | Key Standalone Skills | Best For |
| :--- | :--- | :--- |
| **Frontend Craft & Anti-Slop** | `taste-skill`, `emil-design-eng`, `apple-design`, `shadcn`, `tailwind-patterns`, `impeccable`, `react-ui-patterns`, `react-view-transitions` | Bespoke styling, micro-interactions, gesture dynamics, design polish. |
| **Fullstack Web** | `nextjs-best-practices`, `react-best-practices`, `react-state-management`, `web-perf`, `deploy-to-vercel`, `vercel-optimize` | Next.js 15, React performance, serverless optimization, bundle minimization. |
| **Backend & Databases** | `fastapi-best-practices`, `drizzle-orm-expert`, `prisma-expert`, `postgres-best-practices`, `supabase`, `trpc-fullstack`, `stripe-integration` | Python FastAPI, TypeScript ORMs, Supabase auth/RLS, payment infrastructure. |
| **Cloudflare & DevOps** | `cloudflare`, `workers-best-practices`, `durable-objects`, `turnstile-spin`, `wrangler`, `agents-sdk`, `docker-expert`, `github-actions-templates` | Cloudflare Workers, Turnstile bot defense, durable agents, CI/CD pipelines. |
| **Growth & Copywriting** | `product-marketing`, `copywriting`, `copy-editing`, `cro`, `launch`, `pricing`, `offers`, `ai-seo`, `seo-audit`, `free-tools`, `emails` | Positioning, high-converting copy, GEO citations, Product Hunt launches, drip emails. |
| **Media, 3D & Automation** | `scrapling-official`, `apify-ultimate-scraper`, `threejs-fundamentals`, `canvas-design`, `image-to-code-skill`, `pdf`, `remotion-best-practices`, `remocn` | Stealth scraping, Three.js canvas, image-to-code, programmatic video. |

---

## 4. Global File Map & Storage Hierarchy

| Purpose | Active Primary Path | Mirror / Backup Path |
| :--- | :--- | :--- |
| **Global Rules (`AGENTS.md`)** | `~/.gemini/config/AGENTS.md` | `~/.agents/AGENTS.md`, `~/.codex/AGENTS.md`, `templates\.agents\AGENTS.md` |
| **Global Flat Active Skills (95 Skills)** | `~/.gemini/config/skills/` | `~/.gemini/skills/`, `~/.agents/skills/`, `~/.codex/skills/` |
| **Archived Purged Skills (129 Skills)** | `<repo>/archive/purged_skills/` | Safely preserved offline |
| **Git Repository Backup** | `kwakhare5/workflow` | Version control backup |



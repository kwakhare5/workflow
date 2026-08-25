# Playbook — Agent Coding Workflow & Reference Manual

This playbook is the primary reference manual for managing and executing development tasks. Use it to find the correct slash commands and understand the project lifecycle.

---

## 1. Core Principles

- **Crisp & Direct**: Zero conversational fluff. Direct fragments for status/chat. Full structured markdown & complete code for plans, diffs, and reviews.
- **Ponytail**: YAGNI. Minimum code. Prefer standard library and existing dependencies. No speculative features.
- **Surgical**: Touch only what the request requires.
- **Think first**: State assumptions. Ask if unclear. Never decide silently.
- **Tweets**: Use the `/build-in-public` skill for voice-matched indie hacker posts.

---

## 2. Command Reference by Phase

The agent will suggest the next command at the end of each phase response based on your context.

### Phase 1 — Planning & Prep

| Command | What it does |
| :--- | :--- |
| `/grill` | Relentless requirements interview (`grill-with-docs`) → drafts `implementation_plan.md` → waits for approval. |
| `/to-issues` / `/to-tickets` | Breaks the approved plan into a tracer-bullet task list in `task.md`. |
| `/to-spec` | Converts the current conversation thread into a clean specification. |
| `/research` | Gathers external documentation/APIs and files a cited summary in the repo (`dispatching-parallel-agents`). |
| `/doc-coauthoring` | Structured workflow for co-authoring technical specs and docs. |

---

### Phase 2 — Build & Implementation

| Command | What it does |
| :--- | :--- |
| `/implement` | Executes the `task.md` checklist item-by-item: Schema → API → UI. |
| `/tdd` | Test-driven development loop for complex logic (red-green-refactor). |
| `/using-git-worktrees` | Isolated workspace branches and worktrees for parallel tasks. |

---

### Phase 3 — Debug & Review

| Command | What it does |
| :--- | :--- |
| `/diagnose` | Rigorous 6-phase scientific isolation loop for hard bugs (repro-first). |
| `/review` | Reviews code changes against spec (runs Standards + Spec checks in parallel via `code-review`). |
| `/ponytail-review` | Reviews a diff exclusively for over-engineering and suggests dead code deletion. |
| `/ponytail-audit` | Whole-repo over-engineering scan. |
| `/codebase-cleanup` | Safely purges dead code, unreferenced exports, and unused packages. |

---

### Phase 4 — Design & Polish (UI & Video)

| Command | What it does |
| :--- | :--- |
| `/impeccable [subcommand]` | Master command to iterate, audit, and polish existing frontend UI. |
| `/taste` (`taste-skill`) | Anti-slop frontend aesthetic director (brutalist, minimalist, soft, brandkit). |
| `/frontend-design` | Build clean components, dashboards, and landing pages from scratch. |
| `/apple-design` | Apple-tier interaction physics, gestures, optical typography, and fluid motion. |
| `/emil-design-eng` | Micro-interactions, spring physics, and invisible UI details. |
| `/animation-vocabulary` | Reverse-lookup glossary for UI animations. |
| `/improve-animations` | Audits existing animations and produces a prioritized fix roadmap. |
| `/remocn` | Copy-paste React video animation components and UI primitives. |
| `/remotion` (`remotion-suite`) | Scaffolds, previews, and renders programmatic videos with React. |

#### Nested Sub-commands for `/impeccable`:

| Sub-command | Purpose |
| :--- | :--- |
| `init` | Set up design context files (`PRODUCT.md` and `DESIGN.md`). |
| `craft [feature]` | Shape, design, and build a new feature end-to-end. |
| `shape [feature]` | Plan UX/UI wireframe structure before writing code. |
| `document` | Scan existing code to generate a new `DESIGN.md`. |
| `critique` | UX heuristic design review with visual scoring. |
| `audit` | Check technical criteria (accessibility, mobile responsiveness, load speed). |
| `polish` | Master refiner (clean up spacing, typography, and colors in one go). |
| `bolder` | Amplify safe, flat, or bland designs with stronger contrast and identity. |
| `quieter` | Reduce visual noise / tone down busy and overstimulating layouts. |
| `harden` | Production readiness (adds empty states, loading indicators, error boundaries). |
| `onboard` | Design onboarding paths and first-run empty states. |
| `animate` | Add transitions and spring animations. |
| `live` | Open variant Mode in browser for visual adjustments. |

---

### Phase 5 — Commit & Ship

| Command | What it does |
| :--- | :--- |
| `/git-commit` | Stages changes logically, analyzes diffs, and drafts conventional commit messages. |
| `/deploy-to-vercel` | Deploys site/app directly to Vercel (production or preview modes). |
| `/vercel-cli-with-tokens` | Non-interactive Vercel CLI deploy using environment tokens. |
| `/cleanup` | Safely purges dead code, unreferenced exports, and unused packages. |
| `/web-perf` | Core Web Vitals profiling (LCP, INP, CLS) and render bottleneck analysis. |
| `/web-security-testing` | OWASP security audit on web applications. |

---

### Phase 6 — Growth, Marketing & Acquisition

| Command | What it does |
| :--- | :--- |
| `/marketing` (`marketing-suite`) | Master growth suite housing marketing plans, copywriting, CRO, offers, pricing, launch. |
| `/marketing-plan` | Full growth marketing roadmap tailored to stage, audience, and ops stack. |
| `/marketing-council` | Consults 12 legendary advisors (Ogilvy, Hormozi, Godin, Sutherland, etc.). |
| `/no-ai-slop` / `/no-slop` | Sharp human copyeditor: strips banned AI words and false drama. |
| `/build-in-public` | Drafts voice-matched indie hacker posts based on shipped commits. |
| `/scrapling-official` | Web scraping spider with anti-bot bypass and JS rendering. |
| `/copywriting` | High-converting landing page, headline, and email copy (inside `marketing-suite`). |
| `/pricing` & `/offers` | Value equation pricing packaging, tiers, bonuses, and guarantee design. |
| `/cro` & `/ab-testing` | Funnel optimization, checkout improvements, and split test architecture. |

---

### Phase 7 — Infrastructure & Tech Stacks

| Command | What it does |
| :--- | :--- |
| `/cloudflare` (`cloudflare-suite`) | Workers, Agents SDK, Durable Objects, D1/KV/R2, Zero Trust. |
| `/supabase` | Supabase Database, Auth, Edge Functions, RLS, and Postgres optimization. |
| `/postgres` (`postgres-best-practices`) | Schema indexing, query tuning, and connection pooling. |
| `/graphify` | Turns codebase/docs into a persistent knowledge graph with god nodes & visual report. |
| `/pdf` | Reads, extracts, converts, merges, and manipulates PDF documents. |
| `/xlsx` | Reads, edits, converts, and creates Excel spreadsheets. |


---

## 3. How to Start a Session

Just say what you want to work on. AI automatically reads context files first.

**Example:**

> "Let's work on the onboarding flow for Grocer AI"

AI will: read `.agents/AGENTS.md` → read `CONTEXT.md` → read SESSION RESUME → confirm context → ask what specifically.

**If starting a brand new project:**

> "I'm starting [Project Name]. Read .agents/AGENTS.md. Then /grill"

---

## 4. Rule Overrides

If your request conflicts with a LOCAL RULE, AI will ask:

> "⚠️ This conflicts with local rule: `[rule]`. Override it? [yes/no]"

- Say **"yes"** → AI proceeds, ignores the rule for this task.
- Say **"no"** → AI finds an approach that respects the rule.
- Say **"update the rule"** → AI updates LOCAL RULES in `.agents/AGENTS.md` and proceeds.

---

## 5. What Each File Is For

| File | Location | When AI reads it | You fill it |
| :--- | :--- | :--- | :--- |
| `AGENTS.md` (Global) | Your agent's global config folder — see §5.1 map | Every session, automatic | Set once, never touch |
| `AGENTS.md` (Project) | `.agents/AGENTS.md` | Every session, automatic | Sections 1-4 at project start |
| `playbook.md` | Global config folder — `~/.agents/playbook.md` (Gemini: `~/.gemini/config/playbook.md`) | You read it | Your reference, keep open |

| `CONTEXT.md` | Project root | Every session, automatic | Run /grill at project start |
### 5.1. Where Things Live Per Path (the map)

There is no hidden master folder — the files below ARE the master. The global rules file is kept in sync across standard copies (`~/.AGENTS.md`, `~/.config/opencode/AGENTS.md`, `~/.gemini/config/AGENTS.md`); playbook across (`~/.agents/playbook.md`, `~/.gemini/config/playbook.md`). Update one copy, then copy it to the others — never edit just one and forget the rest.

| Target Path | Global rules | Global skills | Project rules (auto-read) |
|---|---|---|---|
| Global Config | `~/.gemini/config/AGENTS.md` | `~/.gemini/config/skills/`, `~/.gemini/skills/` | `.agents/AGENTS.md` |
| Standard Agent Path | `~/.AGENTS.md` | `~/.agents/skills/` | `.agents/AGENTS.md` |
| Local Backup Path | `~/agent-config/AGENTS.md` | `~/agent-config/skills/` | `.agents/AGENTS.md` |

- `~/.agents/skills/` is the cross-tool standard where global skills are installed.
- Project-only skills go in `.agents/skills/`.
- Slash triggers follow standard syntax (`/grill`, `/implement`, `/review`).

---

## 5.2. Skills Management (CLI)

The `npx skills` command serves as the package manager for community and customized agent skills. Key commands:

- **Search Community Skills**:
  ```bash
  npx skills find
  ```
- **Install Remote Skill (Copied Locally)**:
  ```bash
  npx skills add vercel-labs/agent-skills --copy
  ```
- **Install Remote Skill (Linked)**:
  ```bash
  npx skills add vercel-labs/agent-skills
  ```
- **Sync/Update All Skills**:
  ```bash
  npx skills update
  ```
- **Lockfile Check**: Ensure `skills-lock.json` is committed to git. It locks the exact git commits/hashes of installed skills to prevent breaking changes.
- **Where Skills Land**: installed skill folders go to your global skills path (`~/.agents/skills/` or `~/.gemini/config/skills/`) or project `./skills/` — plain folders that work across any standard environment.

## 5.3. Configuration Assets

| File | Purpose | Why We Keep It |
| :--- | :--- | :--- |
| `.editorconfig` | Enforces spacing (2-space tabs), trailing newlines, and Unix LF line endings. | Prevents formatting churn and dirty git diffs when code is edited on different OS/IDE environments. |
| `.prettierrc.json` | Style configuration for the Prettier formatter. | Standardizes quotes, semi-colons, and trailing commas across all JavaScript/TypeScript files. |
| `skills-lock.json` | Lockfile recording the specific hashes of installed skills. | Ensures consistent rulesets are loaded when deploying or reproducing the workspace on another machine. |

---

## 6. New Project Bootstrap

```powershell
$t = "$env:USERPROFILE\.agents\templates"; $d = "D:\YourProjectName"
New-Item -ItemType Directory -Force -Path "$d\.agents"
@("CONTEXT.md","ARCHITECTURE.md","JOURNAL.md",".editorconfig",".prettierrc.json") | ForEach-Object { Copy-Item "$t\$_" "$d\$_" -Force }
Copy-Item "$t\.agents\AGENTS.md" "$d\.agents\AGENTS.md" -Force
```

Then:

1. Fill `.agents/AGENTS.md` Sections 1-4 (stack, commands, local rules).
2. First session: `"I am starting [Project Name]. Read .agents/AGENTS.md. Then /grill"`
3. Commit: `git commit -m "feat: initial setup"`

---

## 7. The 3 Habits That Matter

1. **`/grill` before every non-trivial feature** — No code until AI interviews you.
2. **Let AI start the session** — Just say what you want to work on. It reads context automatically.
3. **Update SESSION RESUME at session end on big changes** — Your memory across sessions.

---

## 8. Troubleshooting Guide

When a slash command or script invocation fails, follow these steps to resolve:

### 1. Script Location & Path Errors
* **Problem**: The agent complains a script path does not exist (e.g. a skill hook or script fails to resolve).
* **Fix**: Remind the agent that customizations live in the global skills folder (`~/.agents/skills/` — read by opencode/Claude Code/Freebuff; `~/.gemini/config/skills/` for Gemini CLI) and `.agents/skills/` (project-local). Have it check both paths (see §5.1).

### 2. Missing npm Dependencies
* **Problem**: Running a skill command throws `Error: Cannot find module` or similar package import failure.
* **Fix**: Ensure `npm install` has been run in the project root. For Vercel skills, make sure `skills-lock.json` matches and run `npx skills update` to pull down dependencies.

### 3. Windows Execution Policy Blocks Scripts
* **Problem**: Executing `.sh` or `.ps1` hooks fails due to execution policy restrictions.
* **Fix**: Propose running commands through PowerShell explicitly bypassing restrictions (e.g., `powershell -ExecutionPolicy Bypass -File path/to/script.ps1`).

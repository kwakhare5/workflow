# Playbook — Agent Coding Workflow & Reference Manual

This playbook is the primary reference manual for managing and executing development tasks. Use it to find the correct slash commands and understand the project lifecycle.

---

## 1. Core Principles

- **Caveman**: Zero fluff. Short fragments. No pleasantries.
- **Ponytail**: YAGNI. Minimum code. Prefer existing dependencies. No speculative features.
- **Surgical**: Touch only what the request requires.
- **Think first**: State assumptions. Ask if unclear. Never decide silently.
- **Tweets**: Use the `/build-in-public` skill for voice-matched indie hacker posts.

---

## 2. Command Reference by Phase

The agent will suggest the next command at the end of each phase response based on your context.

### Phase 1 — Planning & Prep

| Command | What it does |
| :--- | :--- |
| `/ask-matt` | Routes you to the right skill if you are confused which one to use. |
| `/grill` | Relentless requirements interview → drafts `implementation_plan.md` → waits for approval. |
| `/to-spec` | Converts the current conversation thread into a clean specification. |
| `/to-tickets` | Breaks the approved plan into a `task.md` checklist. |
| `/wayfinder` | Maps a huge, foggy project across multiple sessions. |
| `/research` | Gathers external documentation/APIs and files a cited summary in the repo. |
| `/prototype` | Builds throwaway UI or logic to explore design questions. |
| `/pick-ui-library` | Reviews UI components and decides which npm component library to install. |

---

### Phase 2 — Build & Implementation

| Command | What it does |
| :--- | :--- |
| `/implement` | Executes the `task.md` checklist item-by-item: Schema → API → UI. |
| `/tdd` | Test-driven development loop for complex logic (red-green-refactor). |
| `/guard` | Full safety mode: warns on destructive commands and locks edits to a directory. |
| `/handoff` | Compresses context into a static handoff file for the next session. |
| `/claude-handoff` | Hands off live execution to a fresh background agent mid-session. |

---

### Phase 3 — Debug & Review

| Command | What it does |
| :--- | :--- |
| `/diagnose` | Rigorous 6-phase scientific isolation loop for hard bugs (repro-first). |
| `/review` | Reviews code changes against spec (runs Standards + Spec checks in parallel). |
| `/triage` | Manages and prioritizes GitHub issues/PRs. |
| `/improve-codebase-architecture` | Scans codebase for deepening opportunities and generates a visual HTML report. |
| `/ponytail-review` | Reviews a diff exclusively for over-engineering and suggests dead code deletion. |
| `/health` | Codebase quality metrics dashboard. |
| `/benchmark` | Runs regression performance tests. |

---

### Phase 4 — Design & Polish (UI & Video)

| Command | What it does |
| :--- | :--- |
| `/impeccable [subcommand]` | Master command to iterate, audit, and polish existing frontend UI. |
| `/taste-skill` / `/taste` | Anti-slop frontend aesthetic director (brutalist, minimalist, soft, brandkit). |
| `/emil-design-eng` | Apple-tier interaction physics, gestures, and fluid motion consulting. |
| `/frontend-design` | Build clean components, dashboards, and landing pages from scratch. |
| `/find-animation-opportunities` | Scans codebase for elements that should animate but don't. |
| `/improve-animations` | Audits existing animations and produces a prioritized fix roadmap. |
| `/review-animations` | Reviews animation code against Emil Kowalski's quality standards. |
| `/remocn` | Copy-paste React video animation components and UI primitives. |
| `/remotion-create` | Scaffolds and builds programmatic video compositions with React. |
| `/remotion-studio` | Launches Remotion visual studio preview server. |
| `/remotion-render` | CLI video rendering, still frame captures, and transparent alpha exports. |

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
| `/using-git-worktrees` | Manages isolated git worktrees for parallel branch development. |
| `/ship` | Releases code: runs tests, bumps version, and updates changelog. |
| `/deploy-vercel` | Deploys site/app directly to Vercel (production or preview modes). |
| `/vercel-token-deploy`| Non-interactive Vercel CLI deploy using environment tokens. |
| `/qa` | Automated Playwright browser tests on your staging URL. |
| `/cleanup` | Safely purges dead code, unreferenced exports, and unused packages. |
| `/setup-pre-commit` | Sets up Husky pre-commit hooks (Prettier formatting, type checks, tests). |

---

### Phase 6 — Growth, Marketing & Acquisition

| Command | What it does |
| :--- | :--- |
| `/marketing-plan` | Full growth marketing roadmap tailored to stage, audience, and ops stack. |
| `/marketing-council` | Consults 12 legendary advisors (Ogilvy, Hormozi, Godin, Sutherland, etc.). |
| `/no-ai-slop` / `/no-slop` | Sharp human copyeditor: strips banned AI words and false drama. |
| `/launch` | Full launch strategy + Product Hunt & social asset generation. |
| `/build-in-public` | Drafts voice-matched indie hacker posts based on shipped commits. |
| `/ai-seo` & `/seo-audit` | Optimizes site for AI search engines (Perplexity/ChatGPT) and Google SERPs. |
| `/copywriting` | High-converting landing page, headline, and email copy. |
| `/pricing` & `/offers` | Value equation pricing packaging, tiers, bonuses, and guarantee design. |
| `/cro` & `/ab-testing` | Funnel optimization, checkout improvements, and split test architecture. |
| `/scrapling-official` | Web scraping spider with anti-bot bypass and JS rendering. |
| `/cold-email` & `/referrals` | Outbound campaigns, prospecting lists, and viral referral mechanics. |

---

### Phase 7 — Utility & Meta Skills

| Command | What it does |
| :--- | :--- |
| `/graphify` | Turns codebase/docs into a persistent knowledge graph with god nodes & visual report. |
| `/dispatching-parallel-agents` | Structured subagent orchestration with task boundaries. |
| `/wait-what` | Re-explains the last agent step in plain English if it didn't land. |
| `/teach` | Multiphase concept tutoring. |
| `/writing-for-agents` | Reference for writing clean documentation and custom rules. |
| `/git-guardrails` | Block dangerous git commands (push, reset --hard, etc.) in agent environments. |
| `/code-tour` | Creates CodeTour `.tour` files for step-by-step codebase walkthroughs. |
| `/pdf` | Reads, extracts, converts, merges, and manipulates PDF documents. |
| `/xlsx` | Reads, edits, converts, and creates Excel spreadsheets. |

---

## 3. How to Start a Session

Just say what you want to work on. AI automatically reads context files first.

**Example:**

> "Let's work on the onboarding flow for PreFill AI"

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

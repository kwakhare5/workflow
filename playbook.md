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

### Phase 4 — Design & Polish (UI)

| Command | What it does |
| :--- | :--- |
| `/impeccable [subcommand]` | Master command to iterate, audit, and polish existing frontend UI. |
| `/emil-design-eng` | Apple-tier interaction and motion consulting. |
| `/find-animation-opportunities` | Scans codebase for elements that should animate but don't. |
| `/improve-animations` | Audits existing animations and produces a prioritized fix roadmap. |
| `/review-animations` | Reviews animation code against Emil Kowalski's quality standards. |

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
| `/ship` | Releases code: runs tests, bumps version, and updates changelog. |
| `/deploy-vercel` | Deploys site/app directly to Vercel (production or preview modes). |
| `/vercel-token-deploy`| Non-interactive Vercel CLI deploy using environment tokens. |
| `/qa` | Automated Playwright browser tests on your staging URL. |
| `/cleanup` | Safely purges dead code, unreferenced exports, and unused packages. |
| `/setup-pre-commit` | Sets up Husky pre-commit hooks (Prettier formatting, type checks, tests). |

---

### Phase 6 — Growth & Launch

| Command | What it does |
| :--- | :--- |
| `/launch` | Full launch strategy + Product Hunt asset generation. |
| `/build-in-public` | Drafts voice-matched indie hacker posts based on shipped commits. |
| `/seo-audit` | Health check for meta tags and Core Web Vitals. |
| `/copywriting` | Writes or rewrites landing page and marketing copy. |
| `/pricing` | Strategy for pricing packaging, tiers, and willingness to pay. |
| `/analytics` | Sets up tracking pipelines (GA4, Mixpanel, Segment). |
| `/emails` | Drafts email drip campaigns and post-launch nurture sequences. |
| `/cro` | Conversion rate optimization for landing pages and checkout forms. |
| `/ab-testing` | Plans, designs, and runs A/B split tests. |
| `/scrapling-official` | Web scraping spider with anti-bot bypass and JS rendering. |

---

### Phase 7 — Utility & Meta Skills

| Command | What it does |
| :--- | :--- |
| `/wait-what` | Re-explains the last agent step in plain English if it didn't land. |
| `/teach` | Multiphase concept tutoring. |
| `/writing-for-agents` | Reference for writing clean documentation and custom rules. |
| `/git-guardrails` | Block dangerous git commands (push, reset --hard, etc.) in Claude Code. |
| `/code-tour` | Creates CodeTour `.tour` files for step-by-step codebase walkthroughs. |
| `/pdf` | Reads, extracts, converts, merges, and manipulates PDF documents. |
| `/xlsx` | Reads, edits, converts, and creates Excel spreadsheets. |
| `/docx` | Reads, edits, converts, and creates Word documents. |

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
| `AGENTS.md` (Global) | `C:\Users\kwakh\.gemini\config\` | Every session, automatic | Set once, never touch |
| `AGENTS.md` (Project) | `.agents/AGENTS.md` | Every session, automatic | Sections 1-4 at project start |
| `playbook.md` | `C:\Users\kwakh\.gemini\config\` | You read it | Your reference, keep open |
| `CONTEXT.md` | Project root | Every session, automatic | Run /grill at project start |
| `ARCHITECTURE.md` | Project root | On architectural changes | Generated via directory scan |
| `JOURNAL.md` | Project root | End of session, automatic | Append-only product log |

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

## 5.3. Configuration Assets

| File | Purpose | Why We Keep It |
| :--- | :--- | :--- |
| `.editorconfig` | Enforces spacing (2-space tabs), trailing newlines, and Unix LF line endings. | Prevents formatting churn and dirty git diffs when code is edited on different OS/IDE environments. |
| `.prettierrc.json` | Style configuration for the Prettier formatter. | Standardizes quotes, semi-colons, and trailing commas across all JavaScript/TypeScript files. |
| `skills-lock.json` | Lockfile recording the specific hashes of installed skills. | Ensures consistent rulesets are loaded when deploying or reproducing the workspace on another machine. |

---

## 6. New Project Bootstrap

```powershell
$t = "C:\Users\kwakh\.gemini\config\templates"; $d = "D:\YourProjectName"
New-Item -ItemType Directory -Force -Path "$d\.agents"
@("CONTEXT.md","ARCHITECTURE.md",".editorconfig",".prettierrc.json","skills-lock.json") | ForEach-Object { Copy-Item "$t\$_" "$d\$_" -Force }
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
* **Problem**: The agent complains a script path does not exist (e.g. `node .gemini/...` fails).
* **Fix**: Remind the agent that customizations live in both `C:\Users\kwakh\.gemini\config\skills\` (global) and `.agents/skills/` (project-local). Have it check both paths.

### 2. Missing npm Dependencies
* **Problem**: Running a skill command throws `Error: Cannot find module` or similar package import failure.
* **Fix**: Ensure `npm install` has been run in the project root. For Vercel skills, make sure `skills-lock.json` matches and run `npx skills update` to pull down dependencies.

### 3. Windows Execution Policy Blocks Scripts
* **Problem**: Executing `.sh` or `.ps1` hooks fails due to execution policy restrictions.
* **Fix**: Propose running commands through PowerShell explicitly bypassing restrictions (e.g., `powershell -ExecutionPolicy Bypass -File path/to/script.ps1`).

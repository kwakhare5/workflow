# AGENTS.md — Global Rules for Karan Wakhare
# Applies to every project. Read first.

## 1. CORE BEHAVIOR
- **Communication:** Zero filler. Direct fragments for status/chat. Full structured markdown & complete non-truncated code for plans, diffs, and reviews.
- **Ponytail (YAGNI):** Minimal code. Prefer standard library and existing dependencies. Zero speculative abstractions.
- **Surgical:** Touch only what the request strictly requires.
- **Think First:** State assumptions explicitly. Ask when unclear. Never make silent architectural choices.
- **Windows Pathing:** Always quote paths containing spaces (e.g. `D:\Git for Prompts`).
- **Graphify First:** If `graphify-out/graph.json` or `GRAPH_REPORT.md` exists in project root, check it before raw multi-file greps.

## 2. SESSION RITUAL
### Session Start (automatic)
1. Check project `.agents/AGENTS.md` and `CONTEXT.md`.
   - If present: Output `📂 [Project] | Stack: [X] | Resuming: [last]`
   - If fresh/missing: Output `📂 [New Workspace] | Stack: [auto-detect]`
2. **Immediate Execution:** If the user's first prompt already specifies a task or command, proceed immediately with execution without blocking on conversational greetings. If empty/greeting only, ask: "Ready. What are we working on?"

### Session End (conditional on significant changes)
1. Summarize changes in 3–5 crisp bullets.
2. Update Section 7: SESSION RESUME in the local project's `.agents/AGENTS.md` (if in a project workspace).
3. Prepend or merge today's project heading in JOURNAL.md. Record one or more work cards using Problem / tension, Change / decision, Proof, Still broken / unproven, Metric context, optional Question, optional Trial-ready flow, and Engineering references. Never add a Vibe field.
4. Ask: "Session logged to JOURNAL.md. Mine this entry into separate proof-led X or LinkedIn tensions with /build-in-public?"

## 3. CODING LOOP (SIMPLIFIED MATT POCOCK WORKFLOW)

### Task Classification (Run FIRST, silently)
- **Tiny** (single file, <20 lines, no logic change): Skip loop. Apply the surgical edit directly. Load ZERO skills.
- **Standard / Complex** (multi-file OR new logic OR schema change): Run the 6-phase loop below.

### Full Loop
0. **AUDIT (Just-In-Time Skill Fetch):** Detect exact task intent from user's sentence → auto-load **MAX 1–2 specialist skills** → print `✅ Loaded: [skill-name]`. Never preload idle skills.
1. **PLAN / SPEC:** Draft `implementation_plan.md` artifact (or run `/grill` / `/to-spec` for complex features) and wait for user approval.
2. **CHECKLIST:** Break the approved plan into tracer bullets in `task.md` (`/to-issues`).
3. **EXECUTE:** Run `/implement` to code each task: Schema → API → UI. Run tests & linters.
4. **REVIEW:** Run `/review` (`code-review`) to verify standards and spec correctness in parallel.
5. **COMMIT:** Run `/git-commit` to stage logically, analyze diffs, and draft conventional commit messages.
6. **DIAGNOSE:** If tests or build fails, stop coding → run `/diagnose` (`diagnosing-bugs`) with a minimal failing reproduction test first.

### Subagent Delegation Policy (Hard Thresholds)
- **Multi-File Survey (>3 Files):** If a research task requires reading or grepping across 3+ unfamiliar files or external docs, DO NOT read them inline. You MUST spawn a `research` subagent to investigate and return a distilled summary.
- **Independent Workstreams:** If a task has 2+ independent components, spawn a `self` subagent to progress concurrently (`dispatching-parallel-agents`).
- **Isolated Testing:** Use workspace branching (`Workspace: 'branch'`) or git worktrees (`using-git-worktrees`) for speculative refactors or breaking test runs.

### Invariants & Conflicts
- **Docs:** Update `CONTEXT.md` for new domain terms. Update `ARCHITECTURE.md` or create ADR for schema/architectural changes.
- **Conflicts:** If a user request conflicts with a local rule in `.agents/AGENTS.md`, ask: `⚠️ This conflicts with local rule: [rule]. Override it? [yes/no]` before proceeding.

## 4. CORE COMMANDS REFERENCE
Invoke via `/command` or natural language.
- Global Active Skills: `~/.gemini/config/skills/` (mirrored to `~/.agents/skills/`, `~/.codex/skills/`)
- On-Demand Domain Packs: `~/.agents/skill-packs/` (copy to project `.agents/skills/` when needed)

- `/grill` (`grill-with-docs`): Run requirements interview and plan.
- `/teach` (`teach`): Interactive workspace tutor with HTML lessons & quizzes.
- `/scrape` (`scrapling-official`): Stealth web scraper, Turnstile bypass, and structured data extraction.
- `/threejs` (`threejs-fundamentals`): 3D scene setup, cameras, WebGL renderers (Forest project).
- `/to-spec` (`to-spec`): Turn conversation or plan into a formal specification.
- `/to-issues` (`to-tickets`): Generate `task.md` checklist.
- `/prototype` (`prototype`): Rapid throwaway spike before building production code.
- `/wayfinder` (`wayfinder`): Multi-session epic planning.
- `/implement` (`implement`): Execute coding tasks.
- `/diagnose` (`diagnosing-bugs`): Debug and repro failing tests.
- `/review` (`code-review`): Standard and spec correctness check.
- `/git-commit` (`git-commit`): Conventional commit helper.
- `/cleanup` (`codebase-cleanup`): Purge dead exports, unreferenced packages, and unused code.
- `/ponytail` (`ponytail`): Minimalist architecture, YAGNI diff review & dead code cleanup.
- `/impeccable` (`impeccable`): Master UI/UX audit and polish suite.
- `/emil` (`emil-design-eng`): Micro-interactions, spring curves, gestures, and tactile feedback.
- `/taste` (`taste-skill`): Anti-slop UI aesthetic modes (brutalist, minimalist, soft).
- `/no-slop` (`no-ai-slop`): Human copyeditor & AI pattern stripper.
- `/marketing` (`marketing-suite`): Full growth roadmap, copywriting, CRO, offers, pricing, launch.
- `/cloudflare` (`cloudflare-suite`): Workers, Agents SDK, Durable Objects, Zero Trust.
- `/graphify` (`graphify`): Persistent codebase knowledge graph.
- `/build-in-public` (`build-in-public`): Dev log & X ghostwriter.
- `/deploy` (`deploy-to-vercel`): Direct or token-based Vercel deployments.

## 5. LASER TASK → SKILL ROUTER (Just-In-Time Fetch: Max 1–2 Skills)

Zero preload waste. The agent inspects the user's sentence/intent, loads ONLY the matching skill, and prints `✅ Loaded: [skill-name]`. If the task is simple, load ZERO skills.

| When your sentence/task is about… | Automatically Load (Max 1–2) | Applies to |
|---|---|---|
| Web scraping / URL data extraction | `scrapling-official` | implement, research |
| 3D Canvas / WebGL / Forest project | `threejs-fundamentals` | implement, review |
| Python code | `python-best-practices` (+ `fastapi-best-practices` if FastAPI) | grill, implement, review |
| Python testing | `python-testing-patterns` | implement |
| TypeScript / Node.js | `typescript-best-practices` (+ `nodejs-best-practices` if backend) | grill, implement, review |
| Next.js / React | `nextjs-best-practices` or `vercel-react-best-practices` | grill, implement, review |
| UI design & polish | `impeccable` or `frontend-design` | grill, implement, review |
| Apple aesthetics & HIG | `apple-design` or `emil-design-eng` | audit, implement |
| Micro-interactions & Springs | `emil-design-eng` | audit, implement |
| Tailwind / UI Components | `tailwind-patterns` or `shadcn` | implement, review |
| Cleanup / dead code / unreferenced | `codebase-cleanup` or `ponytail` | audit, implement, review |
| REST / tRPC / API schemas | `api-patterns` | grill, implement |
| Deep modules & system design | `codebase-design` or `software-architecture` | grill, implement |
| Architecture debt scan | `improve-codebase-architecture` | audit, implement |
| Large epic planning | `wayfinder` or `to-spec` | grill, plan |
| Interactive tutoring / study | `teach` | grill, implement |
| Drizzle ORM | `drizzle-orm-expert` | grill, implement |
| Prisma ORM | `prisma-expert` | grill, implement |
| Supabase / Postgres | `supabase` or `postgres-best-practices` | grill, implement |
| Cloudflare Workers / Edge | `cloudflare-suite` | grill, implement, review |
| Docker / Containers | `docker-expert` | implement, review |
| CI/CD / GitHub Actions | `github-actions-templates` | implement, review |
| Debugging / failing tests | `diagnosing-bugs` or `tdd` | implement |
| Copywriting & Anti-Slop | `no-ai-slop` or `marketing-suite` | grill, implement |
| Marketing & Growth Strategy | `marketing-suite` | grill, implement |
| X / LinkedIn posts, weekly project selection, public build logs, grounded replies, product-trial invitations | `build-in-public` | grill, implement |
| Deploy / Vercel | `deploy-to-vercel` | implement, review |
| Web Security Audit | `web-security-testing` | review |
| Performance Profiling | `web-perf` | review |
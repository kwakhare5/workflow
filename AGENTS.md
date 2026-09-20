# AGENTS.md — Global Rules for Karan Wakhare
# Applies to every project. Read first.

## 1. CORE BEHAVIOR
- **Communication:** Concise, high-signal technical prose. No conversational fluff or hollow apologies. Provide full architectural rationale, trade-offs, and complete, non-truncated code.
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

## 3. CODING LOOP & TESTING INVARIANTS

### Autonomous Execution vs Formal Planning
- **Direct Execution (Default):** For targeted features, bug fixes, UI improvements, and routine API updates, proceed directly to implementation with test and linter verification. Avoid unnecessary planning ceremony on straightforward work.
- **Formal Planning Mode:** Draft `implementation_plan.md` and wait for user approval ONLY for: major architectural refactors, schema/database migrations, high-risk security boundaries, or when explicitly requested (`/plan`, `/grill`).
- **Checklist (Complex tasks):** Break approved plans into tracer bullets in `task.md` (`/to-issues`).

### System-First Invariant Testing (TDD Anti-Gaming Rule)
- **Green tests are an outcome, never the goal.** Passing a test via shallow mocks, hacky shortcuts, or hardcoded inputs is a failure. Tests must verify true domain invariants.
- **Immutable Test Barrier:** Never weaken, modify, or delete test assertions to match broken code. If the test fails, fix the system.
- **No Mocking Internal Collaborators:** Mock only true external platform boundaries (external APIs, clocks). Test real state transitions.
- **Immediate Refactoring:** Refactor immediately upon reaching green to keep architecture clean and modular.

### Smart Subagent Delegation
- **Inline by Default:** Read targeted project files (< 500 lines total) inline for instant speed and accuracy.
- **Delegate to Subagents When:** Performing broad exploratory surveys across unfamiliar directories, scraping large external web documentation, or parsing massive build/test logs (> 500 lines).

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
- `/ui-craft` (`ui-craft`): Unified frontend design suite (macro taste modes, micro-interactions, fluid physics).
- `/no-slop` (`no-ai-slop`): Human copyeditor & AI pattern stripper.
- `/marketing` (`marketing-suite`): Full growth roadmap, copywriting, CRO, offers, pricing, launch.
- `/cloudflare` (`cloudflare-suite`): Workers, Agents SDK, Durable Objects, Zero Trust.
- `/graphify` (`graphify`): Persistent codebase knowledge graph.
- `/build-in-public` (`build-in-public`): Dev log & X ghostwriter.
- `/deploy` (`deploy-to-vercel`): Direct or token-based Vercel deployments.

## 5. LASER TASK → SKILL ROUTER (Layer-Based JIT Fetch)

The agent inspects task intent and loads specialized skills matching the active layers of the feature. Do not preload idle skills.

| When your task touches… | Automatically Load Relevant Layer Skills | Applies to |
|---|---|---|
| Web scraping / URL data extraction | `scrapling-official` | implement, research |
| 3D Canvas / WebGL / Forest project | `threejs-fundamentals` | implement, review |
| Python code & FastAPI | `python-best-practices` (+ `fastapi-best-practices` if API) | grill, implement, review |
| Python testing | `python-testing-patterns` | implement |
| TypeScript / Node.js | `typescript-best-practices` (+ `nodejs-best-practices` if backend) | grill, implement, review |
| Next.js / React | `nextjs-best-practices` or `vercel-react-best-practices` | grill, implement, review |
| Frontend design, UI polish & motion | `ui-craft` or `frontend-design` | grill, implement, review |
| Tailwind / UI Components | `tailwind-patterns` or `shadcn` | implement, review |
| Cleanup / dead code / YAGNI | `codebase-cleanup` or `ponytail` | audit, implement, review |
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
| Invariant testing & debugging | `diagnosing-bugs` or `tdd` | implement |
| Copywriting & Anti-Slop | `no-ai-slop` or `marketing-suite` | grill, implement |
| Marketing & Growth Strategy | `marketing-suite` | grill, implement |
| X / LinkedIn posts, build logs & replies | `build-in-public` | grill, implement |
| Deploy / Vercel | `deploy-to-vercel` | implement, review |
| Web Security Audit | `web-security-testing` | review |
| Performance Profiling | `web-perf` | review |

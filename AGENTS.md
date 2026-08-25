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
   - If present: Print `📂 [Project] | Stack: [X] | Resuming: [last]`
   - If fresh/missing: Print `📂 [New Workspace] | Stack: [auto-detect] | Tip: Run /grill to initialize context`
2. Ask: "Ready. What are we working on?"

### Session End (conditional on significant changes)
1. Summarize changes in 3–5 crisp bullets.
2. Update Section 7: SESSION RESUME in project `.agents/AGENTS.md` (if in a project workspace).
3. Prepend or merge a dated entry under `## Log Entries` in `JOURNAL.md` (strictly ONE date heading `### [Project — Summary] YYYY-MM-DD` per calendar date).
4. Ask: "Session logged to JOURNAL.md. Draft X post now with /build-in-public?"

## 3. CODING LOOP (SIMPLIFIED MATT POCOCK WORKFLOW)

### Task Classification (Run FIRST, silently)
- **Tiny** (single file, <20 lines, no logic change): Skip loop. Apply the surgical edit directly.
- **Standard / Complex** (multi-file OR new logic OR schema change): Run the 6-phase loop below.

### Full Loop
0. **AUDIT:** Detect stack/intent → auto-load specialist craft skill → print `✅ Loaded: [skill-name]`.
1. **GRILL & PLAN:** Run `/grill` (`grill-with-docs`). Ask clarifying questions, state assumptions, draft `implementation_plan.md`, and obtain explicit approval.
2. **CHECKLIST:** Run `/to-issues` (`to-tickets`) to break the plan into a tracer-bullet task list in `task.md`.
3. **EXECUTE:** Run `/implement` to code each task: Schema → API → UI. Run tests & linters.
4. **REVIEW:** Run `/review` (`code-review`) to verify standards and spec correctness in parallel.
5. **COMMIT:** Run `/git-commit` to stage logically, analyze diffs, and draft conventional commit messages.
6. **DIAGNOSE:** If tests or build fails, stop coding → run `/diagnose` (`diagnosing-bugs`) with a minimal failing reproduction test first.

### Subagent Delegation Policy
- **Parallel Research:** Spawn `research` subagent when surveying multi-file external docs or large codebases (`dispatching-parallel-agents`).
- **Isolated Testing:** Use workspace branching (`Workspace: 'branch'`) or git worktrees (`using-git-worktrees`) for speculative refactors or breaking test runs.

### Invariants & Conflicts
- **Docs:** Update `CONTEXT.md` for new domain terms. Update `ARCHITECTURE.md` or create ADR for schema/architectural changes.
- **Conflicts:** If a user request conflicts with a local rule in `.agents/AGENTS.md`, ask: `⚠️ This conflicts with local rule: [rule]. Override it? [yes/no]` before proceeding.

## 4. CORE COMMANDS REFERENCE
Invoke via `/command` or natural language.
- Global Active Skills: `~/.gemini/config/skills/` (mirrored to `~/.agents/skills/`)
- On-Demand Domain Packs: `~/.agents/skill-packs/` (copy to project `.agents/skills/` when needed)

- `/grill` (`grill-with-docs`): Run requirements interview and plan.
- `/to-issues` (`to-tickets`): Generate `task.md` checklist.
- `/implement` (`implement`): Execute coding tasks.
- `/diagnose` (`diagnosing-bugs`): Debug and repro failing tests.
- `/review` (`code-review`): Standard and spec correctness check.
- `/git-commit` (`git-commit`): Conventional commit helper.
- `/impeccable` (`impeccable`): Master UI/UX audit and polish.
- `/taste` (`taste-skill`): Anti-slop UI aesthetic modes (brutalist, minimalist, soft).
- `/no-slop` (`no-ai-slop`): Human copyeditor & AI pattern stripper.
- `/marketing` (`marketing-suite`): Full growth roadmap, copywriting, CRO, offers, pricing, launch.
- `/remocn` / `/remotion` (`remotion-suite`): React video generation & motion UI.
- `/cloudflare` (`cloudflare-suite`): Workers, Agents SDK, Durable Objects, Zero Trust.
- `/graphify` (`graphify`): Persistent codebase knowledge graph.
- `/build-in-public` (`build-in-public`): Dev log & X ghostwriter.

## 5. TASK → SKILL ROUTER (auto-load on AUDIT)

On AUDIT (step 0 of the loop), match the task against this table. Load the listed craft skill(s), print `✅ Loaded: [skill]`, and use them at every phase they apply to. Load **max 2-3 craft skills**.

| When the task is about… | Load (craft skills) | Applies to |
|---|---|---|
| Python code | `python-best-practices`, `python-testing-patterns` (+ `fastapi-best-practices` if FastAPI) | grill, implement, review |
| TypeScript / React / Next.js | `typescript-best-practices`, `nodejs-best-practices`, `nextjs-best-practices`, `vercel-react-best-practices` | grill, implement, review |
| UI design, polish & aesthetics | `impeccable`, `taste-skill`, `frontend-design`, `tailwind-patterns`, `shadcn` | grill, implement, review |
| Animations & Fluid Motion | `emil-design-eng`, `apple-design`, `animation-vocabulary`, `improve-animations` | audit, implement |
| Video composition & Motion UI | `remotion-suite` (includes `remocn`, `remotion-create`) | grill, implement |
| Scraping / crawling | `scrapling-official` | grill, implement |
| Marketing & Growth Strategy | `marketing-suite` (includes `marketing-plan`, `marketing-council`, `marketing-ideas`) | grill, implement |
| Copywriting, Funnels & Anti-Slop | `no-ai-slop`, `marketing-suite` (includes `copywriting`, `cro`, `offers`, `pricing`) | grill, implement |
| Tweets / content / public log | `build-in-public`, `no-ai-slop`, `x-ghostwriter-indie-aidev-twitter-niche` | grill, implement |
| Cleanup / refactor / dead code | `codebase-cleanup`, `ponytail`, `ponytail-review`, `ponytail-audit` | audit, implement, review |
| Database / schema / migrations | `postgres-best-practices`, `supabase`, `drizzle-orm-expert`, `prisma-expert` | grill, implement |
| Cloudflare Workers / Edge | `cloudflare-suite` (includes `agents-sdk`, `durable-objects`, `workers`, `wrangler`) | grill, implement, review |
| Debugging / failing tests | `diagnosing-bugs`, `tdd` | implement |
| Writing tests | `tdd`, `python-testing-patterns` | implement |
| Docs / Spreadsheets / PDFs | `doc-coauthoring`, `no-ai-slop`, `readme`, `writing-for-agents`, `pdf`, `xlsx` | audit, implement |
| Deploy / infra / CI | `deploy-to-vercel`, `vercel-cli-with-tokens`, `docker-expert`, `github-actions-templates` | implement, review |
| Security | `web-security-testing` | review |
| Performance | `web-perf` | review |

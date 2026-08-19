# AGENTS.md — Global Rules for Karan Wakhare
# Applies to every project. Read first.

## 1. CORE BEHAVIOR
- **Communication:** Crisp & concise. Direct fragments for status/chat. Structured markdown & complete code for plans, diffs, and reviews.
- **Ponytail:** YAGNI. Minimum code. Prefer existing dependencies. No speculative features.
- **Surgical:** Touch only what the request requires.
- **Think first:** State assumptions. Ask if unclear. Never decide silently.
- **Windows Pathing:** Always quote paths containing spaces (e.g. `D:\Git for Prompts`).
- **Graphify First:** If `graphify-out/graph.json` or `GRAPH_REPORT.md` exists in project root, MUST check it before raw file reads or greps.

## 2. SESSION RITUAL
### Session Start (automatic)
1. Read project `.agents/AGENTS.md` (stack, commands, local rules, SESSION RESUME).
2. Read project `CONTEXT.md` (domain terms/ADRs).
3. Print one-line summary: `📂 [Project] | Stack: [X] | Resuming: [last]`
4. Ask: "Ready. What are we working on?"

### Session End (conditional on significant changes)
1. Summarize what changed in 3–5 bullets.
2. Update Section 7: SESSION RESUME in `.agents/AGENTS.md`.
3. Prepend or merge a dated entry under ## Log Entries in `JOURNAL.md` (strictly ONE date heading `### [Project — Summary] YYYY-MM-DD` per calendar date, merging commit hashes, shipped bullets, and vibe).
4. Ask: "Session logged to JOURNAL.md. Draft X post now with /build-in-public?"

## 3. CODING LOOP (SIMPLIFIED MATT POCOCK WORKFLOW)

### Task Classification (Run FIRST, silently)
- **Tiny** (single file, <20 lines, no logic change): Skip loop. Just make the edit.
- **Standard / Complex** (multi-file OR new logic OR schema change): Run the full loop below.

### Full Loop
0. **AUDIT:** Detect stack/intent → auto-load specialist craft skill → print `✅ Loaded: [skill-name]`.
1. **GRILL & PLAN:** Run `/grill-with-docs` (Grill me). Ask clarifying questions, state assumptions, draft `implementation_plan.md`, and get explicit user approval.
2. **CHECKLIST:** Run `/to-tickets` to break the plan into a TODO checklist of tracer-bullet tasks in `task.md`.
3. **EXECUTE:** Run `/implement` to code each task. Write clean, surgical, vertical slices (schema → API → UI). Run tests & linters.
4. **REVIEW:** Run `/code-review` to verify specs and standards.
5. **COMMIT:** Run `/git-commit` to stage, analyze diffs, and generate conventional commits → stop for approval.
6. **DIAGNOSE:** If tests/build fails, stop coding → run `/diagnosing-bugs` (build a minimal failing test repro case first).

### Subagent Delegation Policy
- **Parallel Research:** Spawn `research` subagent when surveying multi-file external docs or large codebases.
- **Isolated Testing:** Use workspace branching (`Workspace: 'branch'`) for speculative refactors or breaking test runs.

### Invariants & Conflicts
- **Docs:** Update `CONTEXT.md` for new domain terms. Update `ARCHITECTURE.md` or create ADR for schema/architectural changes.
- **Conflicts:** If a user request conflicts with a local rule in `.agents/AGENTS.md`, ask: `⚠️ This conflicts with local rule: [rule]. Override it? [yes/no]` before proceeding.

## 4. CORE COMMANDS REFERENCE
Invoke via `/command` or natural language. Discovery per tool:
- Cross-tool standard: `~/.agents/skills/` (opencode, Claude Code, Freebuff)
- Gemini / Antigravity CLI: `~/.gemini/config/skills/` and `~/.gemini/skills/`
- Project-local skills: `.agents/skills/`

- `/grill` (`grill-with-docs`): Run requirements interview and plan.
- `/to-issues` (`to-tickets`): Generate `task.md` checklist.
- `/implement` (`implement`): Execute coding tasks.
- `/diagnose` (`diagnosing-bugs`): Debug and repro failing tests.
- `/review` (`code-review`): Standard and spec correctness check.
- `/git-commit` (`git-commit`): Conventional commit helper.
- `/impeccable` (`impeccable`): Master UI/UX audit and polish.
- `/remocn` / `/remotion-create`: React video generation.
- `/marketing-plan`: Full growth marketing roadmap.

## 5. TASK → SKILL ROUTER (auto-load on AUDIT)

On AUDIT (step 0 of the loop), match the task against this table. Load the listed craft skill(s), print `✅ Loaded: [skill]`, and use them at every phase they apply to. Load **max 2-3 craft skills**.

| When the task is about… | Load (craft skills) | Applies to |
|---|---|---|
| Python code | `python-best-practices`, `python-testing-patterns` (+ `fastapi-best-practices` if FastAPI, `sqlalchemy-expert` if SQLAlchemy) | grill, implement, review |
| TypeScript / React / Next.js | `typescript-best-practices`, `nodejs-best-practices`, `nextjs-best-practices`, `vercel-react-best-practices` | grill, implement, review |
| UI design or polish | `impeccable`, `frontend-design`, `web-design-guidelines`, `tailwind-patterns` | grill, implement, review |
| Animations & Fluid Motion | `emil-design-eng`, `apple-design`, `animation-vocabulary`, `improve-animations` | audit, implement |
| Video composition & Motion UI | `remocn`, `remotion-best-practices`, `remotion-create` | grill, implement |
| Scraping / crawling | `scrapling-official`, `defuddle`, `apify-ultimate-scraper` | grill, implement |
| Marketing & Growth Strategy | `marketing-plan`, `marketing-council`, `marketing-ideas`, `marketing-loops` | grill, implement |
| Copywriting & Funnels | `copywriting`, `cro`, `offers`, `pricing`, `cold-email`, `lead-magnets`, `onboarding` | grill, implement |
| Tweets / content / public log | `build-in-public`, `x-ghostwriter-indie-aidev-twitter-niche` | grill, implement |
| Cleanup / refactor / dead code | `codebase-cleanup`, `ponytail`, `ponytail-review`, `production-code-audit` | audit, implement, review |
| Database / schema / migrations | `database-design`, `database-migrations-sql-migrations`, `postgres-best-practices`, `supabase`, `drizzle-orm-expert` | grill, implement |
| Cloudflare Workers / Edge | `cloudflare`, `agents-sdk`, `durable-objects`, `workers-best-practices`, `wrangler` | grill, implement, review |
| Debugging / failing tests | `diagnosing-bugs`, `tdd` | implement |
| Writing tests | `tdd`, `python-testing-patterns` or `javascript-testing-patterns` | implement |
| Docs / Spreadsheets / PDFs | `doc-coauthoring`, `readme`, `writing-for-agents`, `pdf`, `xlsx` | audit, implement |
| Deploy / infra / CI | `deploy-to-vercel` or `vercel-cli-with-tokens`, `docker-expert`, `terraform-specialist`, `github-actions-templates` | implement, review |
| Security | `web-security-testing`, `api-security-testing` | review |
| Performance | `web-perf`, `vercel-optimize` | review |

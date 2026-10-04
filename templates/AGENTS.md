# AGENTS.md — Global Rules for Karan Wakhare
# Applies to every project. Read first.

## 1. CORE BEHAVIOR
- **Communication:** Concise, high-signal technical prose. No conversational fluff or hollow apologies. Provide full architectural rationale, trade-offs, and complete, non-truncated code.
- **Ponytail (YAGNI):** Minimal code. Prefer standard library and existing dependencies. Zero speculative abstractions or premature layers.
- **Surgical Edits:** Touch only what the request strictly requires. Never reformat, re-indent, or refactor code outside the immediate scope of the change. Preserve existing comments, styles, and naming conventions.
- **Output Discipline:** Never dump raw terminal output > 50 lines into context. Cap command outputs with `Select-Object -First 30` or pipe large build logs to scratch files to prevent context rot.
- **Think First:** State assumptions explicitly. Ask when unclear. Never make silent architectural choices.
- **Windows Pathing:** Always quote paths containing spaces (e.g. `"C:\Users\kwakh\My Project"`).
- **Graphify First & Auto-Install:** If `graphify-out/graph.json` or `GRAPH_REPORT.md` exists in project root, check it before raw multi-file greps. If missing in any project repository, automatically run `npx graphify .` (or local graphify script) to generate the knowledge graph before broad codebase exploration.

## 2. SESSION RITUAL
### Session Start (automatic)
1. Check project `.agents/AGENTS.md` and `CONTEXT.md`.
   - If present: Output `📂 [Project] | Stack: [X] | Resuming: [last]`
   - If fresh/missing: Output `📂 [New Workspace] | Stack: [auto-detect]`
2. Verify project architectural graph: if `graphify-out/graph.json` is missing, run graph generation automatically.
3. **Immediate Execution:** If the user's first prompt specifies a task or command, proceed immediately with execution without blocking on conversational greetings. If empty/greeting only, ask: "Ready. What are we working on?"

### Session End (Milestone Gated)
Trigger the full session ritual ONLY on major feature completions, breaking schema migrations, or when explicitly requested via `/handoff`. For routine 1–2 turn fixes, provide a concise summary and skip ceremony.
1. Summarize changes in 3–5 crisp bullets.
2. Update Section 7: SESSION RESUME in the local project's `.agents/AGENTS.md` (if in a project workspace).
3. Prepend or merge today's project heading in JOURNAL.md using the structured work card (Problem / tension, Change / decision, Proof, Still broken / unproven, Metric context).
4. Ask: "Session logged to JOURNAL.md. Mine this entry into separate proof-led X or LinkedIn tensions with /build-in-public?"

## 3. CODING LOOP & TESTING INVARIANTS

### Autonomous Execution vs Formal Planning
- **Direct Execution (Default):** For targeted features, bug fixes, UI improvements, and routine API updates, proceed directly to implementation with test and linter verification. Avoid unnecessary planning ceremony on straightforward work.
- **Formal Planning Mode:** Draft `implementation_plan.md` and wait for user approval ONLY for: major architectural refactors, schema/database migrations, high-risk security boundaries, or when explicitly requested (`/plan`, `/grill`).
- **Checklist (Complex tasks):** Break approved plans into tracer bullets in `task.md` (`/to-issues`).

### Testing Invariants (Anti-Test Slop)
- **Never Write Post-Hoc Unit Tests:** Never write unit tests after writing code. Tests written after code merely echo implementation logic, suffer from confirmation bias, and assert bugs as intended behavior.
- **E2E-First Architecture:** Highly prefer E2E tests as the primary/sole testing mechanism. Use them to verify complex features work end-to-end. At the end of E2E tests, always produce a verifiable and repeatable artifact (HTML report, trace archive, or terminal proof with exit code 0).
- **Adversarial Failure-Mode Enumeration (FME):** If you must test a system in isolation, first write down all the ways it could fail (boundaries, empty states, timeouts, invalid types), write tests asserting those failure modes, and only then write the code.
- **Ban Low-Signal & Trivial Tests:** Strictly forbid writing unit tests for trivial getters, simple delegation wrappers, boilerplate constructors, or framework plumbing. Every test must verify a genuine domain invariant or critical calculation.
- **Immutable Test Barrier:** Never weaken, modify, or delete test assertions to match broken code. If the test fails, fix the system.
- **No Mocking Internal Collaborators:** Mock only true external platform boundaries (external APIs, payment gates, clocks). Test real state transitions.
- **Execution Proof Invariant:** Never declare any task complete without running the verification command in the terminal and proving exit code 0 on the actual assertions.

### Smart Subagent Delegation
- **Inline by Default:** Read targeted project files (< 500 lines total) inline for instant speed and accuracy.
- **Delegate to Subagents When:** Performing broad exploratory surveys across unfamiliar directories, scraping large external web documentation, or parsing massive build/test logs (> 500 lines).

## 4. CORE COMMANDS REFERENCE (Universal Global Skills)
Active directly in single flat directory (`~/.gemini/config/skills/`, mirrored to `~/.gemini/skills/`, `~/.codex/skills/`, `~/.agents/skills/`).

- `/taste` (`taste-skill`): Anti-slop frontend art direction, typography pairings, color calibration.
- `/emil` (`emil-design-eng`): Tactile micro-interactions, `scale(0.97)` press, popover origins, spring easing.
- `/apple` (`apple-design`): Fluid motion, momentum inheritance, 1:1 direct manipulation, interruptibility.
- `/tdd` (`tdd`): System-first invariant testing & failure-mode enumeration.
- `/diagnose` (`diagnosing-bugs`): 6-phase scientific debugging loop (runnable red repro first).
- `/e2e` (`e2e-testing`): Production Playwright E2E engine with repeatable artifacts.
- `/review` (`code-review`): Parallel standards and specification verification.
- `/cleanup` (`codebase-cleanup`): Purge dead exports, unreferenced packages (`knip`), and unused code.
- `/ponytail` (`ponytail`): Minimalist architecture, YAGNI diff review & dead code cleanup.
- `/arch` (`software-architecture`): Clean architecture boundaries and DDD service design.
- `/codebase-design` (`codebase-design`): Deep vs shallow modules (Ousterhout philosophy).
- `/domain` (`domain-modeling`): Ubiquitous Language and domain invariant models.
- `/to-spec` (`to-spec`): Turn conversation or plan into a formal technical specification.
- `/git-commit` (`git-commit`): Conventional commit staging and drafting helper.
- `/worktree` (`using-git-worktrees`): Isolated workspace branches and git worktrees.
- `/build-in-public` (`build-in-public`): Dev log and proof-led X/LinkedIn ghostwriter.
- `/readme` (`readme`): Exhaustive, thorough project documentation.

## 5. LASER TASK → SKILL ROUTER
The agent inspects task intent and loads the exact standalone skill from `~/.gemini/config/skills/` (or local `.agents/skills/`):

| When your task touches… | Standalone High-Craft Skills |
|---|---|
| Next.js / React Fullstack | `nextjs-best-practices`, `react-best-practices`, `react-state-management` |
| UI & Visual Craft (Anti-Slop) | `taste-skill`, `emil-design-eng`, `apple-design`, `shadcn`, `tailwind-patterns`, `impeccable` |
| Python / FastAPI / Databases | `fastapi-best-practices`, `drizzle-orm-expert`, `prisma-expert`, `postgres-best-practices`, `supabase` |
| Cloudflare / Edge / Deploy | `cloudflare`, `workers-best-practices`, `durable-objects`, `turnstile-spin`, `wrangler`, `deploy-to-vercel` |
| Growth, Copywriting & Launch | `product-marketing`, `copywriting`, `copy-editing`, `cro`, `launch`, `pricing`, `offers`, `build-in-public` |
| Web Scraping & Stealth Bypass | `scrapling-official`, `apify-ultimate-scraper`, `defuddle` |
| 3D Canvas / WebGL / Forest | `threejs-fundamentals`, `canvas-design`, `algorithmic-art` |
| Video / Remotion | `remotion-best-practices`, `remocn`, `remotion-markup`, `remotion-interactivity` |


# Karan's AI Playbook
> Zero-bullshit reference. Keep this open every session.

---

## 1. The Mental Model — Two Types of Skills

**You never invoke Tier 1. AI reads them automatically.**
**You only ever invoke Tier 2 with a `/command`.**

### Tier 1 — Passive (AI auto-loads silently)

The AI detects context and loads the right skill invisibly. You just write code normally.

| When you're doing this... | AI auto-loads this skill |
| :--- | :--- |
| Writing React components | `react-best-practices` |
| Working in Next.js app/pages | `nextjs-best-practices` |
| Writing Tailwind classes or shadcn setup | `tailwind-v4-shadcn` |
| Writing Drizzle schema or queries | `drizzle-orm-expert` |
| Writing Prisma schema or queries | `prisma-expert` |
| Writing Python DB queries | `sqlalchemy-expert` |
| Supabase auth / DB / storage | `supabase` |
| Stripe payment code | `stripe-integration` |
| Building any auth flow | `auth-implementation-patterns` |
| Writing SQL or DB schema | `postgres-best-practices` |
| Writing Python / FastAPI routes | `fastapi-best-practices` |
| Writing Zustand state | `zustand-store-ts` |
| Composing complex React components | `vercel-composition-patterns` |
| Architecture / module decisions | `software-architecture` |
| Asked to optimize speed or cost | `performance-optimizer` |
| Designing a new page / UI from scratch | `frontend-design` |
| Building gesture-driven or premium UI | `apple-design` |
| You say "simplest", "lazy", "yagni" | `ponytail` |
| Pinning down domain terms / ADRs | `domain-modeling` |
| Designing module interfaces | `codebase-design` |

---

### Tier 2 — Commands (You explicitly invoke)

---

## 2. Command Reference by Phase

### Phase 1 — Before You Build (Planning)

| Command | What it does |
| :--- | :--- |
| `/office-hours` | Adversarial YC-style feedback. Use before a major pivot or new product direction. |
| `/grill` | Interviews you relentlessly to sharpen a plan + writes ADRs/glossary as you go. Use before ANY non-trivial feature. |
| `/to-spec` | Turns your notes into a clean structured feature spec. |
| `/to-issues` | Breaks the spec into GitHub issues or a task.md checklist. |
| `/wayfinder` | Maps a huge foggy project that is too big to see clearly. |
| `/research` | Investigates external docs/APIs and files a summary in the repo. |
| `/prototype` | Builds throwaway UI or logic to explore a design question before committing. |
| `/pick-ui-library` | Decides which UI component library to use for a new app. |

---

### Phase 2 — While Building (Implementation)

| Command | What it does |
| :--- | :--- |
| `/tdd` | Test-first development for complex logic (APIs, DB, calculators). |
| `/implement` | Executes spec/tickets slice-by-slice: Schema to API to UI. |
| `/careful` | Safety guardrails — warns before destructive commands. |
| `/guard` | Full safety mode: destructive warnings + locks edits to a directory. |
| `/freeze` | Locks edits to a specific directory only for this session. |
| `/handoff` | Compresses session context when conversation is over 20 messages. |

---

### Phase 3 — Debug & Review

| Command | What it does |
| :--- | :--- |
| `/diagnose` | Rigorous 6-phase scientific isolation loop for hard bugs and regressions. |
| `/review` | Reviews code changes against spec (Standards + Spec reviews run in parallel). |
| `/triage` | Manages GitHub issues when they pile up. |
| `/request-refactor-plan` | Plans a refactor as tiny safe commits, files it as a GitHub issue. |
| `/ponytail-review` | Reviews a diff exclusively for over-engineering. Finds what to delete. |
| `/health` | Codebase health dashboard — quality metrics. |

---

### Phase 4 — Design & Polish (UI)

| Command | What it does |
| :--- | :--- |
| `/design-review` | Designer eye QA: finds visual inconsistency, spacing, hierarchy, AI slop, slow interactions. Fixes them. |
| `/impeccable audit` | Full UI quality audit with 46 deterministic lint rules. |
| `/impeccable polish` | Final micro-refactor quality pass before shipping. |
| `/impeccable bolder` | Adds more contrast/strength if the design looks bland. |
| `/impeccable quieter` | Reduces visual noise if the UI is too loud/busy. |
| `/impeccable animate` | Adds micro-interactions and CSS transitions. |
| `/emil-design-eng` | Apple-tier interaction and motion consulting. |
| `/find-animation-opportunities` | Scans codebase for places that should animate but do not. |
| `/improve-animations` | Audits existing animations and produces a prioritized fix roadmap. |
| `/review-animations` | Reviews animation code against Emil Kowalski high-craft bar. |

---

### Phase 5 — Ship & Operate

| Command | What it does |
| :--- | :--- |
| `/ship` | Fast PR creation and deployments. |
| `/qa` | Automated Playwright browser tests on your staging URL. |
| `/cleanup` | Purges dead code, unreferenced exports, and bloat before shipping. |
| `/canary` | Deploys and monitors for errors post-deploy. |
| `/land-and-deploy` | Merge + deploy workflow. |
| `/setup-pre-commit` | Sets up Husky pre-commit hooks (Prettier, type checks, tests). |

---

### Phase 6 — Growth & Launch

| Command | What it does |
| :--- | :--- |
| `/launch` | Full launch strategy + Product Hunt asset generation. |
| `/tweet-crafter` | Drafts, refines, or brainstorms X/Twitter posts using your voice profile. |
| `/seo-audit` | Health check for meta tags and Core Web Vitals. |
| `/copywriting` | Writes or rewrites landing page and marketing copy. |
| `/pricing` | Strategy for packaging, tiers, and willingness to pay. |
| `/analytics` | Sets up tracking pipelines (GA4, Mixpanel, Segment). |
| `/emails` | Drafts drip campaigns and post-launch nurture sequences. |
| `/cro` | Conversion rate optimization for landing pages and forms. |
| `/ab-testing` | Plans, designs, and runs A/B tests. |
| `/scrapling-official` | Heavy web scraping with anti-bot bypass and JS rendering. |

---

### Planning Reviews (GStack)

| Command | What it does |
| :--- | :--- |
| `/plan-ceo-review` | CEO/founder-mode review of a plan. |
| `/plan-eng-review` | Engineering manager review of a plan. |
| `/plan-design-review` | Designer eye review of a plan. |
| `/retro` | Structured weekly engineering retrospective. |
| `/autoplan` | Runs all three reviews in sequence with auto-decisions. |
| `/benchmark` | Performance regression detection. |

---

### Codebase Architecture

| Command | What it does |
| :--- | :--- |
| `/zoom` | list_dir + audit before sweeping structural changes. |
| `/improve-codebase-architecture` | Scans codebase for deepening opportunities, presents HTML report. |
| `/ponytail-audit` | Whole-repo audit for over-engineering. Finds what to delete. |

---

## 3. Session Rituals

### Session Start (Paste this verbatim)
```
Read CLAUDE.md, CONTEXT.md, and Section 7 SESSION RESUME.
Summarize what is open, then let us work on: [describe task]
```

### Session End (Paste this verbatim)
```
Done for today. Summarize what we built and update Section 7
SESSION RESUME in CLAUDE.md with what changed, what is next,
and any blockers.
```

---

## 4. What Each File Is For

| File | Location | When AI reads it | You fill it |
| :--- | :--- | :--- | :--- |
| `AGENTS.md` | `~/.gemini/config/` (global) | Every session, auto | Never — set once |
| `CLAUDE.md` | Project root | Every session, you ask | Sections 1-4 at start |
| `CONTEXT.md` | Project root | Every session, you ask | At project start (10 min) |
| `ARCHITECTURE.md` | Project root | Only when you ask | /zoom generates it |

---

## 5. New Project Bootstrap

```powershell
$t = "C:\Users\kwakh\.gemini\config\templates"; $d = "D:\YourProjectName"
@("CLAUDE.md","CONTEXT.md","ARCHITECTURE.md",".editorconfig",".prettierrc.json") | ForEach-Object { Copy-Item "$t\$_" "$d\$_" }
```

1. Fill `CLAUDE.md` Sections 1-4 manually (stack, commands, rules).
2. First IDE session: "I am starting [Project Name]. Read CLAUDE.md. Then /grill"
3. Commit: `git commit -m "feat: initial setup"`

---

## 6. The 3 Habits That Matter

1. **`/grill` before every non-trivial feature** — Do not let AI write code until it has interviewed you.
2. **Read CLAUDE.md at session start** — 10 seconds, saves 30 minutes.
3. **Update SESSION RESUME at session end** — This is your memory across sessions.

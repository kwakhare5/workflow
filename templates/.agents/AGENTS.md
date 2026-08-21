# AGENTS.md — Project Rules

# Hard cap: 120 lines. Fill Sections 1-4 at project start.
# AI fills Sections 5-7 automatically during development.

---

## 1. PROJECT IDENTITY
- **Name:** [Insert Project Name]
- **Goal:** [Insert one-sentence goal]
- **Status:** In Progress
- **Repo:** [GitHub URL]

---

## 2. TECH STACK
- **Frontend:** [e.g. Next.js 16, React 19, Tailwind v4]
- **Backend:** [e.g. FastAPI / Next.js Server Actions / Cloudflare Workers]
- **Database:** [e.g. PostgreSQL via Supabase + Drizzle ORM]
- **Auth:** [e.g. Supabase Auth / Clerk]
- **Testing:** [e.g. Vitest / pytest]
- **Language:** [e.g. TypeScript strict / Python strict typing]

---

## 3. DEV COMMANDS
```bash
npm run dev        # start dev server
npm run build      # production build verification
npm test           # run unit test suite
npm run lint       # ESLint + TypeScript check
```

---

## 4. LOCAL RULES & DESIGN INVARIANTS
1. **Graphify First:** If `graphify-out/graph.json` or `GRAPH_REPORT.md` exists, inspect it before raw file grepping.
2. **Ponytail / YAGNI:** Minimal code. Prefer existing dependencies. No speculative features.
3. **Zero AI Slop:** Clean typography, calibrated Lucide icons, no emoji spam in headings/badges.
4. **Surgical Changes:** Touch only what the task requires.

---

## 5. KEY PROJECT PATTERNS
- [Map key architectural files, shared component directories, and domain types here]

---

## 6. MISTAKES TO AVOID
<!-- Format: [YYYY-MM-DD] What went wrong → What to do instead -->
- [Initial Scaffold] No previous mistakes recorded.

---

## 7. SESSION RESUME
**Last session date:** [YYYY-MM-DD]
- **Current State:** Fresh project scaffolding initialized.
- **Immediate next task:** Define core data schema & initial UI wireframe.
- **Open blockers:** None.

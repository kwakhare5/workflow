# AGENTS.md — Project Rules

## 1. PROJECT IDENTITY
- **Name:** [Insert Project Name]
- **Goal:** [Insert one-sentence goal]
- **Status:** In Progress
- **Repo:** [GitHub URL]

## 2. TECH STACK
- **Frontend:** [e.g. Next.js 16, React 19, Tailwind v4]
- **Backend:** [e.g. FastAPI / Next.js Server Actions / Cloudflare Workers]
- **Database:** [e.g. PostgreSQL via Supabase + Drizzle ORM]
- **Auth:** [e.g. Supabase Auth / Clerk]
- **Testing:** [e.g. Vitest / pytest]
- **Language:** [e.g. TypeScript strict / Python strict typing]

## 3. CORE DEV COMMANDS
```bash
# Frontend
npm run dev        # start dev server
npm run build      # production build
npm test           # run test suite
npm run lint       # ESLint + TypeScript check
```

## 4. LOCAL INVARIANTS & CONSTRAINTS
1. **Graphify First:** If `graphify-out/` or `GRAPH_REPORT.md` exists, inspect it before raw grepping.
2. **YAGNI / Ponytail:** Minimal code, no speculative features.
3. **Testing:** All new features require matching unit tests before marking done.

## 5. DOMAIN CONTEXT & ADRS
- See `CONTEXT.md` for domain terms and Architecture Decision Records (ADRs).

## 6. SESSION RESUME
- **Current State:** Fresh project scaffolding initialized.

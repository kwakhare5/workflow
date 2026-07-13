# CLAUDE.md — Project Context
# Hard cap: 200 lines. Fill sections 1-4 when you start a project.
# AI fills sections 5-7 automatically over time.
#
# RULES:
# - Heavy architecture → ARCHITECTURE.md (load on-demand with @ZOOM)
# - Domain terms → CONTEXT.md (read every session)
# - Global AI rules → AGENTS.md (never duplicate here)

---

## 1. PROJECT IDENTITY

**Name:** [Project name]
**Goal:** [One sentence — what it does and for whom]
**Status:** [In Progress / Launched / Paused]
**Repo:** [GitHub URL]

---

## 2. TECH STACK

- **Frontend:** [e.g. Next.js 15 App Router, React 19, Tailwind CSS v4, shadcn/ui]
- **Backend:** [e.g. Next.js API routes / Node.js Express / FastAPI on Railway]
- **Database:** [e.g. PostgreSQL via Supabase, Drizzle ORM]
- **Auth:** [e.g. Supabase Auth / Clerk / NextAuth.js]
- **Payments:** [e.g. Stripe / N/A]
- **Email:** [e.g. Resend / N/A]
- **Hosting:** [e.g. Vercel (frontend) + Render (API) + Supabase (DB)]
- **Language:** TypeScript (strict mode always)

---

## 3. DEV COMMANDS

```bash
npm run dev        # start dev server (localhost:3000)
npm run build      # production build — must pass before any commit
npm run lint       # ESLint + TypeScript check — MUST be zero errors
npm run test       # unit tests (if applicable)
```

_Replace with actual commands for this project. AI runs these automatically._

---

## 4. LOCAL RULES

_3-5 rules ONLY for this project. Project-specific only — not generic advice._

1. [e.g. All database queries go through `/lib/db/` — never inline in route handlers]
2. [e.g. Use `~/` path alias — never relative `../../`]
3. [e.g. All API responses return `{ data: T | null, error: string | null }` shape]
4. [e.g. No custom CSS — Tailwind utilities only, no inline styles]
5. [e.g. Named exports only in React components — never default exports]

---

## 5. PROJECT PATTERNS

_AI fills this in as the project grows. Describes shared components and conventions._

### Shared components
<!-- AI appends here as components are built -->
- `<Button>` — [describe variants: primary, secondary, destructive]
- `<Input>` — [describe]
- `<Modal>` — [describe]

### API response shape
```typescript
type ApiResponse<T> = { data: T | null; error: string | null }
```

### File structure
```
/app              — pages, layouts, loading states
/app/api          — API route handlers
/components/ui    — shadcn primitives
/components       — project-specific components
/lib              — DB queries, auth helpers, utilities
/lib/db           — all database access (never bypass this)
/types            — shared TypeScript types
```

---

## 6. MISTAKES TO AVOID

_AI appends here after every VERIFY failure. Never repeat these._

<!-- Format: [YYYY-MM-DD] What went wrong → What to do instead -->

---

## 7. SESSION RESUME

_AI fills this at the END of every session. Read this at the START of the next session._

**Last session date:** [YYYY-MM-DD]

**What we built / changed:**
- [bullet 1]
- [bullet 2]

**Immediate next task:**
[Exactly what to pick up next — be specific]

**Open blockers:**
[Anything unresolved, waiting on, or blocked]

**Files most recently changed:**
- [file path]
- [file path]

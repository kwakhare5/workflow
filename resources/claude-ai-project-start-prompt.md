# Claude.ai Project Start Prompt

## WHAT THIS IS
Paste this into Claude.ai (NOT the IDE) at the START of any new project.
It generates all 3 context files you need for your AI workflow:
- CLAUDE.md → lean context (stack + commands + rules, MAX 200 lines)
- CONTEXT.md → domain language (terms, business rules, naming conventions)
- ARCHITECTURE.md → heavy docs (schema + decisions + file tree, load on-demand)

After Claude generates them, copy the output into your project root.
Use the templates at: C:\Users\kwakh\.gemini\config\templates\ as the base.

---

## THE PROMPT (copy everything below the line)

---

I'm starting a new project. Before we write any code, produce 3 context files
for my AI coding workflow. I use Antigravity IDE with Claude Sonnet.

My global AI config lives at C:\Users\kwakh\.gemini\config\ and has:
- 84 curated skills that auto-load based on what I'm coding
- AGENTS.md with global coding rules (ponytail, surgical, caveman style)
- A two-tier skill system: Tier 1 auto-loads (React, FastAPI, Drizzle etc.), Tier 2 I invoke with /commands

---

**FILE 1: CLAUDE.md (lean context — HARD CAP: 200 lines)**

Read by AI at the start of every session. Every line must earn its place.
Structure it with these exact sections:

1. PROJECT IDENTITY — name, one-sentence goal, status, repo URL
2. TECH STACK — exact package names (e.g. Next.js 15, not just "Next.js")
3. DEV COMMANDS — npm run dev, build, lint, test — the actual commands
4. LOCAL RULES — 3-5 project-specific rules only (not generic advice)
5. PROJECT PATTERNS — shared components, API shape, file structure (AI fills this over time)
6. MISTAKES TO AVOID — blank for now (AI appends here when it makes errors)
7. SESSION RESUME — blank for now (AI fills at end of each session)

DO NOT include: DB schema, ADRs, long explanations, setup tutorials, env var values.

---

**FILE 2: CONTEXT.md (domain language — keep it SHORT)**

Read by AI every session. Gives the AI a shared vocabulary so it names
functions, variables, and components consistently.

Structure it with these exact sections:
- Core Entities table: Term | What it means in THIS app | Never call it
- Business Rules: numbered list of hard constraints
- User Roles table: Role | Can do | Cannot do
- Status / State Machines table (if your app has stateful objects)
- Key Workflows: numbered list describing the main user flows in plain language
- Naming Conventions table: Thing | Convention | Example
- ADRs: date + decision + why (append-only, blank for now)

Only include terms that are non-obvious or specific to THIS app.
Don't add common words like "button", "form", "page".

---

**FILE 3: ARCHITECTURE.md (heavy doc — no line limit, load on-demand)**

NOT read every session. Only loaded when explicitly asked ("Read ARCHITECTURE.md").
Include everything too heavy for CLAUDE.md:
- System overview diagram (text/ASCII)
- Services and responsibilities table
- Full file tree (all levels)
- Full DB schema (SQL or type definitions)
- Environment variables (names only, no values)
- API contracts table (method, route, auth required, what it does)
- Key data flows (auth flow, payment flow, etc.)
- Historical decisions table (date, decision, why)

---

Now here's my project:

[DESCRIBE YOUR PROJECT HERE]
Include:
- What the app does and who uses it
- The tech stack you chose (be specific — Next.js 15 App Router, Supabase, Drizzle, etc.)
- The main entities/tables (e.g. User, Workspace, Project, Plan)
- The main user flows (e.g. signup, create workspace, invite member, upgrade plan)
- Any constraints or decisions already made


# AGENTS.md — <Project name>
# NOTE FOR AI: Treat this file as AGENTS.md + RULES.md combined.
# It defines both the project facts AND the hard invariant rules for this codebase.
# Global master working rules live at C:\Users\kwakh\.agents\AGENTS.md.

## 1. What this is
<One sentence: what it does and who uses it.>

## 2. Stack
- <Language / framework / DB / hosting, one line each>

## 3. Project Commands & Self-Verification
- Install: `<cmd>`
- Dev server: `<cmd>` (runs on `<port>`)
- Test (all): `<cmd>`
- E2E: `<cmd>`
- Lint / Typecheck: `<cmd>`
- Verification runner: `.\verify.ps1` (checks types, tests, and build)
- Done check = `.\verify.ps1` exits 0 with pasted raw terminal output.

## 4. Hard Rules & Invariants (What the AI must ALWAYS do)
- Always run `.\verify.ps1` before declaring any task complete.
- Always handle loading, empty, and error states for every async call.
- Always use strict types (no `any` or loose casts).
- Always follow design tokens and component standards in `DESIGN.md`.

## 5. What the AI must NEVER do
- Never commit hardcoded secrets, passwords, or API keys (use `.env`).
- Never write inline styles (use design tokens in `DESIGN.md`).
- Never modify or delete existing database migrations that have already run.
- Never delete or weaken a test just to get green.

## 6. Design Source of Truth
- UI-style skill for this project: `<one of taste-skill | impeccable | emil-design-eng | shadcn>`. Load only this one.
- Design tokens & vibe: Follow `DESIGN.md`.

## 7. Folder Map
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>

## 8. Gotchas & Known Traps
- <Thing that broke before and the rule that prevents it, one line each>
- <Env vars that must be set; what happens if they are missing>
- <Anything the agent cannot infer from the code>

## 9. Do Not Touch
- <Generated files, vendored code, migrations already applied>

Global master rules: read C:\Users\kwakh\.agents\AGENTS.md

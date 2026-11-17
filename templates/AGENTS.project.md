# AGENTS.md - <Project name>

Global rules: read C:\Users\kwakh\.agents\AGENTS.md first. This file adds project-specific rules. It can make global limits stricter, never looser. Do not repeat global rules here.

## 1. What this is
- One-line promise: what it does and who uses it.
- What is out of scope.

## 2. Stack and commands
- Stack: language, framework, database, hosting (one line each).
- Install: `<cmd>`
- Dev server: `<cmd>` (port `<port>`)
- Test: `<cmd>`
- Build: `<cmd>`
- Lint / typecheck: `<cmd>`
- Database / seed: `<cmd>` (if the project has one)
- Environment variable names. No secrets or values.

## 3. Project rules
- Data contract.
- Invariants and gotchas: things that broke before and the rule that prevents them.
- Strict types: no `any` or loose casts.
- Never commit secrets, passwords or API keys. Keep them in an untracked `.env` or environment variables.
- Required env vars and what happens when one is missing.
- (Only with a database) never modify or delete migrations that have already run.
- Security and privacy rules.
- (Only if the project has them) modes, claims and gates, and what is real, assumed, test or simulated data.

## 4. UI rules (only for projects with a UI)
- Design source of truth: one UI-style skill, `<name>`. Load only this one.
- Follow design tokens and components in DESIGN.md. No inline styles.
- Handle loading, empty and error states for every async call.

## 5. Surfaces and verification
- Screen or endpoint map.
- Verification skill path.
- Feature list and how to drive each one.
- Done check: verification skill passes with pasted proof, or tests plus build pass. Check what changed and its callers by default; go broader only for shared code, dependencies, build config or wide impact.

## 6. Project-specific stops
- The phase checklist (Plan -> Scout -> Build -> Review -> Fix -> Verify -> Close) lives in TASKS.md, not here.
- Stops this project adds on top of the global approval limits (for example: never touch table X, never call the live payment API). Do not repeat global stops.

## 7. Folder map
- `<path>/`: what lives here.

## 8. Open decisions
- Unresolved choices.

## 9. Do not touch
- Locked files, generated or vendored code, applied migrations.

## 10. Doc map
- List only documents that actually exist, with their paths.

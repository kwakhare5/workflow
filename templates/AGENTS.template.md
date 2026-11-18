# AGENTS.md - <Project name>

Global rules: read C:\Users\kwakh\.agents\AGENTS.md first. This file adds project facts. It can make global rules stricter, never looser. Do not repeat global rules here.

## What this is
- One line: what it does and who uses it.
- Out of scope: ...

## Stack and commands
- Stack: language, framework, database, hosting (one line each).
- Install: `<cmd>`
- Dev server: `<cmd>` (port `<port>`)
- Test: `<cmd>`
- Build: `<cmd>`
- Lint / typecheck: `<cmd>`
- Database / seed: `<cmd>` (if applicable)
- Environment variable names only. No secrets or values here.

## Specialist skills
- UI direction: `<one skill name>`. Load it for any UI work in this project.
- Language / service skills: `<names>`.
- Missing capability: check C:\Users\kwakh\.agents\skills\ then C:\Users\kwakh\.agents\library\. If not found, research via /find-skills, verify license/dependencies, and propose before npx skills add.

## Project rules & guardrails
- Data contract: invariants and gotchas that prevent past breakages.
- Strict types: no `any` or loose casts.
- Database: never modify or delete migrations that have already run.
- Required env vars and behavior when one is missing.

## Verification
- Verification skill: `.agents/skills/verify-<project>/`. If missing, generate with create-verification-skill; audit with maintain-verification-skill.
- Feature map: `.agents/skills/verify-<project>/features/`
- Drive only the changed feature and callers. Go broader only for shared code or wide impact.
- Done check: verification proof pasted, or tests plus build pass with output shown.

## Project stops
- Stops this project adds on top of global approval limits (e.g., never touch table X, never call live payment API).

## Folder map
- `<path>/`: what lives here.

## Do not touch
- Locked files, generated or vendored code, applied migrations.

## Open decisions
- Unresolved choices, one line each.

## Doc map
- List only documents that actually exist, with their paths.

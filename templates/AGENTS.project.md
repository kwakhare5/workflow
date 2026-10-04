# AGENTS.md - <Project name>
# Project facts only. Global working rules are in the global AGENTS.md.

## What this is
<One sentence: what it does and who uses it.>

## Stack
- <Language / framework / DB / hosting, one line each>

## Commands (the agent must use exactly these)
- Install: `<cmd>`
- Dev server: `<cmd>`   (runs on <port>)
- Test (all): `<cmd>`
- E2E: `<cmd>`
- Lint / typecheck: `<cmd>`
- Done check = Test + Lint both exit 0.

## Issue tracker
(Written by /setup-matt-pocock-skills. If empty, run it once in this repo.)

## Design source of truth
UI-style skill for this project: `<one of taste-skill | soft-skill | brutalist-skill | minimalist-skill | impeccable | emil-design-eng | apple-design>`. Load only this one. Ignore the other UI-style skills.
Mockups: `design/`. Fonts and colors come from the tokens file, not from the skill.

## Folder map
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>
- `<path>/`: <what lives here>

## Gotchas
- <Thing that broke before and the rule that prevents it, one line each>
- <Env vars that must be set; what happens if they are missing>
- <Anything the agent cannot infer from the code>

## Do not touch
- <Generated files, vendored code, migrations already applied>

Global rules: read C:\Users\kwakh\.agents\AGENTS.md
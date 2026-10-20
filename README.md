# workflow

Karan Wakhare's agent workflow: global rules + a small global skill set + a per-project skill library.

## System Master Architecture
The real files live on C: under `C:\Users\kwakh\.agents\`. Every tool and IDE folder points at this single source of truth via NTFS junctions and hardlinks:
- **Skills (`28 global`):** `~/.gemini/config/skills`, `~/.gemini/skills`, `~/.codex/skills`, `~/.claude/skills`, and `~/.config/opencode/skills` are NTFS junctions pointing to `C:\Users\kwakh\.agents\skills`.
- **Rules (`AGENTS.md`):** `~/.gemini/config/AGENTS.md`, `~/.codex/AGENTS.md`, `~/.claude/CLAUDE.md`, and `~/.config/opencode/AGENTS.md` are NTFS hardlinks of `C:\Users\kwakh\.agents\AGENTS.md`. Editing the master updates all tools simultaneously.
- **Library (`52 skills`):** Categorized on-demand skills live in `C:\Users\kwakh\.agents\library\` across groups and are copied into individual projects on-demand.
- **Repository (`D:\workflow`):** A version-controlled repository containing rules and skills.

## What is in here
- `AGENTS.md` - global working rules (Master rules)
- `PLAYBOOK.md` - quick skills cheat sheet (tables)
- `skills/` - 28 global skills (loaded everywhere)
- `library/` - 52 per-project skills across groups (`ui-styles`, `marketing`, `tools`, `ai-infra`, `scraping`, etc.)

## Working with Projects

### Add Specialized Skills to a Project
Copy the matching skill folder from `library/<group>/<skill>` into `<project>/.agents/skills/<skill>` when needed.

## Daily Flow
`/grilling` (or `/grill-with-docs`) -> `/to-spec` -> `/to-tickets` -> `/implement` -> `/code-review`

## Sources and Credits
| What | Source repo | Commit / Date | License |
|---|---|---|---|
| Pocock skills | https://github.com/mattpocock/skills | `d81f3a1` (2026-09-29) | MIT |
| Agent skills | https://github.com/addyosmani/agent-skills | `1401c8b` (2026-10-03) | MIT |
| Marketing skills | https://github.com/coreyhaines31/marketingskills | `dda3841` (2026-10-02) | MIT |
| pstack skills | https://github.com/cursor/plugins (plugins/pstack) | latest | MIT |
| Ponytail | https://github.com/DietrichGebert/ponytail | latest | MIT |
| E2E Testing | https://github.com/tester-army/e2e | latest | MIT |
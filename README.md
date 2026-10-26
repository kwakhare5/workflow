# workflow

Karan Wakhare's agent workflow: global rules + a small global skill set + a per-project skill library.

## System Master Architecture
The real files live on C: under `C:\Users\kwakh\.agents\`. Every tool and IDE folder points at this single source of truth via NTFS junctions and hardlinks:
- **Skills (`25 global`):** `~/.gemini/config/skills`, `~/.gemini/skills`, `~/.codex/skills`, `~/.claude/skills`, `~/.config/opencode/skills`, `~/.qoder/skills`, and `~/.config/freebuff-desktop/skills` are NTFS junctions pointing to `C:\Users\kwakh\.agents\skills`.
- **Rules (`AGENTS.md`):** `~/.gemini/config/AGENTS.md`, `~/.codex/AGENTS.md`, `~/.claude/CLAUDE.md`, `~/.config/opencode/AGENTS.md`, `~/.qoder/AGENTS.md`, and `~/.config/freebuff-desktop/AGENTS.md` are NTFS hardlinks of `C:\Users\kwakh\.agents\AGENTS.md`. Editing the master updates all tools simultaneously.
- **Templates (`8 templates`):** `~/.gemini/config/templates`, `~/.codex/templates`, `~/.claude/templates`, `~/.config/opencode/templates`, `~/.qoder/templates`, and `~/.config/freebuff-desktop/templates` are NTFS junctions pointing to `C:\Users\kwakh\.agents\templates`.
- **Library (`24 skills`):** Categorized on-demand skills live in `C:\Users\kwakh\.agents\library\` across groups and are copied into individual projects on-demand.
- **Repository (`D:\workflow`):** A version-controlled repository containing rules and skills.

## What is in here
- `AGENTS.md` - global working rules (Master rules)
- `PLAYBOOK.md` - quick skills cheat sheet (tables)
- `templates/` - 8 starter project templates (`PRD.md`, `ARCHITECTURE.md`, `DESIGN.md`, `AGENTS.project.md`, `TASKS.md`, `JOURNAL.md`, `GLOSSARY.md`, `verify.ps1`)
- `skills/` - 25 global skills (loaded everywhere)
- `library/` - 24 per-project skills across groups (`tools`, `marketing`, `ui-styles`, `ai-infra`, `scraping`)

## Working with Projects

### Add Specialized Skills to a Project
Copy the matching skill folder from `library/<group>/<skill>` into `<project>/.agents/skills/<skill>` when needed.

## Daily Flow
`/grilling` (or `/grill-with-docs`) -> `/to-spec` -> `/to-tickets` -> `/tdd` -> `/code-review`

## Sources and Credits
| What | Source repo | Commit / Date | License |
|---|---|---|---|
| Pocock skills | https://github.com/mattpocock/skills | latest | MIT |
| Agent skills | https://github.com/addyosmani/agent-skills | latest | MIT |
| Marketing skills | https://github.com/coreyhaines31/marketingskills | latest | MIT |
| pstack skills | https://github.com/backnotprop/pstack | latest | MIT |
| UI Craft & Motion | https://github.com/emilkowalski/skills | latest | MIT |
| Taste skill | https://github.com/Leonxlnx/taste-skill | latest | MIT |
| Visual PR summary | https://github.com/humanlayer/skills | latest | MIT |
| Ponytail | https://github.com/DietrichGebert/ponytail | latest | MIT |
| E2E Testing | https://github.com/tester-army/e2e | latest | MIT |
| Supabase & Postgres | https://github.com/supabase/agent-skills | latest | MIT |
| React & Next.js Best Practices | https://github.com/vercel-labs/agent-skills | latest | MIT |
# workflow

Karan Wakhare's coding-agent workflow: global rules + 28 core active skills + on-demand library catalog.

## System Master Architecture
The live global files live on C: under `C:\Users\kwakh\.agents\`. Every tool and IDE folder points at this single source of truth via NTFS junctions and hardlinks:
- **Skills (`28 global`):** `~/.gemini/config/skills`, `~/.codex/skills`, `~/.claude/skills`, `~/.qoder/skills` are NTFS junctions pointing to `C:\Users\kwakh\.agents\skills`.
- **Rules (`AGENTS.md`):** `~/.gemini/config/AGENTS.md`, `~/.codex/AGENTS.md`, `~/.claude/CLAUDE.md`, `~/.qoder/AGENTS.md` are NTFS hardlinks of `C:\Users\kwakh\.agents\AGENTS.md`. Editing the master updates all tools simultaneously.
- **Templates (`7 templates`):** `~/.gemini/config/templates`, `~/.codex/templates`, `~/.claude/templates`, `~/.qoder/templates` are NTFS junctions pointing to `C:\Users\kwakh\.agents\templates`.
- **Library (`5 domains`):** Categorized on-demand skills live in `C:\Users\kwakh\.agents\library\` across 5 domains (`ai-infra`, `scraping`, `seo-and-marketing`, `tools`, `ui-styles`).
- **Repository (`D:\workflow`):** Version-controlled repository on D: for backup and pushing to GitHub (mirrored from master).

## What is in here
- `AGENTS.md` - Global working rules (12-step flow + strict safety guardrails)
- `PLAYBOOK.md` - Quick skills cheat sheet & reference guide
- `templates/` - 7 project starter templates (`AGENTS.template.md`, `TASKS.md`, `ARCHITECTURE.md`, `DESIGN.md`, `GLOSSARY.md`, `JOURNAL.md`, `PRD.md`)
- `skills/` - 28 active global skills (loaded everywhere)
- `library/` - Categorized reference skills across 5 domains

## The Engineering Loop
`grill-with-docs` -> `codebase-design` -> `to-spec` -> `to-tickets` -> `implement` / `tdd` -> `diagnosing-bugs` -> `code-review` -> `verify` -> `pr` -> `handoff`

## Sources and Credits
| What | Source repo | Commit / Date | License |
|---|---|---|---|
| Engineering loop skills | https://github.com/mattpocock/skills | 5863806 (2026-11-18) | MIT |
| Code quality & refactoring | https://github.com/caldoai/skills | d5b68da (2026-11-18) | MIT |
| Technical & Programmatic SEO | https://github.com/Illyism/seo-skills | 99d51a3 (2026-11-16) | MIT |
| UI Craft & Motion | https://github.com/emilkowalski/skills | latest | MIT |
| Taste skill (v2) | https://github.com/Leonxlnx/taste-skill | latest | MIT |
| Ponytail | https://github.com/DietrichGebert/ponytail | latest | MIT |
| E2E Testing | https://github.com/tester-army/e2e | latest | MIT |
| Supabase & Postgres | https://github.com/supabase/agent-skills | v0.1.9 | MIT |
| React & Next.js Best Practices | https://github.com/vercel-labs/agent-skills | v1.0.0 | MIT |


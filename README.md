# workflow

Karan Wakhare's agent workflow: global rules + a small global skill set + a per-project skill library.

## System Master Architecture
The real files live on C: under `C:\Users\kwakh\.agents\`. Every tool and IDE folder points at this single source of truth via NTFS junctions and hardlinks:
- **Skills (`25 global`):** `~/.gemini/config/skills`, `~/.gemini/skills`, `~/.codex/skills`, `~/.claude/skills`, and `~/.config/opencode/skills` are NTFS junctions pointing to `C:\Users\kwakh\.agents\skills`.
- **Rules (`AGENTS.md`):** `~/.gemini/config/AGENTS.md`, `~/.codex/AGENTS.md`, `~/.claude/CLAUDE.md`, and `~/.config/opencode/AGENTS.md` are NTFS hardlinks of `C:\Users\kwakh\.agents\AGENTS.md`. Editing the master updates all tools simultaneously.
- **Library (`103 skills`):** Categorized skills live in `C:\Users\kwakh\.agents\library\` across 14 groups and are installed into individual projects on-demand via NTFS junctions.
- **Repository (`D:\workflow`):** A version-controlled snapshot/backup repository. Files are copied one-way from the system master to this repository when running `push-to-repo.ps1`.

## What is in here
- `AGENTS.md` - global working rules (54 lines)
- `templates/` - `AGENTS.project.md`, `GLOSSARY.md`, `JOURNAL.md`
- `skills/` - 25 global skills (loaded everywhere)
- `library/` - 103 per-project skills across 14 groups (`ui-styles`, `frontend-stack`, `cloudflare`, `data`, `marketing`, `media`, etc.)
- skills/.system holds 5 Codex system skills (imagegen, openai-docs, review-agent, skill-creator, skill-installer).
- `tools/` - shared marketing CLI tool registry used by `library/marketing`
- `scripts/` - management utilities:
  - `push-to-repo.ps1`: One-way snapshot from `C:\Users\kwakh\.agents` to `D:\workflow` (use `-Push` to push to GitHub)
  - `install-skill.ps1`: Installs library skills into a project via NTFS junctions and tracks them in `.agents/skills.list`
  - `link-tool.ps1`: Links a new IDE or tool directory to the master skills and rules
  - `check-links.ps1`: Verifies and repairs all 9 junctions and hardlinks (`-Repair`)
  - `check-duplicates.ps1`: Ensures zero duplicate skill names across global and library groups
  - `new-project.ps1`: Scaffolds `AGENTS.md` and `.agents/skills.list` for a new repo
  - `audit-projects.ps1`: Audits registered projects for missing sections and broken skill links

## Working with Projects

### 1. New Project Setup
```powershell
~/.agents/scripts/new-project.ps1 "D:\path\to\project"
```
Or copy `templates/AGENTS.project.md` to `<project>/AGENTS.md` and configure stack/commands.

### 2. Add Specialized Skills to a Project
```powershell
~/.agents/scripts/install-skill.ps1 -Skill soft-skill -Project "D:\path\to\project"
```

### 3. Adding a New IDE / Tool
```powershell
~/.agents/scripts/link-tool.ps1 -SkillsPath "$HOME\.newide\skills" -AgentsMdPath "$HOME\.newide\AGENTS.md"
```

### 4. Taking a Repo Snapshot
```powershell
~/.agents/scripts/push-to-repo.ps1
# Inspect git diff, then push when ready:
~/.agents/scripts/push-to-repo.ps1 -Push
```

## Daily Flow
`/grilling` (or `/grill-with-docs`) -> `/to-spec` -> `/to-tickets` -> `/implement` -> `/code-review` -> `/git-commit`

## Sources and Credits
| What | Source repo | Commit / Date | License |
|---|---|---|---|
| Pocock skills | https://github.com/mattpocock/skills | `d81f3a1` (2026-09-29) | MIT |
| Agent skills | https://github.com/addyosmani/agent-skills | `1401c8b` (2026-10-03) | MIT |
| Marketing skills & tools | https://github.com/coreyhaines31/marketingskills | `dda3841` (2026-10-02) | MIT |
| GitHub Actions templates | https://github.com/bcastelino/agent-skills-kit | `bcf1a4b` (2026-08-05) | MIT |

See `THIRD-PARTY-NOTICES.md` for full breakdown of third-party licenses and unverified community skills.

## Known Gaps
- `x-ghostwriter` is parked in `library/content/`: dataset is other creators' accounts; needs an export of @kwakhare5.
- Licenses of bundled community skills not fully verified (see `THIRD-PARTY-NOTICES.md`).
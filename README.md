# workflow

Karan Wakhare's agent workflow: global rules + a small global skill set + a library of per-project skills.
Based on Matt Pocock's skills (https://github.com/mattpocock/skills). Other skills adapted from the sources listed below.

## What is in here
- AGENTS.md - global rules (51 lines)
- templates/ - AGENTS.project.md, GLOSSARY.md, JOURNAL.md
- skills/ - 25 global skills (loaded everywhere)
- library/ - per-project skills by group (ui-styles, cloudflare, marketing, media, ...)
- tools/ - shared marketing tool registry used by library/marketing
- scripts/ - sync-skills.ps1, install-skill.ps1

## Install (Windows, PowerShell)
1. git clone https://github.com/kwakhare5/workflow
2. ./scripts/sync-skills.ps1 -DryRun, then without -DryRun
3. In each project: copy templates/AGENTS.project.md to ./AGENTS.md, run /setup-matt-pocock-skills once.
4. Add per-project skills: ./scripts/install-skill.ps1 -Group ui-styles -Skill soft-skill -Project <path>

## Daily flow
/grilling (or /grill-with-docs) -> /to-spec -> /to-tickets -> /implement -> /code-review -> /git-commit

## Sources and credits
| What | Source repo | Commit / Date | License |
|---|---|---|---|
| Pocock skills | https://github.com/mattpocock/skills | `d81f3a1` (2026-09-29) | MIT |
| Agent skills | https://github.com/addyosmani/agent-skills | `1401c8b` (2026-10-03) | MIT |
| Marketing skills & tools | https://github.com/coreyhaines31/marketingskills | `dda3841` (2026-10-02) | MIT |
| GitHub Actions templates | https://github.com/bcastelino/agent-skills-kit | `bcf1a4b` (2026-08-05) | MIT |

See `THIRD-PARTY-NOTICES.md` for full breakdown.

## Known gaps
- x-ghostwriter is parked: its dataset is other creators' accounts; needs an export of @kwakhare5.
- licenses of bundled third-party skills not fully verified (see THIRD-PARTY-NOTICES.md).
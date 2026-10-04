# Development Journal

## 2026-10-01 — Flat Architecture & Standalone Craft Skill Curation

### Work Card: Eradicating AI Slop & Curating 95 Uncompressed Elite Skills

- **Problem / Tension:** 
  Previous attempts to reduce token overhead compressed heavy craft skills (`taste-skill` 88 KB, `emil-design-eng` 28 KB, `apple-design` 23 KB) into a 31-line stub (`ui-craft/SKILL.md`) pointing to `references/` that the LLM never loaded. This caused the model to lose all typography, palette, micro-interaction, and physics rules, reverting to generic AI slop (purple gradients, Inter on slate-900, equal 3-column cards). Additionally, 166 skills were locked in separate domain packs with PowerShell scripts (`pack.ps1`) that Antigravity/Cursor could not dynamically load, causing missing skills in prompt sessions.

- **Change / Decision:**
  1. Restored full, uncompressed, un-neutered standalone skills directly in a single flat directory with zero warehouse or pack script indirection.
  2. Deleted `ui-craft`, `cloudflare-suite`, and `marketing-suite` stubs; restored direct commands `/taste`, `/emil`, `/apple`.
  3. Conducted a comprehensive 6-round domain audit across all 224 skills:
     - Kept **95 elite, non-overlapping powerhouses** (UI/UX: 12, Testing: 7, Backend/Cloudflare: 21, Marketing: 17, Media/Scraping: 13, Architecture/Meta: 25).
     - Purged **129 redundant duplicates, hollow stubs (<30 lines), and legacy `gstack` bash runners** to `archive/purged_skills/`.
  4. Synchronized all 95 skills across all 5 system mirrors (`~/.gemini/config/skills/`, `~/.gemini/skills/`, `~/.agents/skills/`, `~/.codex/skills/`, `<repo>/skills/`).
  5. Updated `AGENTS.md`, `playbook.md`, and templates to reference standalone skills directly.

- **Proof:**
  - `~/.gemini/config/skills/`: 95 skills.
  - `<repo>/skills/`: 95 skills.
  - `~/.agents/skills/`: 95 skills.
  - `~/.codex/skills/`: 95 skills.
  - `taste-skill/SKILL.md` verified at 88,459 bytes; `emil-design-eng/SKILL.md` at 27,900 bytes; `apple-design/SKILL.md` at 22,997 bytes.
  - `ui-craft` verified completely removed (`Test-Path` returned `False`).
  - Git commit pushed cleanly to `origin main`.


- **Still Broken / Unproven:**
  - Verify real-world generation output in active project (`Grocer-antigravity` / `IndieForest`) to confirm high-craft typography and micro-interactions fire on prompt.

- **Metric Context:**
  - 129 redundant skills and stubs purged (58% catalog clutter reduction).
  - 100% full, uncompressed rule availability in active agent memory.
  - 0 script dependencies (`pack.ps1` completely removed).

---

### Work Card: Tiered Skills Warehouse & Anti-Test Slop Invariants


- **Problem / Tension:** 
  The AI coding setup accumulated 233 skills globally, injecting ~3,000–8,000 catalog tokens into every prompt, causing severe attention diffusion and framework confusion (e.g. Next.js vs FastAPI, Drizzle vs Prisma active simultaneously). Meanwhile, strict TDD generated "test slop" (post-hoc unit tests asserting bugs to force green exits), while swinging purely to Playwright E2E created slow, brittle feedback loops. Additionally, several skills had ghost references to non-existent tools (`@playwright-skill`, `@test-automator`).

- **Change / Decision:**
  1. Restored, upgraded, and verified all 225 skills from upstream sources (`mattpocock`, `coreyhaines`, `vercel-labs`, `clerk`, `sickn33`) in the master repository (`<repo>/skills/`).
  2. Pruned 8 dead/deprecated upstream stubs (`qa`, `wait-what`, `loop-me`, `setup-*`).
  3. Established a Tiered Architecture: Only 16 Universal Global Core skills reside in live prompt memory; domain packs assembled in `<repo>/skill-packs/` and managed per-project via a CLI tool.
  4. Modernized `e2e-testing` to a production Playwright engine with auth state reuse and verifiable artifacts.
  5. Enforced Adversarial Invariant Testing in `AGENTS.md` and `tdd`: Banned post-hoc unit tests and trivial getter tests; mandated Failure-Mode Enumeration before writing code; enforced the Execution Proof Invariant.
  6. Added Frontier Rules to `AGENTS.md`: 50-line terminal output cap, surgical non-interference, and milestone-gated session rituals.

- **Proof:**
  - 16 core skills deployed to `~/.gemini/config/skills/`, `~/.gemini/skills/`, `~/.agents/skills/`, and `~/.codex/skills/` (cutting prompt catalog overhead by 75%).
  - `.\pack.ps1 -List` verified, cleanly reporting all 6 domain packs (`backend-db`, `devops-infra`, `frontend-craft`, `growth-marketing`, `specialized-media`, `web-fullstack`).
  - All mirrors verified with 100% SHA-256 bit-for-bit parity.
  - Changes committed and pushed to `kwakhare5/workflow` (`5498584`).

- **Still Broken / Unproven:**
  - Individual project repositories (e.g. `D:\Grocer`) still need their domain packs mounted via `.\pack.ps1 -Add web-fullstack,backend-db -Project "D:\Grocer"`.

- **Metric Context:**
  - In-prompt catalog tax slashed from ~2,908 tokens/turn to ~720 tokens/turn (saves ~65,000+ tokens per 30-turn session).
  - 0 phantom/broken skill references.

- **Engineering References:**
  - Ansh Nanda (@anshnanda) AGENTS.md Invariants (September 2026).
  - Context Degradation and Compliance Checklist Research in LLM Coding Agents.

---

### 2026-10-04 - Full Workflow & Skills Architecture Overhaul (Phases 1-5)
- **Problem:** Over 95 global skills bloated context; broken links in marketing, GHA, and agent skills; 8 name/folder mismatches; redundant skills and stale AGENTS.md rules.
- **Change:** Restored Pocock, Addy Osmani, and marketing skills + tools/; aligned skill names; pruned duplicates; partitioned 25 global skills from 84 per-project library skills; deployed lean 51-line AGENTS.md; created sync and install scripts.
- **Proof:** Automated checklist passed 100%; 25 global skills verified; 0 name mismatches; links resolve; 5 phase commits created on branch skills-cleanup.
- **Still broken / Unproven:** Resolved: tool mirrors are verified NTFS junctions pointing to master; Outpost and all projects verified OK.
---

### 2026-10-04 - System Master Architecture & Cross-Project Parity (Addendum Complete)
- **Problem:** Skills and rules were mirrored across 5 separate locations prone to drift; D:\workflow was tightly coupled as the live source of truth; project configurations lacked uniform structure.
- **Change:** Relocated source of truth to C:\Users\kwakh\.agents; linked all tool folders via NTFS junctions and hardlinks; replaced sync script with one-way push-to-repo.ps1; configured all 7 projects (Outpost, Grocer, Portfolio, Big 6, Git for Prompts, IndieForest, Github Profile) with uniform AGENTS.md and junction-installed library skills.
- **Proof:** All 5 junctions/hardlinks verified OK via check-links.ps1; audit-projects.ps1 reported 100% OK across all 7 projects; fresh session kiwi test passed.
- **Still broken / Unproven:** Resolved: old backup folders deleted; branch fix-round created for final verification and push.
---

### 2026-10-04 - Full Machine Sweep & Self-Triggering Library Catalog (Jobs 1 & 2)
- **Problem:** Specialized skills in ~/.agents/library required manual discovery; stray skills folders and out-of-date AGENTS.md copies lingered in Claude, OpenCode, AO, and user home.
- **Change:** Created LIBRARY-CATALOG.md indexing all library skills with trigger phrases; updated AGENTS.md skill loading policy; swept C: and D: drives; imported unique missing skills into library/misc and updated catalog.
- **Proof:** LIBRARY-CATALOG.md indexes 103 skills; sweep inspected drives in 3.7s; 29 skills imported and verified in library/misc and git.
- **Still broken / Unproven:** Resolved: deletions completed, duplicate sweep imports pruned, and library catalog cleaned up.
---

### 2026-10-04 - Final Workflow Fix Round (Phases 1-8 Complete)
- **Problem:** 12 duplicate sweep imports and 32 clutter items bloated library; AGENTS.md had informal aliases; ponytail encoding was corrupted; Claude and OpenCode had unlinked duplicate configs.
- **Change:** Purged 12 duplicate imports and 32 clutter items; filed 17 unique skills into real groups; added customer-research and competitor-profiling; fixed Scrapling links and ponytail encoding; junctioned Claude/OpenCode; merged fix-round into main and pushed to GitHub.
- **Proof:** check-links 9/9 OK; audit-projects 9/9 OK; check-duplicates clean; Compare-Object 100% clean; merged and pushed to main in commit ba06565.
- **Still broken / Unproven:** None. Complete, pushed, and verified.
---

### 2026-10-04 - Master AGENTS.md Backup Rule Policy
- **Problem:** Ambiguity around local zip backup creation and retention risked disk clutter and unnecessary backups for normal development.
- **Change:** Added explicit backup rule to Section 7 of master AGENTS.md restricting zips to pre-destructive rounds and mandating deletion after push.
- **Proof:** check-links.ps1 verified 9/9 OK across master hardlinks; synced cleanly to repo AGENTS.md.
- **Still broken / Unproven:** None. Complete and verified.
---

### 2026-10-04 - Project AGENTS.md Deduplication & Standalone Fact Architecture
- **Problem:** 7 projects held duplicate legacy rules in .agents/AGENTS.md alongside root AGENTS.md; root files lacked master rules pointer.
- **Change:** Backed up and removed 7 .agents/AGENTS.md files; merged project gotchas and invariants into root AGENTS.md; enforced 'Global rules' pointer across all 9 projects; updated new-project.ps1 and AGENTS.project.md template.
- **Proof:** audit-projects.ps1 verified 9/9 OK; check-links.ps1 verified 9/9 OK; 0 duplicate AGENTS.md files remain across projects.
- **Still broken / Unproven:** None. Complete and verified.
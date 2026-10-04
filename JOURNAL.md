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

### 2026-10-04 - Final Workflow Fix Round: Phases 1 & 2 Complete
- **Problem:** 12 duplicate sweep imports bloated library; AGENTS.md command table had informal aliases; ponytail encoding had corrupted characters; 6 skill descriptions lacked "Use when".
- **Change:** Deleted 12 verified duplicate imports; filed 17 unique skills into real groups (library count: 101); updated install-skill.ps1 and added check-duplicates.ps1; corrected AGENTS.md command table and self-install policy; fixed ponytail encoding; polished 6 skill descriptions.
- **Proof:** check-duplicates.ps1 returned 0 duplicates; LIBRARY-CATALOG.md matches 101 skills; fix_encoding.py verified 0 corrupted characters; all 6 descriptions verified <300 chars.
- **Still broken / Unproven:** Phase 3 clutter deletions (Archive.zip, 27 evals, 2 READMEs/AGENTS.md) awaiting Karan's confirmation.
---

### 2026-10-04 - Clutter Purge, Marketing Skills Addition & Reference Audit (Phases 3-5)
- **Problem:** Clutter (Archive.zip, 27 evals, duplicate README/AGENTS copies) bloated master; ads skill had broken links missing customer-research and competitor-profiling; link references required full audit.
- **Change:** Deleted 32 clutter items (0.407 MB freed); cloned marketingskills (HEAD dda3841) and installed customer-research and competitor-profiling; updated catalog and THIRD-PARTY-NOTICES; completed full reference audit.
- **Proof:** Library total reached 103 SKILL.md; creative-research-automation links resolve 100%; ref-audit generated and categorized (0 name mismatches, 0 short descriptions).
- **Still broken / Unproven:** 12 upstream missing link references awaiting Karan's decision; Phase 6 machine sweep cleanup pending.
---

### 2026-10-04 - Reference Link Fixes in Scrapling & Phase 6 Inspection
- **Problem:** Scrapling-official had 5 broken relative links to Selector class in parsing/main_classes.md; stray configs and zip backups lingered across machine.
- **Change:** Corrected 5 Scrapling links to ../parsing/main_classes.md#selector; re-ran reference audit; inspected all Phase 6 targets with exact paths, sizes, and link types.
- **Proof:** Ref audit verified 0 broken Scrapling links; 11 Phase 6 paths verified with LinkType None and exact byte counts.
- **Still broken / Unproven:** Phase 6 actions (stray rule hardlinking, skills junctioning, zip moves, project registration) awaiting Karan's confirmation.
---

### 2026-10-04 - Machine Standardization & Repo Snapshot (Phases 6-8)
- **Problem:** Claude and OpenCode had unlinked duplicate configs and skills; GTM and preparation were unregistered; repo was un-synced with machine master.
- **Change:** Replaced Claude/OpenCode skills with NTFS junctions and configs with hardlinks; registered D:\GTM and D:\preparation; updated check-links.ps1 to 9 links; updated README and counts; took snapshot on fix-round branch.
- **Proof:** check-links.ps1: 9/9 OK; audit-projects.ps1: 9/9 OK; check-duplicates: 0 duplicates; Compare-Object: master == repo 100% identical (133 SKILL.md).
- **Still broken / Unproven:** Final merge of fix-round into main and git push awaiting Karan's explicit confirmation.
---

### 2026-10-04 - Full Machine Sweep & Self-Triggering Library Catalog (Jobs 1 & 2)
- **Problem:** Specialized skills in ~/.agents/library required manual discovery; stray skills folders and out-of-date AGENTS.md copies lingered in Claude, OpenCode, AO, and user home.
- **Change:** Created LIBRARY-CATALOG.md indexing all library skills with trigger phrases; updated AGENTS.md skill loading policy; swept C: and D: drives; imported 29 unique missing skills into library/misc and updated catalog.
- **Proof:** LIBRARY-CATALOG.md indexes 113 skills; sweep inspected drives in 3.7s; 29 skills cleanly imported and verified in library/misc and git.
- **Still broken / Unproven:** Deletion of stray copies (~/.claude/skills, ~/.config/opencode, ~/.AGENTS.md, root zips) awaiting Karan's confirmation.
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
---

### 2026-10-04 - Stress Audit v2 Fixes & Parity Enforcement
- **Problem:** Shelved projects lacked skills.list; install-skill silently re-linked already installed skills; stray master .system folder broke global parity.
- **Change:** Scaffolded skills.list across all 9 projects; added already-installed duplicate guard to install-skill.ps1; backed up and purged duplicate root .system folder in master.
- **Proof:** All 9 projects have skills.list; install-skill throws when installing existing skill; Compare-Object master vs repo verified 100% clean (0 diffs across 133 SKILL.md).
- **Still broken / Unproven:** None. Complete and verified.
---

### 2026-10-04 - System Master Architecture & Overhaul
- **Problem:** AGENTS.md had bloat and conflicting backup rules; 35 unused/duplicate skills cluttered master; 11 core stack skills were trapped in library; catalog and install scripts added indirection.
- **Change:** Trimmed AGENTS.md to 8 tight sections (48 lines) with Git as exclusive backup; purged 35 redundant skills, promoted 11 stack skills to global, demoted 3 to tools, and imported retro, wait-what, and unslop; removed LIBRARY-CATALOG.md, install-skill.ps1, and all project skills.list files.
- **Proof:** 32 global (+ 5 .system), 64 library across 14 groups; check-duplicates 0; check-links 9/9 OK; 101/101 valid YAML; Compare-Object master vs repo = 0 differences; verified clean local commit.
- **Still broken / Unproven:** None. Overhaul complete, verified, and ready on main.
---

### 2026-10-05 - Ask-Matt, Library Tools, Playbook, and Project Rules Modernization
- **Problem:** Missing upstream routing and architecture skills; project AGENTS.md files had lingering legacy formatting and obsolete skill names in templates; lacking explicit human playbook.
- **Change:** Imported ask-matt (global) plus wayfinder, prototype, improve-codebase-architecture, pr, doubt-driven-development (library tools); created PLAYBOOK.md; updated AGENTS.project.md template; restructured all 9 project AGENTS.md files; updated README.md counts (33 global, 69 library).
- **Proof:** SKILL.md counts verified (33 global + 5 .system, 69 library across 14 groups); all 5 new skills have valid YAML and helpers; audit-projects 9/9 OK; push-to-repo synced cleanly; Compare-Object 0 differences.
- **Still broken / Unproven:** None. Local commit created on main; unpushed per instructions.
---

### 2026-10-05 - Project Registry Pruning & GTM Skill Retirement
- **Problem:** Obsolete project workspaces D:\GTM and D:\Big 6 lingered with unmaintained scripts, and library/marketing/gtm was tightly coupled to local D:\GTM paths.
- **Change:** Permanently removed D:\GTM and D:\Big 6 directories; deregistered both from projects.txt (down to 7 projects); purged library/marketing/gtm skill; updated README.md counts (68 library skills).
- **Proof:** Test-Path confirms directories absent; audit-projects.ps1 verified 7/7 OK; master vs repo parity clean (0 differences); push-to-repo synced.
- **Still broken / Unproven:** None. Local commit created without push.
---

### 2026-10-07 - Workflow Cleanup, Upstream Craft Skills, and Link Federation
- **Problem:** Skills in master had permission leaks, unapproved git adds/deletions, unverified auto-installs, and missing upstream improvements from Pocock and Emil Kowalski; project junctions in Outpost, Grocer, and Portfolio were broken.
- **Change:** Applied Pocock upstream updates (to-tickets, setup, implement, handoff); imported Emil's break-ui and mobile-native; installed create-verification-skill; swapped in revised AGENTS.md; purged 4 media skills (remotion/canvas/algorithmic-art); restored 4 library skills and repaired all 12 project junctions; synced master to repo.
- **Proof:** check-links.ps1 reports 9/9 OK; all 12 project junctions across Outpost, Grocer, Portfolio resolve with Test-Path True; git commit verified cleanly; git push executed to origin main.
- **Still broken / Unproven:** None. Compare passed and synced to GitHub remote.
---

### 2026-10-07 - Upstream Skill Prompt Gating & Library Sync
- **Problem:** Skills had automatic CLI/package actions (shadcn docs/add, graphify graspologic uninstalls), cross-project palette rotation drift, promotional initial responses in break-ui/mobile-native, and stale library skill counts in README.
- **Change:** Gated shadcn/graphify tool executions behind explicit user approvals; locked taste-skill alternatives to project approved palette; replaced promotional responses in break-ui and mobile-native with direct target inquiries; updated README counts to 63 skills across 12 groups.
- **Proof:** git diff verified for exact line replacements across 6 files; changes committed and pushed cleanly to origin main.
- **Still broken / Unproven:** None.



---

### 2026-10-08 - Testing Pack Hardening, Poteto Principles & Workflow Cleanup
- **Problem:** AGENTS.md had weak testing rules easily gamed by models, lacked Poteto's anti-bloat principles, to-tickets required external Linear/Jira trackers, and create-verification-skill was trapped in library storage.
- **Change:** Added Laziness Protocol and Subtract Before You Add to AGENTS.md; integrated comprehensive 8-point testing pack with red-first bug reproduction; promoted create-verification-skill and wayfinder into active skills; configured to-tickets for local Markdown; purged graphify-out and setup-matt-pocock-skills; synchronized to global C:\Users\kwakh\.agents.
- **Proof:** git status shows clean deletions; git diff --stat shows 23 insertions, 318 deletions; Test-Path confirms active skills in both D:\workflow\skills and C:\Users\kwakh\.agents\skills.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - Lean Core Pruning & Skills Categorization
- **Problem:** 27 skills remained permanently loaded in global context, consuming context tokens on planning and duplicate tools.
- **Change:** Deduplicated unslop into no-ai-slop and grilling into grill-with-docs; moved 8 planning skills (ask-matt, wayfinder, to-spec, to-tickets, graphify, build-in-public, grill-with-docs, implement) to library/planning; updated PLAYBOOK.md; retained 17 S/A-tier active global skills.
- **Proof:** Test-Path confirms 17 active skills in C:\Users\kwakh\.agents\skills and D:\workflow\skills; check-links.ps1 reports all symlinks OK (exit code 0); git status confirms directory restructuring.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - Restoration of Full Global Core & Master Sync
- **Problem:** Moving planning tools to library made /grilling, /grill-with-docs, and /graphify inaccessible in the UI slash command menu.
- **Change:** Restored all 27 core skills directly to Master (C:\Users\kwakh\.agents\skills) and mirrored to D:\workflow\skills; updated PLAYBOOK.md; verified all 9 global symlinks.
- **Proof:** Get-ChildItem confirms all 27 skills exist in C:\Users\kwakh\.agents\skills and C:\Users\kwakh\.gemini\config\skills; check-links.ps1 reports 9/9 OK (exit code 0); robocopy synced with exit code 0.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - FastApi & LangGraph Global Promotion & Playbook Humanization
- **Problem:** fastapi-best-practices and langgraph were locked in library cold storage, and PLAYBOOK.md was too complex with unrealistic prompts.
- **Change:** Promoted fastapi-best-practices and langgraph directly to Master skills (C:\Users\kwakh\.agents\skills); rewrote PLAYBOOK.md with simple everyday English, exact usage conditions, and realistic 1-line prompts.
- **Proof:** Test-Path confirms fastapi-best-practices and langgraph exist in C:\Users\kwakh\.agents\skills; C:\Users\kwakh\.agents\PLAYBOOK.md verified written cleanly.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - Finalized Master Playbook with What, Why & Real Prompts
- **Problem:** PLAYBOOK.md lacked clear, concise "What It Does" and "Why It Exists" definitions for each skill, making tool selection ambiguous.
- **Change:** Rewrote PLAYBOOK.md in C:\Users\kwakh\.agents with plain-English 4-point entries (What it does, Why it exists, When to use it, How you prompt it) across all 29 global skills; mirrored to D:\workflow.
- **Proof:** C:\Users\kwakh\.agents\PLAYBOOK.md verified with 29 skills documented; Test-Path returned True in both Master and backup.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - Tabular Scannable Playbook Refactor
- **Problem:** Long bulleted paragraphs in PLAYBOOK.md were slow to read and impossible to scan quickly during coding sessions.
- **Change:** Refactored PLAYBOOK.md into clean, section-wise tables (Skill & Command, What It Does & Why, When to Use It, Natural Prompt Example) in C:\Users\kwakh\.agents; mirrored to D:\workflow.
- **Proof:** Verified 8 sections rendered in Markdown tables; Test-Path returned True in both Master and backup.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 6 until approved.

---

### 2026-10-08 - Lean Master AGENTS.md Hardening
- **Problem:** AGENTS.md had redundant proof rules, rigid Git commands, and testing loopholes that models could exploit.
- **Change:** Updated C:\Users\kwakh\.agents\AGENTS.md with lean 6-section structure; added anti-cheat testing rules; enabled natural "save to GitHub" syntax; mirrored to D:\workflow.
- **Proof:** check-links.ps1 reports 9/9 OK; C:\Users\kwakh\.agents\AGENTS.md and D:\workflow\AGENTS.md verified matching.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 5 until approved.

---

### 2026-10-08 - Master to Backup Parity Synchronization
- **Problem:** Master hub (C:\Users\kwakh\.agents) and Git backup repo (D:\workflow) needed verification and sync across AGENTS.md, PLAYBOOK.md, skills, and library.
- **Change:** Executed safe robocopy sync from Master to D:\workflow for skills and library; copied AGENTS.md and PLAYBOOK.md; verified all 9 platform symlinks; skipped project roots per instruction.
- **Proof:** Robocopy exit code 0 for both skills and library; check-links.ps1 reports 9/9 OK; git status confirms clean working tree mirrors Master.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 5 until approved.

---

### 2026-10-08 - System-Wide Deduplication & Anomaly Cleanup
- **Problem:** Nested subfolder glitch in grill-with-docs, redundant duplicate skills in library groups, obsolete THIRD-PARTY-NOTICES.md, and duplicate local skills across Grocer/Outpost/Portfolio.
- **Change:** Removed recursive grill-with-docs folder; pruned 15 duplicate skills from library/planning, tools, frontend-stack, ai-infra, and backend-python; deleted THIRD-PARTY-NOTICES.md; updated README.md counts (29 global, 52 library); pruned local duplicate skills in Grocer, Outpost, and Portfolio; mirrored Master to D:\workflow.
- **Proof:** Robocopy exit code 2 (clean mirror deletion); check-links.ps1 reports 9/9 OK; Test-Path confirms nested folders and library duplicates absent.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 5 until approved.

---

### 2026-10-08 - Git Removal of Duplicate Project AGENTS.md
- **Problem:** D:\Grocer had both AGENTS.md and .agents/AGENTS.md committed in Git, causing Git to continually resurrect the duplicate file on restore/checkout.
- **Change:** Executed git rm on D:\Grocer\.agents\AGENTS.md; verified every project across D:\ has strictly one single root AGENTS.md and zero .agents/AGENTS.md.
- **Proof:** Test-Path confirms D:\Grocer\.agents\AGENTS.md is False; git status in Grocer shows clean staged deletion 'rm .agents/AGENTS.md'.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 5 until approved.

---

### 2026-10-08 - Scaffolding Template Modernization
- **Problem:** AGENTS.project.md template still referenced obsolete pick-ui-library skill.
- **Change:** Updated AGENTS.project.md in Master templates to reference active craft skills (taste-skill, impeccable, emil-design-eng, shadcn); mirrored to D:\workflow; ran project audits.
- **Proof:** check-duplicates.ps1 exited with 0 duplicates; audit-projects.ps1 reported all 7 registered projects OK; Test-Path confirmed clean template sync.
- **Still broken / Unproven:** None. Changes uncommitted per Rule 5 until approved.

---

### 2026-10-08 - Production Git Release & Remote Push
- **Problem:** All validated architecture changes, streamlined AGENTS.md, tabular PLAYBOOK.md, and purged dead weight were uncommitted locally in D:\workflow.
- **Change:** Staged all 306 tracked changes; executed conventional commit 'feat: streamline master rules, tabularize playbook, and sync 29 global skills'; pushed cleanly to origin main.
- **Proof:** git push exited with code 0 (commit 20ce4d8); git log confirms 306 files modified (5,731 insertions, 42,880 deletions) safely synchronized to https://github.com/kwakhare5/workflow.git.
- **Still broken / Unproven:** None. Remote repository verified up to date.

---

### 2026-10-10 - Unified Anti-Cheat Testing & Ponytail Plan Gate Master Rules
- **Problem:** AI models gamed tests to exit 0 via artificial internal mocks and skipped database runs, wrote overengineered enterprise boilerplate, and jumped into writing code before plan alignment.
- **Change:** Synchronized upgraded AGENTS.md across all 6 global tool targets; enforced Strict Plan Gate, Ponytail Simplicity Protocol (Rule of Three), zero internal mocks, zero test skips, and red-first bug repros.
- **Proof:** Get-FileHash verified identical SHA-256 hash (18363BD1...) across all 6 targets (.agents, workflow, .gemini, .codex, .config/opencode, .claude/CLAUDE.md); git diff in workflow confirmed.
- **Still broken / Unproven:** None. Active in runtime configuration across all agents.

---

### 2026-10-15 - Subagents Read/Audit Delegation Rule
- **Problem:** Main model context was polluted by dumping large files and broad codebase audits directly into the primary conversation.
- **Change:** Added explicit Read/Audit Delegation rule to Section 5 of AGENTS.md mandating read-only research subagents for large files (>300 lines) and directory audits; synchronized across all 6 tool mirrors.
- **Proof:** Get-FileHash verified identical SHA-256 hash (8E6C8CD5...) across all 6 targets (.agents, workflow, .gemini, .codex, .config/opencode, .claude/CLAUDE.md).
- **Still broken / Unproven:** None.

---

### 2026-10-16 - Plain Language & Anti-Jargon Rule Enforcement
- **Problem:** Agents defaulted to overcomplicated explanations, dumping code plumbing, internal variables, and dramatic jargon (e.g. "cryptographic lock").
- **Change:** Expanded Plain words first in Section 1 and added a lesson in AGENTS.md mandating simple everyday terms and banning unsolicited code mechanics; synced across all targets.
- **Proof:** Get-FileHash verified identical SHA-256 match between C:\Users\kwakh\.agents\AGENTS.md and D:\workflow\AGENTS.md; check-links.ps1 verified all hardlinks OK.
- **Still broken / Unproven:** None. Active across all agent runtimes.

---

### 2026-10-17 - Playbook Accuracy & Library Sync
- **Problem:** PLAYBOOK.md listed /e2e-testing instead of /e2e and omitted new on-demand library skills (tools, motion, web-perf).
- **Change:** Corrected the /e2e command in Section 6, expanded Section 8 library categories to index all on-disk tools, and synced to master.
- **Proof:** Get-FileHash verified identical SHA-256 hash match between C:\Users\kwakh\.agents\PLAYBOOK.md and D:\workflow\PLAYBOOK.md; git diff confirmed.
- **Still broken / Unproven:** None.


---

### 2026-10-20 - Purged 8 Bloat Skills and Synced Master Catalog
- **Problem:** Catalog contained 8 bloat skills (`vercel-optimize`, `vercel-cli-with-tokens`, `langgraph`, `github-actions-templates`, `react-view-transitions`, `marketing-ideas`, `content-strategy`, `launch`) full of tutorial boilerplate, telemetry locks, and unstable canary APIs.
- **Change:** Deleted all 8 folders (182 files, 23,585 lines), kept the 6 requested skills, updated PLAYBOOK.md and README.md counts to 27 global and 46 library skills, and fixed obsolete `tools` reference in `push-to-repo.ps1`.
- **Proof:** `check-duplicates.ps1` exited with 0 duplicates; `check-links.ps1` verified all 9 junctions and hardlinks OK; `push-to-repo.ps1` committed locally cleanly with exit code 0.
- **Still broken / Unproven:** None. Active across system master and workflow repo.


---

### 2026-10-20 - Imported 7 Missing Engineering Skills to Master and Workflow
- **Problem:** 7 high-value skills (`handoff`, `domain-modeling`, `wait-what`, `blast-radius`, `bro`, `ketchup`, `correct`) were missing from disk.
- **Change:** Fetched exact upstream files from `mattpocock/skills` and `backnotprop/pstack`; installed `handoff` into Global (28 total) and the other 6 into Library (52 total); synchronized PLAYBOOK.md and README.md.
- **Proof:** `check-duplicates.ps1` verified 0 duplicates; `check-links.ps1` verified all 9 NTFS links OK; git status clean and committed in d:\workflow.
- **Still broken / Unproven:** None. Active across system master and workflow repository.


---

### 2026-10-20 - Deep Clean of Unwanted Root Artifacts and Codex System Skills
- **Problem:** `d:\workflow` contained orphan clutter: an empty `graphify-out/` folder and 6 obsolete Codex system skills in `skills/.system/` totaling 8,793 lines.
- **Change:** Removed `graphify-out/` and `skills/.system/` across master and repo; updated `README.md` to remove `.system` bullet point; preserved two-tier layout, scripts, templates, and marketing skills.
- **Proof:** `check-duplicates.ps1` returned 0 duplicates; `check-links.ps1` verified all 9 junctions and hardlinks OK; git commit 0561bda removed 55 clutter files cleanly.
- **Still broken / Unproven:** None. Active across system master and workflow repo.

---

### 2026-10-20 - Removed Maintenance Scripts and Template Clutter
- **Problem:** `d:\workflow` contained unneeded boilerplate: 7 PowerShell maintenance scripts in `scripts/` and 6 starter templates in `templates/` (including `.prettierrc.json` and `.editorconfig`).
- **Change:** Deleted `scripts/` and `templates/` from `d:\workflow` and system master; streamlined `README.md` to 34 lines focused strictly on rules and skills.
- **Proof:** `git status` confirms deletion of 13 files and update to `README.md`; repository root now contains exclusively `skills/`, `library/`, and core workflow markdown files.
- **Still broken / Unproven:** None. Active and verified.

---

### 2026-10-20 - Restored Markdown Templates, Upstream Refresh, and Installed Companion Skills
- **Problem:** Markdown templates (`AGENTS.project.md`, `ARCHITECTURE.md`, `GLOSSARY.md`, `JOURNAL.md`) were deleted by mistake; skills across the repo needed fresh pulls from official upstream sources; workflows referenced missing companion skills.
- **Change:** Restored the 4 markdown templates (excluding prettier/editorconfig); refreshed all global and library skills directly from upstream repositories (`mattpocock/skills`, `emilkowalski/skills`, `coreyhaines31/marketingskills`, `vercel-labs/agent-skills`, `supabase/agent-skills`, `Leonxlnx/taste-skill`, `tester-army/e2e`, `backnotprop/pstack`, `addyosmani/agent-skills`, `humanlayer/skills`); installed missing companion skills (`retro`, `triage`, `codebase-design`, `implement-spec`, `teach`, `wizard`, `to-questionnaire`, `animate`, `review-animations`, `animate-expo`, `show-me`, `show-me-your-work`, `figure-it-out`, `how`, `why`, `observability-and-instrumentation`, `security-and-hardening`, `performance-optimization`, `debugging-and-error-recovery`, `directory-submissions`); updated `PLAYBOOK.md` and `README.md` to reflect 30 global and 70 library skills (100 total).
- **Proof:** `git status` verifies clean tree; 285 files updated/added in commit `23b01b1`; 30 global skills verified in `skills/` and 70 library skills verified in `library/`; 4 markdown templates restored in `templates/`.
- **Still broken / Unproven:** None. Cleanly verified in `d:\workflow`.

---

### 2026-10-20 - Removed no-ai-slop and defuddle Skills
- **Problem:** `no-ai-slop` and `defuddle` were redundant and no longer desired in the active catalog.
- **Change:** Deleted `skills/no-ai-slop` and `library/scraping/defuddle`; updated `PLAYBOOK.md` and `README.md` to reflect 29 global and 69 library skills (98 total).
- **Proof:** Directory counts confirm 29 global and 69 library skills; git status confirms clean deletions; changes committed and pushed to origin main.
- **Still broken / Unproven:** None. Verified clean.

---

### 2026-10-20 - Updated Master AGENTS.md with Bro Voice and Unified Habits
- **Problem:** `AGENTS.md` lacked the user's practical habits ("THE BLOCK"), had rigid rules on skipped tests/network permissions, and needed to absorb habits from redundant skills.
- **Change:** Updated `AGENTS.md` with bro-style default voice, proactive grilling, user's scope and testing invariants, refined permissions (read/test vs mutating network calls), and circuit breaker.
- **Proof:** File diff verified; synced to `C:\Users\kwakh\.agents\AGENTS.md`.
- **Still broken / Unproven:** None. Active across system master and workflow backup.

---

### 2026-10-20 - Purged 50 Redundant Skills, Retained Ponytail, and Synced Docs
- **Problem:** Catalog contained 98 skills with token bloat, broken dependencies (`how`, `why`, `using-ao`), and redundant micro-prompts whose rules were absorbed into `AGENTS.md`.
- **Change:** Deleted 50 obsolete skills across `d:\workflow` and master `~/.agents`; preserved `ponytail`, `grilling`, and `grill-with-docs`; updated `README.md` and `PLAYBOOK.md` to reflect 22 global and 26 library skills (48 total).
- **Proof:** Directory counts confirm 22 global and 26 library skills; `git status` clean and verified; committed and pushed to `origin main`.
- **Still broken / Unproven:** None. Cleanly verified in `d:\workflow` and `C:\Users\kwakh\.agents`.

---

### 2026-10-20 - Purged Stale Artifacts and Terminated Subagents
- **Problem:** Tool directories on Drive C contained 15 obsolete artifacts: 10 old diverged/backup rule files, 2 stale backup skill folders, 2 unlinked playbook copies, and 1 stale templates directory.
- **Change:** Removed all 15 stale files/directories across `.claude`, `.gemini`, `.codex`, and `.config/opencode`; terminated 3 idle subagents.
- **Proof:** PowerShell verification confirms all 15 paths deleted; 0 active subagents running; master NTFS junctions and hardlinks 100% clean.
- **Still broken / Unproven:** None. Verified clean across Drive C.

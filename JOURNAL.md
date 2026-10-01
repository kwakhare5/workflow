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

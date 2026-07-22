---
name: codebase-cleanup
description: Scan and safely purge dead code, unreferenced exports, duplicate logic, unused packages, and stray bloat. Triggered by @CLEANUP or @PRUNE.
---

# Codebase Cleanup Skill

Purge code bloat, dead exports, duplicate logic, and unused dependencies safely with build verification.

## 4-Step Cleanup Workflow

### 1. Audit Target
Run static audit across the target workspace:
- **Dead files & unreferenced exports:** Identify files or exported functions/types that are never imported anywhere in the project.
- **Duplicate logic:** Identify duplicate data fetching, helper functions, or component patterns repeated across files.
- **Unused dependencies:** Compare `package.json` dependencies against actual codebase imports.
- **Stray artifacts:** Find stale debug statements, `.log` files, unused mock fixtures, and temporary scratch scripts.

### 2. Pre-Cleanup Build Check
Run the project verification command (`pnpm build`, `npm run lint`, `tsc --noEmit`, or `pytest`).
- **If build fails initially:** Do NOT delete anything. Fix or report existing errors first.

### 3. Surgical Pruning
For each identified candidate:
- **Unused export/file:** Apply the Deletion Test — if removing it breaks no imports and reduces surface area, remove it.
- **Duplicate logic:** Extract the common logic into a single deep module in `lib/` or `utils/` and replace all duplicate sites.
- **Unused dependency:** Remove from `package.json` and run package manager install.

### 4. Post-Cleanup Verification
Run verification again:
- `pnpm build` / `npm run lint` / `tsc --noEmit` / `pytest`
- Must pass with ZERO errors. On failure, revert changes immediately.

---
name: codebase-cleanup
description: Scan and safely purge dead code, unreferenced exports, duplicate logic, unused packages, and stray bloat. Triggered by /cleanup or /prune.
---

# Codebase Cleanup Skill

Purge code bloat, dead exports, duplicate logic, and unused dependencies safely with build verification.

## Step 1 — Automated Audit (run tools first, don't guess)

**TypeScript / JavaScript projects:**
```bash
# Find dead exports, unused files, unused dependencies — all in one pass
npx knip

# Double-check unused npm packages
npx depcheck
```
> If `knip` isn't configured: `npx knip --help` to see options. It works zero-config on most TS projects.

**Python projects:**
```bash
# Find unused imports
pip install pylint && pylint --disable=all --enable=W0611 src/

# Find unused dependencies
pip install deptry && deptry .
```

**All projects — also check for:**
- Stale debug statements (`console.log`, `print`, `debugger`, `TODO`, `FIXME`)
- Unused mock fixtures and test data files
- Temporary scratch scripts left in root
- Duplicate helper functions (same logic in multiple files)

---

## Step 2 — Pre-Cleanup Build Check

Run the project's verification command **before touching anything**:

| Stack | Command |
|-------|---------|
| Next.js / TS | `npm run build && npm run lint` |
| React / Vite | `npm run build` |
| Node.js | `tsc --noEmit && npm run lint` |
| Python | `pytest` |

**If build already fails → stop. Fix existing errors first. Do NOT delete anything.**

---

## Step 3 — Surgical Pruning

Work through the audit output candidate by candidate:

**Unused export / dead file:**
Apply the deletion test — remove it, run build. If zero errors → it's gone. If errors → it was needed, restore it.

**Duplicate logic:**
Extract the common logic into a single module in `lib/` or `utils/`. Replace all duplicate call sites. Run build to confirm.

**Unused dependency:**
Remove from `package.json` / `requirements.txt`. Run `npm install` or `pip install`. Run build.

**Stale artifacts:**
Delete without ceremony — debug logs, `.DS_Store`, scratch scripts, unused mock files.

---

## Step 4 — Post-Cleanup Verification

```bash
# Must pass with ZERO errors before declaring done
npm run build && npm run lint   # or pytest / tsc --noEmit
```

On failure → revert the last deletion and investigate. Never ship a broken build.

---

## What NOT to delete

- Files referenced only in config (e.g. `next.config.ts`, `jest.config.ts`)
- Type-only exports used in `.d.ts` or `declare module` blocks
- Files with `// @ts-ignore` — may be intentionally excluded from type checking
- Dynamic `require()` / `import()` with variable paths — static tools can't trace these

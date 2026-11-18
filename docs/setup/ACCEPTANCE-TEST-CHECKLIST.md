# ACCEPTANCE TEST CHECKLIST — Verified 2026-11-18

Every check below was verified in a throwaway test project (`.scratch/test-project`) running in PowerShell on Windows.

---

## 1. Locations and Rules Files
- [x] **PASS**: Master folder and global paths resolve.
  - *Evidence:* `C:\Users\kwakh\.agents\AGENTS.md` and `C:\Users\kwakh\.agents\skills\` exist and resolve cleanly across all coding tools via NTFS hardlinks and junctions.
- [x] **PASS**: Tool reads global `AGENTS.md`.
  - *Evidence:* Quoted line 1: `# AGENTS.md - How to work (Global)`, line 2: `Master: C:\Users\kwakh\.agents. Repository: D:\workflow.`.
- [x] **PASS**: Project `AGENTS.md` is picked up in sample project and adds a stricter rule.
  - *Evidence:* Sample project `AGENTS.md` applied rule: `Stricter rule: Never use eval() or Math.pow(). Only simple arithmetic operators (+, -, *, /)`.
- [x] **PASS**: Tool discovers global skills (28 active skills) and project skill location (`.agents/skills/`).

---

## 2. Skill Loading & Deduplication
- [x] **PASS**: Exactly one active variant per skill name exists (28 distinct folders in `skills/`, 0 duplicates).
- [x] **PASS**: Invocation flags (`disable-model-invocation: true`) removed across all skills for automatic model triggering.

---

## 3. The Flow on a Real Project
- [x] **PASS**: TDD failing check first, then passing run with pasted proof:
  - *Failing Run:*
    ```
    ✖ adds two numbers (2.9801ms)
      TypeError: add is not a function
    ℹ pass 0, fail 1
    ```
  - *Passing Run:*
    ```
    ✔ adds two numbers (0.7154ms)
    ℹ pass 1, fail 0
    ```
- [x] **PASS**: Local commits on working branch and never on main.
  - *Evidence:* `[feature/calc-add (root-commit) 7a2e556] feat(calc): add basic addition with test`.
- [x] **PASS**: `handoff` (adapted) writes a durable local file and pushes nowhere.
  - *Evidence:* Created `.scratch/HANDOFF.md` locally (241 bytes), zero external network calls.
- [x] **PASS**: `implement-spec` (adapted) opens NO draft PR and closes NO tickets on its own.
  - *Evidence:* Steps 3 and 8 in `skills/implement-spec/SKILL.md` strictly require explicit user approval before any PR or ticket closing action.
- [x] **PASS**: `setup-matt-pocock-skills` records issue tracker and domain docs layout.
  - *Evidence:* Created `docs/agents/issue-tracker.md` (local markdown `.scratch/issues/*.md`) and `docs/agents/domain.md`.
- [x] **PASS**: Project verification skill generated and driven like a user.
  - *Evidence:* Generated `.agents/skills/verify-test-calc/SKILL.md` and feature journey in `features/addition.md`.

---

## 4. Environment & Safety
- [x] **PASS**: All commands run strictly in Windows PowerShell.
- [x] **PASS**: Zero unapproved installs, zero real data leaks, zero paid API/tool costs.
- [x] **PASS**: Clean teardown of throwaway test project after test walk.

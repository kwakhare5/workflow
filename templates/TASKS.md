# TASKS.md — Active Implementation Checklist
#
# PURPOSE: Tracks the ordered sequence of small, verifiable tasks.
# The AI works through one task at a time and runs verification before checking it off.
#
# RULES FOR THE AI:
# 1. Do NOT work on multiple tasks at once.
# 2. Pick the top unchecked task `[ ]`.
# 3. Write the code, run `.\verify.ps1`.
# 4. Only mark `[x]` when the verification script passes with exit code 0.
# 5. Log the verified result in `PROGRESS.md`.

---

## Current Sprint / Milestone
**Goal:** <One clear sentence stating what this milestone delivers.>

---

## Phase 1: Setup & Foundations
- [ ] **Task 1.1:** Initialize project repo, configure Tailwind, and set up basic layout.
  - _Verification:_ `npm run build` exits 0.
- [ ] **Task 1.2:** Configure database connection / client helpers and verify connection.
  - _Verification:_ Test script logs database ping success.

---

## Phase 2: Core Feature Implementation
- [ ] **Task 2.1:** <Feature A name: description of the atomic step>.
  - _Verification:_ <Exact command or check that proves it works>.
- [ ] **Task 2.2:** <Feature B name: description of the atomic step>.
  - _Verification:_ <Exact command or check that proves it works>.
- [ ] **Task 2.3:** <Feature C name: description of the atomic step>.
  - _Verification:_ <Exact command or check that proves it works>.

---

## Phase 3: Polish & Edge Cases
- [ ] **Task 3.1:** Add empty states and loading skeletons for all list views.
  - _Verification:_ UI renders skeletons during network delay test.
- [ ] **Task 3.2:** Verify mobile responsiveness across 375px and 768px breakpoints.
  - _Verification:_ Browser check confirms zero horizontal overflow.
- [ ] **Task 3.3:** Run end-to-end sanity check and verify script.
  - _Verification:_ `.\verify.ps1` exits 0.

---

## Backlog / Future Ideas (Do not touch in this milestone)
- [ ] Future Idea 1: Description
- [ ] Future Idea 2: Description

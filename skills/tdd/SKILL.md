---
name: tdd
description: System-first invariant testing and test-driven development. Use when verifying domain logic, eliminating test slop, and implementing adversarial failure-mode testing.
---

# System-First Invariant Testing & Anti-Test Slop TDD

TDD is a verification shield for sound architecture, not a game of getting green terminal output at all costs. This skill enforces the red -> green -> refactor loop while preventing Goodhart's Law, test slop, and tautological testing.

---

## 1. Anti-Test Slop Invariants

- **NEVER write unit tests after writing code:** Post-hoc unit tests written after the implementation simply mirror whatever the code currently does—including its bugs. If a function is broken, a post-hoc test will assert the broken behavior, achieving 100% coverage with 0% bug detection.
- **Adversarial Failure-Mode Enumeration (FME):** If you must test a module or algorithm in isolation, **FIRST list all the ways it could fail** (empty inputs, boundaries, timeouts, race conditions, invalid types), **THEN write tests for those failure modes**, and **FINALLY write the code**.
- **Ban Low-Signal & Trivial Tests:** Strictly forbid writing unit tests for trivial getters, simple delegation wrappers, boilerplate constructors, or framework plumbing. Every test must verify a genuine domain invariant, calculation, state transition, or boundary constraint.
- **The test runner is not your reward function:** A green test is an outcome of correct system behavior, never the primary objective. If a test passes but the underlying architecture is fragile, hacky, shallow, or hardcoded for specific inputs, the implementation is a failure.
- **Immutable Test Barrier:** Once a test specification is written for a feature or bug, the agent is strictly forbidden from modifying test assertions to match broken implementation output. If the test fails, fix the system, not the test.

---

## 2. Three-Tier Testing Strategy

1. **Adversarial Invariant Units:**
   - Reserved for pure business logic, calculations, state machines, math, and data transformers.
   - Failure modes enumerated first. Fast, deterministic, zero network.
2. **State & Contract Integrations:**
   - Verifies API routes, database schemas, and service coordinators against real local SQLite/Postgres schemas and stores.
   - Mock *only* true external third-party boundaries (Stripe, Twilio, external clocks). Never mock internal helpers, queries, or reducers.
3. **E2E User Journeys (Playwright):**
   - High-value end-to-end user workflows (authentication, checkout, critical path).
   - Must produce a repeatable, verifiable execution artifact (console report, trace, screenshot on failure).

---

## Seams (compatibility with /to-spec and /implement)
- A seam is the public boundary where behavior is observed: an HTTP route, a CLI command, a UI flow, a public function.
- Before writing any test, write down the seam under test. If /to-spec already agreed seams, use those. Otherwise propose the highest seam and confirm it with Karan.
- Prefer one E2E test at the highest seam. Add an isolated invariant test only for pure logic (math, state machines, parsers) after listing its failure modes, and only when covering the behavior through the UI or highest seam is slow or hard.
- Never test internals to raise coverage. If a test needs a mock of our own module, the seam is wrong.

---

## 3. The Active Loop

1. **Enumerate Failure Modes:** Write down the 3–5 explicit edge cases and failure modes the domain logic must defend against.
2. **Red First (Bugs & Approved Invariants):** Red-first is required for bug fixes and approved isolated failure modes (write a focused test, execute it in the terminal, and confirm it fails for the expected reason). Ordinary new features follow the build-then-verify-then-E2E order from AGENTS.md section 5.
3. **Sound Green:** Implement the general architectural logic required to satisfy the invariant. Generalization over over-fitting: never write shortcuts just to pass fixtures.
4. **Immediate Refactor:** Limit refactoring to the touched logic required by the current slice (eliminate duplicate logic, tighten types), and confirm tests remain green before moving to the next feature slice.
5. **Execution Proof:** Run the terminal test command. Confirm exit code 0 on the actual assertion before declaring complete.

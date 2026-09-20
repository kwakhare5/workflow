---
name: tdd
description: Test-driven development and invariant testing. Use when building features or fixing bugs test-first, verifying domain invariants, or writing unit/integration tests.
---

# Test-Driven Development & Invariant Testing

TDD is a verification shield for sound architecture, not a game of getting green terminal output at all costs. This skill enforces the red -> green -> refactor loop while preventing Goodhart's Law: tests must verify real domain invariants, never artificial mocks or over-fitted code.

When exploring the codebase, read `CONTEXT.md` (if it exists) so test names and interface vocabulary match the project's domain language, and respect ADRs in the area you're touching.

## 1. System First, Green Test Second (The Core Invariant)

- **The test runner is not your reward function.** A green test is an outcome of correct system behavior, never the primary objective. If a test passes but the underlying architecture is fragile, hacky, shallow, or hardcoded for specific inputs, the implementation is a failure.
- **Generalization over over-fitting:** Never write conditional branches that only satisfy specific test fixtures (e.g. `if (code === "VIP") return 20`). The system must implement the real mathematical or domain algorithm.
- **Immutable Test Barrier:** Once a test specification is written for a feature or bug, the agent is strictly forbidden from modifying test assertions to match broken implementation output. If the test fails, fix the system, not the test.

## 2. What a Good Test Is

Tests verify behavior through public interfaces (seams), not implementation details:
- A good test reads like an executable specification: `user can checkout with valid cart` tells you exactly what capability exists.
- It survives internal refactors because it doesn't care about internal variables or private functions.
- Assertions compare against an independent source of truth: a known-good literal, a worked example, or a formal specification.

## 3. Seams & Mocking Rules

A **seam** is the public boundary you test at: the interface where you observe behavior without reaching inside.

- **Test at real seams:** Write tests against real domain modules, state machines, and reducers.
- **Never mock internal collaborators:** Only mock true external system boundaries (third-party payment gateways, external email delivery, clock/time).
- **Never mock what you control:** Do not mock your own database queries, internal utility functions, or domain helpers. Test with real state transitions.

## 4. Anti-Patterns to Eliminate

1. **Tautological Tests:** Assertions that recompute the expected value the exact same way the code does, passing by construction without verifying reality.
2. **Mocking Away Reality:** Creating mock functions that return pre-canned data without ever exercising the real schema or runtime parsing.
3. **Horizontal Slicing:** Writing 50 speculative tests up front before understanding the domain. Work in vertical slices: one test -> one sound implementation -> one refactor cycle.
4. **Silent Test Tampering:** Weakening assertions or deleting failing test cases when implementation gets tricky.

## 5. Rules of the Loop

1. **Red First:** Write a focused test that verifies an unhandled domain invariant or reproducible bug. Confirm it fails for the expected reason.
2. **Sound Green:** Implement the general architectural logic required to satisfy the invariant. Do not write hacky shortcuts.
3. **Immediate Refactor:** Refactoring is an integral part of the loop, not an afterthought. Clean up duplicated logic, tighten type signatures, and ensure modular seams before moving to the next slice.

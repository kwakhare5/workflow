---
name: typescript-best-practices
description: Use when writing, editing, or refactoring general TypeScript or JavaScript code. Enforces strict type-safety, clean async/await patterns, and modern ESM conventions.
---

# TypeScript & JavaScript Best Practices

## 1. Type Safety
- **No `any`**: Avoid the `any` type at all costs. Use `unknown` if the type is truly dynamic, then narrow it with type guards.
- **Explicit Return Types**: Always specify return types for exported functions, public class methods, and complex utility helpers.
- **Type Guards**: Use type guards (`is`) or assertions (`asserts`) to narrow down types rather than casting with `as`.
- **Strict Null Checks**: Handle `null` and `undefined` explicitly. Use optional chaining (`?.`) and nullish coalescing (`??`) safely.

## 2. Asynchronous Patterns
- **Async/Await**: Prefer `async/await` syntax over raw Promise chaining (`.then()`).
- **Parallel Execution**: Use `Promise.all()` or `Promise.allSettled()` for independent async actions to prevent blocking waterfalls.
- **Error Handling**: Always wrap async calls in `try/catch` blocks and propagate errors with clear context.

## 3. Code Structure & Imports
- **ESM Conventions**: Use ES Modules (`import`/`export`) exclusively.
- **Path Aliases**: Prefer absolute or path-mapped imports (e.g. `~/lib/utils`) over complex relative nesting (`../../utils`).
- **Const over Let**: Declare variables with `const` by default. Use `let` only when re-assignment is required.

---
name: create-verification-skill
description: "Create a project-local verification skill with real launch commands, user flows and proof. Use when the user asks to set up verification for a project."
---

# Create a verification skill

Create a reusable recipe for this project, not generic testing advice. Run only when asked. Follow the user's rules. This skill does not authorize installs, production actions, sends, purchases, commits or pushes.

## 1. Explore

Read the project's rules, README, commands, tests and relevant code. Find:

- What users touch: browser, CLI, desktop, mobile, API or library.
- How to start it, required runtime, ports, readiness, test login and disposable data.
- How to drive it with existing tools. Reuse the project's harness before adding one.
- The main 3-5 user flows, entry points, expected results and meaningful failure states.
- What proof is available: screenshots, traces, terminal output, responses, files or stored state.
- How to isolate a run and identify the processes, data and account it owns.

Read first. Ask only what the repo cannot answer. Never invent commands, selectors or results. If startup is broken, report the blocker. Do not fix product code as part of generation.

## 2. Agree on scope

Show the proposed skill path, flows, driver, proof location and files to create or change. Get approval before writing. If an existing verify skill covers the project, propose updating it instead of duplicating it.

Use the project's existing skill folder. For Antigravity, default to `.agents/skills/verify-<project>/`. A library copy is storage, not an active skill: say how to load it. Do not change links or ignore rules silently.

Use tools and runtimes already available. On Windows, quote paths and use supported PowerShell commands. Ask before adding a dependency or helper. No required Bun, tmux, cloud agents or extra model.

## 3. Write the recipe

Create `SKILL.md` with `name: verify-<project>` and a description naming the app and when to use it. Keep it short. Include:

- **Launch:** exact commands, test environment, readiness check and safe teardown.
- **Doctor:** confirm the intended build, URL/process, test account and isolated data before driving; repeat after a failure or surprise.
- **Drive:** real user steps and stable handles. Load the matching feature recipe. State the expected result before running it.
- **Evidence:** capture action and result, plus a second check of persisted side effects. Name the artifact paths. For UI claims, inspect actual screenshots; for performance, compare measurements. An unrun check is not a pass.
- **Cleanup:** stop only processes this run started; remove only its approved disposable state. Never kill by process name or reset a user's database. Keep evidence after cleanup.

Use the real local app and backend. Mock only isolated external boundaries and label them. A local webhook test does not prove real message delivery. Production, external sends and paid actions need separate approval. If a safe test path is unavailable, stop that flow and report it.

Do not store passwords, tokens, auth state or private user data in the skill or committed artifacts. Name required environment variables, not their values. Inspect a dry-run's effects; do not trust the label.

## 4. Map the flows

Create `features/README.md` as an index. Add one short file per chosen flow with:

- Preconditions and user entry points.
- Exact driver steps and observable expected results.
- Proof to capture and how to check stored changes.
- Gotchas, reset steps and known gaps.

Cover useful error, empty or cancel states where relevant. Do not count an untried entry point as verified. Document optional helpers and their exact invocation.

## 5. Prove and hand off

After approved setup, follow the new recipe once: launch, doctor, drive one mapped flow, inspect proof, clean up. Confirm proof survives cleanup. Clean failed attempts too. Fix recipe/helper errors within scope, then retry; report product bugs without changing expectations to hide them.

Report files changed, commands and exit codes, proof paths, the flow tested and flows still untested. If no live trial completed, label the recipe **draft, unverified**. A successful trial of one flow does not verify the whole app.

When behavior changes, update the affected recipe and re-run it. A full maintenance pass reads and drives every mapped flow, one at a time. Report clean, changed or blocked. No automatic PR, schedule, commit or push.

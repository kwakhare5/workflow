# AGENTS.md - Global Rules (Karan)
Master: C:\Users\kwakh\.agents. Backup: d:\workflow. Project details go in each project's AGENTS.md.

## 1. Voice
- Answer first, in simple everyday English, fewest words needed. Default 2-3 short sentences; use more only when the task needs it.
- No praise, lectures or hype. Cite real files, lines, URLs. Never guess.
- Explain features by user-visible outcome, not internal names.

## 2. Approval
- Free: read-only inspection, searching docs, approved local checks with temp artifacts.
- Ask first: editing or deleting files, schema changes, installs, real data, live external calls.
- Non-trivial task: state understanding and plan in 2-3 sentences. No edits until I say "yes", "proceed" or "go ahead".
- Check docs and code before asking. Ask only questions that could change the plan. Never invent missing keys, requirements or defaults.

## 3. Code
- Least code. Standard library first. No new dependencies unasked. Remove dead code only inside approved scope.
- Never cut validation, error handling, security or requested features.
- Bug: find every caller, fix the root cause once.
- Secrets in environment variables only. Parameterized queries only.
- "ketchup": what changed in under 100 words, then calls waiting on me with your pick.

## 4. Checks
- Bugs, money, safety, permissions, data: failing test first, fix, show both runs. Normal features: build, then drive the changed feature via its verification skill (.agents/skills/verify-<app>) or tests, then show the run.
- Verification: Every project uses a local verification skill (.agents/skills/verify-<app>). If missing, run create-verification-skill to scaffold it. When modifying code, drive only the affected feature from .agents/skills/verify-<app>/features/. If a feature journey changes, run maintain-verification-skill to update the map.
- No mocking project code, databases, APIs or MCP tools. Never silently mock. No browser tests unless it is a UI project.
- Pick checks by what changed and its callers. Go broader only for shared code, dependencies, build config or wide impact. No full UI/backend or full suite for unrelated edits.
- Never hide failures with `any`, unknown casts or empty try/catch. Never weaken or delete tests. Same fix fails twice: stop and ask.
- Report "Verified" (pasted output), "Not checked", and skipped tests by name and reason. Never imply unchecked behavior passes.

## 5. Environment
- Windows PowerShell only: no bash syntax, no &&. Quote paths with spaces.
- Subagent Delegation: Always delegate to a read-only research subagent when: (1) an investigation or search requires exploring more than 3 files, (2) diagnosing a bug across unfamiliar modules, or (3) auditing code against specs. The subagent reads the files and returns only a concise summary with exact citations so the main context stays clean; reviewers never edit; one editor per file. Verify its key claims before relying on them.
- Missing capability: inspect C:\Users\kwakh\.agents\skills\ and C:\Users\kwakh\.agents\library\ first. Then pick a skills.sh skill by fit and access, not install count alone. Ask before `npx skills add`.
- Non-trivial projects keep PRD.md, ARCHITECTURE.md, DESIGN.md, AGENTS.md, TASKS.md, JOURNAL.md (seed from C:\Users\kwakh\.agents\templates\). Update only affected ones. Read ADRs and ARCHITECTURE.md before design questions.
- Search inside files first, then read needed parts plus callers. Show diffs, not whole files. Don't repeat settled decisions.
- Pausing or switching to an unrelated or heavy task: write .scratch\HANDOFF.md (Goal, Changes, Passing Tests, Next Action) and suggest a fresh session.
- After meaningful file changes in projects with JOURNAL.md: add a 4-line card (Problem / Change / Proof / Still broken). Ask about /build-in-public once per meaningful work session.
- Corrected twice on the same thing: fix the root cause, add one "When X, do Y" line below.

## Lessons
<!-- Add one line when corrected: "When X, do Y". Newest on top. -->

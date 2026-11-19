# AGENTS.md - How to work (Global)
Master: C:\Users\kwakh\.agents. Project details go in each project's AGENTS.md.

## Voice
- Simple everyday English. Answer first, fewest words needed; more only when the task needs it.
- Explain features by user-visible outcome, not internal names.
- Cite real files, lines, commands, and pasted output. Never guess or claim unrun checks passed.
- "ketchup": what changed in under 100 words, then calls waiting on me with your pick.

## The flow
- Small fix: brief plan + my yes, then fix, test, and self-review diff. Skip heavy artifacts (grill, spec, tickets); approval is never skipped.
- New feature: grill me (skill: grill-with-docs) until goals and decisions are clear.
- Design: sketch modules, data shapes, and UI direction (skill: codebase-design). Part of the plan I approve.
- Plan: write the spec (skill: to-spec), then break into tickets (skill: to-tickets). Show me both. No code until plan is approved.
- Build: one ticket at a time (skill: implement, skill: tdd). Multi-ticket specs run with parallel helpers (skill: implement-spec), each in an isolated working copy.
- Bugs: use diagnosing-bugs (skill: diagnosing-bugs). Build a tight repro check before fixing anything.
- Tests: bugs and risky logic get a failing test first, then the fix. Show both runs. Test at seams named in the spec.
- Review: substantial diffs get an independent review (skill: code-review). Small changes get an honest self-review.
- Fix loop: fix review findings, re-run failed checks, repeat until requirements pass. Stop on repeated failures or uncertainty; never retry blindly.
- Verify: drive changed features via verify-<project> (generate with create-verification-skill if missing; audit with maintain-verification-skill). "Verified" requires pasted proof; else "Not checked".
- Final check: run project lint, type-check, and build on full combined code before declaring done.
- Ship: draft PR text (skill: pr) for review. Push, publish, merge, and deploy only when I say so.

## Approval
- Approved plan: work without re-asking using only listed files, checks, and test data. Local branch commits are fine.
- Ask again for: scope changes, new dependencies, deletions, real data, unlisted external calls, spending, push, PR, merge to main, or deploy.

## Helpers
- Auto-spawn helpers for parallel research, reviews, build tickets, or long checks. Say so if the tool cannot run helpers.
- Helpers get fresh context, isolated working copies (git worktree/clone), and explicit briefs. One editor per file; reviewers never edit.
- You own helper output: review diffs and spot-check claims before relying on them.
- Local helper merges require explicit plan approval; merging to main always asks.

## Code
- Least code that does the job. Standard library first. No new dependencies without asking.
- Never cut validation, error handling, security, or requested features.
- Fix root causes, not symptoms. Find every caller before changing shared code.
- Commits show only Karan: no bot attribution, no Co-authored-by, no backdated commits.

## Checks & Testing
- Failing test first, then fix, show both runs. No browser tests unless it is a UI project.
- No mocking project code, databases, or APIs. Outside boundary error fakes are allowed for unit tests, but real runs are the only proof.
- Never hide failures with `any`, casts, or empty try/catch. Never weaken or delete tests. Same fix fails twice: stop and ask.

## Security & Spending
- Secrets in environment variables only. Parameterized queries only. No real personal data or phone numbers in code/logs.
- No paid API, MCP, tool, or credit usage in app, tests, or agent runs. If cost is unknown or non-zero, stop and ask.

## Projects & Documentation
- Keep docs in sync as work happens: update README.md when commands or features change; update ARCHITECTURE.md on structural changes; keep TASKS.md, specs, tickets, ADRs, and handoff fresh.
- Add a 4-line JOURNAL.md card after meaningful changes (never every reply). Never create empty documents.
- Ordered tasks only in TASKS.md. No dates, week maps, or later buckets. Read project ADRs and ARCHITECTURE.md before design.

## Environment
- Shell: Use the active environment shell (PowerShell on Windows, bash in WSL/Linux). Quote paths with spaces. Rules and skills live in C:\Users\kwakh\.agents.
- Project skills: Any skill downloaded for a specific project lives strictly in that project's `.agents/skills/` folder, never in the global master.
- Missing capability: 1) search C:\Users\kwakh\.agents\skills\; 2) search C:\Users\kwakh\.agents\library\; 3) research via /find-skills, inspect license/source, propose it, and install via npx skills add only with my approval.
- Pausing/switching sessions: write .scratch\HANDOFF.md (skill: handoff). Ask about /build-in-public once per session.
- Corrected twice: fix root cause, add one "When X, do Y" line below.

## Lessons
<!-- Add one line when corrected: "When X, do Y". Newest on top. -->

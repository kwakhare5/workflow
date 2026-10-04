# AGENTS.md - Global rules (Karan)
# Project facts (stack, commands) live in the project's own AGENTS.md. This file is only how to work.

## 1. Output
- Answer first. Max 5 lines of prose unless I ask for more. Show diffs, not whole files.
- No greetings, apologies, or restating my request.
- If two readings of my request are plausible, or it touches schema, auth, or payments, ask ONE question before editing. Otherwise act.

## 2. Hard rules
1. Touch only what the task needs. No reformatting, no drive-by refactors. Before finishing run `git diff --stat` and explain any file the task did not name.
2. No new dependency, abstraction, or file unless the task needs it. If you add one, say why in one line.
3. Fix the existing code. Do not add a new layer on top of a broken one. Read the current code for the thing you are changing before editing it.
4. Never edit or delete an existing test assertion to make a test pass. If you think the test is wrong, stop and say so.
5. Mock only external services and the clock. Never mock our own modules.
6. UI work starts from an image or an existing component. If there is none, ask for one. Reuse the project's existing fonts, colors, and spacing tokens; do not invent new ones.
7. Quote Windows paths that contain spaces. Pipe long build or test logs to a file and read the last 30 lines.
8. Never install or run `graphify` (or any other tool) unless I ask. If `graphify-out/GRAPH_REPORT.md` exists, read it before grepping many files.

## 3. Done means
Do not say "done" until all of these are true:
- You ran the project's test command (see the project AGENTS.md) and pasted the exit code and the last lines of output.
- For a UI change you opened it and said what you looked at.
- You listed anything you did not verify, labeled "unverified".
If you cannot run the check, say "unverified" instead of "done".
Bug fix: write the failing test first. Feature: one E2E test for the behavior, written with the code.

## 4. When to plan
Write a plan and wait for my OK only if the change touches more than 3 files, a database schema, auth, or payments, or if I say /plan. Otherwise just do it.

## 5. When to run what
| Command | Run it when |
|---|---|
| /grilling | A new project or feature has unclear decisions. Interview me before writing a plan. (/grill-with-docs also writes the glossary.) |
| /to-spec then /to-tickets then /implement | A feature is agreed and needs to be built in slices. |
| /diagnose | A bug or error. Reproduce it with a failing command first. |
| /e2e | Any feature change that a user can click through. |
| /review | Before every commit that changes more than 50 lines. |
| /git-commit | I say save, commit, or push. |
Other skills load on their own from their descriptions. Do not announce them.

## 6. End of every response
End with one line starting `Journal:`.
- If you changed files: append a 4-line work card to JOURNAL.md (Problem / Change / Proof / Still broken), then write `Journal: logged. Mine it with /build-in-public?`
- If you changed nothing: write `Journal: no change.`

## 7. Skill loading policy
Only the rules in this file are always on. Do not load a skill unless the task matches its description or I type its command. If the task does not match a global skill, read LIBRARY-CATALOG.md. If a library skill matches the task, install it into this project with install-skill.ps1, tell Karan in one line which skill you installed and why, then use it. Never install more than the task needs.

## 8. Pointers
- Project facts: ./AGENTS.md in the repo root.
- If the current project has no AGENTS.md, offer to create one from ~/.agents/templates/AGENTS.project.md (script: ~/.agents/scripts/new-project.ps1). Do not create it without asking.
- Skills: ~/.agents/skills (and mirrors). Each loads from its own description.
- Library: ~/.agents/library (not loaded; install per project with ~/.agents/scripts/install-skill.ps1).

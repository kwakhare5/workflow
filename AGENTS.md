# AGENTS.md - Global rules (Karan)
Stack and commands live in the project's own AGENTS.md. This file is only how to work.

## 1. Output
- Answer first. Short. Plain simple words. No greetings, no apologies.
- Brutal honesty. No glazing, no overselling.
- Research: use the internet and real sources. Verify and cite. Never assume.

## 2. Permission
- Anything unclear or outside what we decided: ASK me. Never guess.
- Edits and new files needed for the current task are authorized. Do them.
- Post, publish, send, delete or install a tool: ask first unless I already approved that action. Git has its own rules below.
- Tests, builds, linters and browser checks for the task are authorized. No need to ask again.

## 3. Scope
- Touch only what the task needs. No reformatting, no drive-by refactors. Before finishing, run git diff --stat and explain any file the task did not name. Report what you deleted.
- Fix the existing code. No new layer on a broken one. Read the current code first.
- No new dependency, abstraction or file unless the task needs it. Say why in one line.
- Never revert or change work you did not make.
- Never edit a test assertion to make it pass. If the test looks wrong, stop and say so.
- UI: start from an image or an existing component. If none, ask. Reuse the project's fonts, colors, spacing. Never invent new ones.

## 4. Evidence
- No claim without a file path + line, a source URL or a command you ran.
- "Done" needs: run the project's check and show exit code + last lines. An unrun check is not a pass. Say what you didn't run; label it "unverified".
- UI change: open it and say what you looked at.

## 5. Testing
- E2E first. Isolated tests only for meaningful failure modes that are slow or hard to cover through the UI; list those failure modes before writing the tests.
- Bug: reproduce with my steps first, write a failing regression test, fix the cause, then re-run the same steps. Can't reproduce? Say what is missing.
- Feature: build it, verify it works, then write the E2E test. Small smoke set, critical paths only.
- Mock only external services and the clock. Never mock our own modules.

## 6. Git
- Commit when I say save or commit. Small commits, conventional style. Push only when I say push; don't ask again for the same push.
- Never --no-verify. No AI attribution trailers.

## 7. Skills
- Skills in ~/.agents/skills load by description. Do not announce them.
- Rare skills sit in ~/.agents/library. Task needs niche knowledge: copy the match into the project, tell me in one line. Never more than the task needs.

## 8. House rules
- Windows: quote paths with spaces. Pipe long logs to a file, read the last 30 lines.
- Find a sharp edge or repeat a mistake: propose one new line for this file. Never edit this file yourself.
- Keep 5 real failure prompts with expected results in failures.md. Re-run them when trimming rules or switching models; report any failures.
- Git is the backup. Anything committed can be brought back.
- End every response with one Journal line. Files changed: append a 4-line work card to JOURNAL.md (Problem / Change / Proof / Still broken), write "Journal: logged.", then ask "Mine it with /build-in-public?" Nothing changed: "Journal: no change."

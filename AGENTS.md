# AGENTS.md - Global rules (Karan)
Stack and commands live in the project's own AGENTS.md. This file is only how to work.

## 1. Output
- Answer first. Short. Plain simple words. No greetings, no apologies.
- Brutal honesty. No glazing, no overselling.
- Research: use the internet and real sources. Verify and cite. Never assume.

## 2. Ask first
- Anything unclear or outside what we decided: ASK me. Never guess, never assume.
- Push, post, publish, send, delete, new files: always ask first.
- Edits for the task I gave: that IS the task. Do them.

## 3. Scope
- Touch only what the task needs. No reformatting, no drive-by refactors. Before finishing, run git diff --stat and explain any file the task did not name.
- Fix the existing code. No new layer on a broken one. Read the current code first.
- No new dependency, abstraction, or file unless the task needs it. Say why in one line.
- Never revert or change work you did not make.
- Never edit a test assertion to make it pass. If the test looks wrong, stop and say so.
- UI: start from an image or an existing component. If none, ask. Reuse the project's fonts, colors, spacing. Never invent new ones.

## 4. Evidence
- No claim without a file path + line, or a command you ran.
- "Done" needs: you ran the project's check and show exit code + last lines. Else say "unverified".
- UI change: open it and say what you looked at.

## 5. Testing
- No unit tests. E2E only.
- Bug: write the failing E2E test first, then fix.
- Feature: build it, verify it works, then write the E2E test. Small smoke set, critical paths only.
- Mock only external services and the clock. Never mock our own modules.

## 6. Git
- Commit when I say save or commit. Small commits, conventional style. Push only when I say push.
- Never --no-verify. No AI attribution trailers.

## 7. Skills
- Skills in ~/.agents/skills load by description. Do not announce them.
- Rare skills sit in ~/.agents/library. Task needs niche knowledge: copy the match into the project, tell me in one line. Never more than the task needs.

## 8. House rules
- Windows: quote paths with spaces. Pipe long logs to a file, read the last 30 lines. Never install or run a tool unless I ask.
- Find a sharp edge or repeat a mistake: propose one new line for this file. Never edit this file yourself.
- Git is the backup. Anything committed can be brought back.
- End every response with one Journal line. Files changed: append a 4-line work card to JOURNAL.md (Problem / Change / Proof / Still broken), write "Journal: logged.", then ask "Mine it with /build-in-public?" Nothing changed: "Journal: no change."
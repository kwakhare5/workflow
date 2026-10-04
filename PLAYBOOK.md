# PLAYBOOK - how I work with AI

## 1. Start something
- New idea: "grill me about X". It asks questions until the idea is sharp.
- Turn it into a spec: "to-spec". Split a big spec: "to-tickets".
- Not sure what fits: "ask-matt" - it names the right skill.

## 2. Build and fix
- Build: "implement" one ticket at a time.
- Bug: "this is broken: ..." - it writes a failing test first, then fixes.
- UI: always give an image or reference first. It never invents design.

## 3. Save and ship
- "save" = commit. "push" = push. It never does either on its own.
- Done means checks ran with exit codes shown. Else it says "unverified".

## 4. After work
- Journal line is automatic. Say yes to "Mine it with /build-in-public?" when you shipped something.
- "retro" after a session: it suggests improvements to the setup itself.

## 5. Rare needs
- "check the library for X" - it copies the skill into the project and uses it.
- Library = storage. Global = loaded every session. Keep global lean.

## 6. New project
- Run new-project.ps1. It sets up AGENTS.md from the template, journal, structure.

## 7. Where everything lives
- C:\Users\kwakh\.agents\AGENTS.md - global rules (how to work)
- C:\Users\kwakh\.agents\skills\ - global skills, loaded every session
- C:\Users\kwakh\.agents\library\ - rare skills, storage only
- C:\Users\kwakh\.agents\templates\ - project templates
- JOURNAL.md per project - work cards, feeds tweets
- github.com/kwakhare5/workflow - the backup

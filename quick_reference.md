# Karan's AI Workflow — Quick Reference Card
> Keep this open. Read it daily until the habits are automatic.

---

## The 3 Habits That Matter Most

```
1. @GRILL before every non-trivial feature
   Don't start building until the AI has asked you questions.

2. "Read CLAUDE.md and CONTEXT.md" at the start of every session
   Paste this literally. 10 seconds. Saves 30 minutes.

3. "Summarize + fill SESSION RESUME" at the end of every session
   This IS your memory. It replaces Obsidian for you.
```

---

## Session Start Script (paste this verbatim)

```
Read CLAUDE.md, CONTEXT.md, and Section 7 SESSION RESUME.
Summarize what's open, then let's work on: [describe task]
```

## Session End Script (paste this verbatim)

```
Done for today. Summarize what we built and update Section 7
SESSION RESUME in CLAUDE.md with what changed, what's next,
and any blockers.
```

---

## Command Reference

### Before you build anything

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `@GRILL` | AI interviews you, aligns before building | EVERY non-trivial feature |
| `@TO-SPEC` | Writes a feature spec document | Complex multi-part feature |
| `@TO-ISSUES` | Breaks spec into GitHub issues | After spec is written |
| `@WAYFINDER` | Maps a huge foggy project | Project is too big to see clearly |
| `@RESEARCH` | Reads docs/APIs and files a summary | Unknown library or API |
| `@PROTOTYPE` | Builds throwaway UI/logic to explore | Design questions |

### Social & Launch

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `@TWEET` | Drafts, refines, or brainstorms X/Twitter posts | You want to post an update or brainstorm ideas |

### While building

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `@DIAGNOSE` | Rigorous 6-phase bug loop | Something is broken |
| `@TDD` | Test-first development | Complex business logic |
| `@ZOOM` | Maps codebase structure | Before sweeping changes |
| `@REVIEW` | Reviews changes before merge | Before committing big changes |
| `@HANDOFF` | Compresses session context | Session > 20 messages |

### For UI work

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `/impeccable audit` | Full UI quality check | UI feels off, not sure what |
| `/impeccable polish` | Final quality pass | Before shipping |
| `/impeccable bolder` | More contrast, stronger design | Looks too safe/boring |
| `/impeccable quieter` | Reduce visual noise | Too loud/busy |
| `/impeccable animate` | Add motion, micro-interactions | Feels static |
| `/impeccable colorize` | Fix color palette | Colors look flat |
| `/impeccable typeset` | Fix typography | Fonts/sizing look wrong |
| `/impeccable layout` | Fix spacing and structure | Layout feels broken |

### Before shipping

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `@AUDIT` | Scan AI-generated code for production risks | Before any deployment |
| `/impeccable polish` | Final UI pass | UI is done |
| `@ARCHITECTURE-REVIEW` | Find refactor opportunities | Codebase is getting messy |
| `@ASK-MATT` | Route to the right command | Don't know what to use |

### Ship / marketing (after deployment)

| Type this | Does this | Use when |
|-----------|-----------|----------|
| `@launch skill` | Full launch strategy | Preparing to go public |
| `@seo-audit skill` | SEO health check | After deploying landing page |
| `@copywriting skill` | Write landing page copy | Building marketing page |
| `@pricing skill` | Pricing decisions | Deciding what to charge |
| `@analytics skill` | Set up tracking | Before launch |
| `@emails skill` | Email sequence | Post-launch nurture |
| `@cro skill` | Conversion optimization | Page not converting |

---

## What Each File Is For

| File | Where it lives | When AI reads it | You fill it |
|------|---------------|-----------------|-------------|
| `AGENTS.md` | `~/.gemini/config/` (global) | Every session, auto | Never (set once) |
| `CLAUDE.md` | Project root | Every session, you ask | Sections 1-4 at start |
| `CONTEXT.md` | Project root | Every session, you ask | At project start (10 min) |
| `ARCHITECTURE.md` | Project root | Only when you ask | @ZOOM generates it |

---

## New Project Checklist

```
□ 1. Copy templates to project root (one command):
      $t="C:\Users\kwakh\.gemini\config\templates"; $d="D:\YourProject"
      @("CLAUDE.md","CONTEXT.md","ARCHITECTURE.md",".editorconfig",".prettierrc.json") |
        %{ Copy-Item "$t\$_" "$d\$_" }

□ 2. Fill in CLAUDE.md Sections 1-4 manually:
      - Section 1: Project name + goal + status
      - Section 2: Exact tech stack (Next.js 15, not just "Next.js")
      - Section 3: Actual npm commands
      - Section 4: 3-5 project-specific rules

□ 3. First IDE session — let @GRILL fill CONTEXT.md:
      Type: "I'm starting [Project Name]. Read CLAUDE.md. Then @GRILL"
      AI asks you questions about your domain → you answer →
      AI writes CONTEXT.md automatically. Done.

□ 4. Build your first feature:
      "@GRILL — I want to build [feature]"

□ 5. Commit:
      git add -A
      git commit -m "feat: initial setup"
```

> **@GRILL does two jobs at project start:**
> 1. Fills CONTEXT.md with your domain terms and business rules
> 2. Aligns the AI on exactly what you're building before any code gets written
>
> After that, just say `@GRILL` before any non-trivial feature. Same command, same habit.

## Existing Project Checklist (new day)

```
□ "Read CLAUDE.md and CONTEXT.md."
□ "Here's what we're doing today: [task from SESSION RESUME]"
□ @GRILL before any non-trivial feature
□ @HANDOFF when session > 20 messages
□ "Summarize + fill SESSION RESUME" at end of day
□ git commit at every stable checkpoint
```

> **How CONTEXT.md stays up to date:**
> You never manually edit it after project start.
> - AI updates it automatically (AGENTS.md coding loop Step 6)
> - If you make a key decision, say: "Add this to the ADR table in CONTEXT.md: [decision + why]"

## Before Shipping Checklist

```
□ @AUDIT — catch production risks
□ /impeccable polish — final UI pass
□ npm run build — zero errors
□ npm run lint — zero errors
□ Test the critical flows yourself (click through)
□ git push → deploy to Vercel/Render
□ Check live URL, test again
```

---

## Testing — How to Write Tests for a Feature

### The command: `@TDD`

Before building any feature with business logic, say:
```
@TDD — I want to build [feature description]
```
AI writes the test first (red) → writes code to pass it (green) → refactors. You don't write the test manually.

**When to use @TDD:**
- ✅ Business logic (calculations, validations, state transitions)
- ✅ API route handlers
- ✅ Database query functions
- ✅ Agent/ML logic (PreFill)
- ❌ Skip for: pure UI components, CSS changes, static content

---

### Per-Project Test Commands

| Project | Run tests | Framework |
|---------|-----------|----------|
| **Git for Prompts** | `npm run test` or `npx vitest` | Vitest |
| **Karan Portfolio** | `pnpm build` (no unit tests — build IS the test) | N/A |
| **PreFill** | `pytest backend/tests/ -v` | pytest (16 tests) |
| **Tonal** | Manual: load unpacked in Chrome, test on real sites | Manual |

---

### Testing Patterns by Stack

**Next.js / TypeScript (Git for Prompts)**
```
@TDD — I want to build the version history API route
```
→ AI writes `__tests__/api/versions.test.ts` first
→ Tests the route handler with mocked Drizzle + mocked Clerk auth
→ Then writes the actual route handler

**Python / FastAPI (PreFill)**
```
@TDD — I want to add anomaly exclusion to the consumption forecast
```
→ AI writes `backend/tests/test_consumption_model.py` first
→ Tests with fixtures (mock DB rows, mock Prophet output)
→ Then writes the function in `backend/ml/`
→ Runs `pytest backend/tests/ -v` — all 16 + new must pass

**Chrome Extension (Tonal)**
```
@TDD — I want to add a LinkedIn adapter
```
→ No automated test runner — AI writes the adapter
→ Provides manual test checklist: what to click, what to verify
→ You load unpacked in Chrome and verify the checklist

**Portfolio (static / Next.js)**
```
# No @TDD needed — just:
pnpm build   # must pass with zero errors
# Then visually verify in browser
```

---

### What Gets Tested vs Skipped

| Test this | Skip this |
|-----------|-----------|
| Business logic functions | CSS / styling changes |
| API route handlers | Static content updates |
| DB query functions | Config file changes |
| Auth/permission logic | UI layout tweaks |
| Agent node logic (PreFill) | Package version bumps |
| API key hashing (Git for Prompts) | README edits |

---

## Model Routing

| Task | Use |
|------|-----|
| Quick question, simple fix, formatting | Gemini Flash |
| Feature build, debugging, refactoring | Claude Sonnet |
| Hard bug, architecture, multi-file, complex | Claude Sonnet Thinking |

---

## Global Config — Your Single Source of Truth

**Location:** `C:\Users\kwakh\.gemini\config\`

This is the ONLY place that matters. The IDE reads from here.
`d:\New folder` has been deleted — global config is self-contained.

| File | What it is |
|------|------------|
| [AGENTS.md](file:///C:/Users/kwakh/.gemini/config/AGENTS.md) | Global rules, commands, model routing |
| [templates/CLAUDE.md](file:///C:/Users/kwakh/.gemini/config/templates/CLAUDE.md) | Copy to every new project root |
| [templates/CONTEXT.md](file:///C:/Users/kwakh/.gemini/config/templates/CONTEXT.md) | Copy to every new project root |
| [templates/ARCHITECTURE.md](file:///C:/Users/kwakh/.gemini/config/templates/ARCHITECTURE.md) | Copy to every new project root |
| [quick_reference.md](file:///C:/Users/kwakh/.gemini/config/quick_reference.md) | This file — your cheat sheet |
| [scripts/update-impeccable.ps1](file:///C:/Users/kwakh/.gemini/config/scripts/update-impeccable.ps1) | Run to update impeccable skill |
| [resources/claude-ai-project-start-prompt.md](file:///C:/Users/kwakh/.gemini/config/resources/claude-ai-project-start-prompt.md) | Paste into claude.ai for new projects |

---

## New Project Bootstrap (one command)

```powershell
# Copy all templates to your new project
$t = "C:\Users\kwakh\.gemini\config\templates"
$d = "D:\YourProjectName"   # change this

@("CLAUDE.md","CONTEXT.md","ARCHITECTURE.md",".editorconfig",".prettierrc.json") |
  ForEach-Object { Copy-Item "$t\$_" "$d\$_" }

Write-Host "Templates copied. Fill CLAUDE.md Sections 1-4, then @GRILL." -ForegroundColor Green
```

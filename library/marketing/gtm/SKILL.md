---
name: gtm
description: Multi-project Go-To-Market command center for Karan Wakhare. Mines commits and journals to draft authentic X and LinkedIn posts (TRIP framework), runs Agent-Reach social radar, and qualifies developer outreach leads across Git for Prompts, IndieForest, and Grocer.
---

# GTM Skill — Antigravity Command Center

When the user asks for anything related to GTM, drafting posts, social listening, or developer outreach:

1. **Auto-Detect Project**:
   - Detect project from user prompt (`gfp` / `git-for-prompts`, `forest` / `indieforest`, `grocer`). Default to `git-for-prompts`.

2. **Actions**:
   - **Draft Posts (`/gtm draft [project]` or "draft today's post"):**
     Execute `python D:\GTM\engine\drafter.py --project [project]`
     Render the 1-Click Copy format for X (under 280 chars, visual proof recommendation, 1st reply link) and LinkedIn (TRIP framework + 1st comment link).
   - **Social Radar (`/gtm scout [project]` or "scout X/Reddit"):**
     Execute `python D:\GTM\engine\scout.py --project [project]`
     Render live search queries, intent descriptions, and high-signal copy-paste technical replies.
   - **Lead Outreach (`/gtm prospect [project]` or "find leads"):**
     Execute `python D:\GTM\engine\prospect.py --project [project]`
     Render qualified segments and personalized peer-to-peer developer notes.
   - **Full Run (`/gtm all [project]` or "run everything"):**
     Execute `python D:\GTM\engine\runner.py all [project]`

3. **Invariants**:
   - Zero corporate hype, zero cringe sales language.
   - Enforce `no-ai-slop`: no "game changer", "supercharge", "delve", "elevate".
   - Ground all drafts in actual commit diffs and real architecture choices.

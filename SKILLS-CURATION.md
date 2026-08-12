# Skills Curation — 223 skills audited

Verdicts: ✅ KEEP | 🗑️ DELETE | ⚠️ CONDITIONAL (keep only if you use X) | 🔀 MERGE (overlaps, worth consolidating)

**Total: 223 → delete 49 → keep 174.**

> ✅ **STATUS: EXECUTED 2026-08-12** — all 49 deletions applied, `skills-lock.json` re-synced (4 stale skillPaths fixed), `playbook.md` convert rows repointed to `pdf`/`xlsx`/`docx`. Remaining skill dirs: 174. Lockfile hashes left as source pins (local files were edited after install, so only `npx skills update` recomputes them).
**Deletes fall into 3 buckets:** (1) `*`-pro/expert persona blobs from the same community spawner (2026-02-27 batch), (2) 8 SecureCoder VS Code-extension skills that need a sidecar API port this agent doesn't have, (3) genuine same-task duplicates.

---

## 1. Planning & Grilling (Matt Pocock system) — 30 skills

| Skill | Verdict | Why |
|---|---|---|
| grilling | ✅ | The engine. Keep. |
| grill-with-docs | ✅ | grilling + domain-modeling; the workflow's main entry. |
| grill-me | 🗑️ | Pure alias — body is literally "Run a /grilling session". |
| loop-me | ✅ | Specialized grilling for workflow specs. Keep. |
| ask-matt | ✅ | Skill router. Keep. |
| to-spec / to-tickets / to-questionnaire | ✅ | Different outputs (spec / tickets / questionnaire). Keep all. |
| wayfinder / triage / implement | ✅ | Pipeline steps. Keep. |
| request-refactor-plan | ✅ | Keep. |
| research | ✅ | Keep. |
| prototype | ✅ | Keep. |
| domain-modeling | ✅ | Keep. |
| ubiquitous-language | ✅ | Keep (overlaps domain-modeling slightly — complementary). |
| codebase-design | ✅ | Keep. |
| improve-codebase-architecture | ✅ | Keep. |
| setup-ts-deep-modules | ✅ | Keep. |
| setup-matt-pocock-skills | ✅ | One-time setup. Keep. |
| diagnosing-bugs | ✅ | Keep. |
| tdd / teach / wait-what / explain-usage | ✅ | Keep. |
| handoff / claude-handoff | ✅ | Different mechanisms (doc vs live agent). Keep both. |
| consolidate-memory | ✅ | Practical memory hygiene. Keep. |
| skill-creator | ✅ | Create/modify/eval skills. Keep. |
| writing-great-skills | ✅ | Reference vocab for skill writing. Keep (complements skill-creator). |

## 2. gstack workflow — 16 skills

| Skill | Verdict | Why |
|---|---|---|
| ship | ✅ | Creates PR. |
| land-and-deploy | ✅ | Merges + verifies AFTER ship. Sequential, NOT duplicates. Keep both. |
| guard | ✅ | Umbrella safety skill. |
| careful | ✅ | **guard's hook script calls this path** — must keep. |
| freeze | ✅ | **guard's hook script calls this path** — must keep. |
| health / benchmark / canary / retro | ✅ | Keep. |
| qa | ✅ | Systematic web-app QA + fix. Keep. |
| autoplan | ✅ | Orchestrates the 3 plan reviews. |
| plan-ceo-review / plan-eng-review / plan-design-review | ✅ | The 3 reviews autoplan runs. Keep as set. |
| design-review | 🔀 | Big (1994 lines) designer QA. Overlaps impeccable audit/critique. Keep only if you run gstack's loop; else delete. |
| setup-browser-cookies | ✅ | benchmark dependency. Keep. |

## 3. Vercel pack (official, in skills-lock.json) — 11 skills

| Skill | Verdict | Why |
|---|---|---|
| deploy-to-vercel | ✅ | Interactive deploy. |
| vercel-cli-with-tokens | ✅ | Non-interactive token deploy. Complementary. |
| vercel-optimize | ✅ | Cost/perf optimization. Distinct. |
| vercel-composition-patterns | ✅ | React composition. Keep. |
| vercel-react-view-transitions | ✅ | View Transition API. Unique. |
| vercel-react-best-practices | ✅ | Official React/Next perf, 70 rules. **Keep this one.** |
| react-best-practices | 🗑️ | Same Vercel content repackaged ("source: community") — dupe of vercel-react-best-practices. NOTE: skills-lock.json currently points the lock entry at `skills/react-best-practices/`, so re-sync (`npx skills update`) after deleting. |
| vercel-react-native-skills | ✅ | Official RN/Expo. **Keep this one.** |
| react-native-architecture | 🗑️ | Dupe of vercel-react-native-skills. |
| vercel-deployment | 🗑️ | vibeship-spawner blob — dupe of deploy-to-vercel + vercel-cli-with-tokens. |
| web-design-guidelines / writing-guidelines | ✅ | Anthropic standards checklists. Keep. |

## 4. Cloudflare pack (official family) — 10 skills — ⚠️ CONDITIONAL

cloudflare (umbrella), agents-sdk, workers-best-practices, wrangler, durable-objects, sandbox-sdk, cloudflare-email-service, cloudflare-one, cloudflare-one-migrations, turnstile-spin

**Keep all if you do Cloudflare work — they deliberately cross-reference each other. Delete the whole pack if you don't.** Not duplicates of each other.

## 5. HyperFrames pack — 8 skills — ⚠️ CONDITIONAL

hyperframes, hyperframes-cli, hyperframes-core, hyperframes-animation, hyperframes-creative, hyperframes-keyframes, hyperframes-registry, media-use

Modular system (entry → CLI → core → animation → creative → keyframes → registry → media), not duplicates. **Keep as a set only if you build HyperFrames videos; otherwise this is the single biggest bloat block.**

## 6. Security — 16 skills

| Skill | Verdict | Why |
|---|---|---|
| api-security-testing | ✅ | Keep. |
| web-security-testing | ✅ | Keep (OWASP). |
| sql-injection-testing | 🗑️ | Niche subset of web-security-testing (injection is covered there). |
| turnstile-spin | ✅ | (Cloudflare pack). |
| securecoder_generation | 🗑️ | **SecureCoder VS Code extension skills.** They read an API port from a sidecar file the extension writes. Outside that extension they fire on every codegen ("CRITICAL: MUST be called before any new package") and break the flow. Delete unless you use SecureCoder. |
| securecoder_persona | 🗑️ | Same reason. |
| scan_dependencies | 🗑️ | Same reason. |
| run_security_scanner | 🗑️ | Same reason. |
| determine_threat_model | 🗑️ | Same reason. |
| create_security_implementation_plan | 🗑️ | Same reason. |
| generate_security_audit_report | 🗑️ | Same reason. |
| run_poc | 🗑️ | Same reason. |

## 7. Scraping — 3 skills — ⚠️ CONDITIONAL

defuddle (Anthropic, clean markdown), scrapling-official (anti-bot), apify-ultimate-scraper (Apify platform)

Different tools for overlapping jobs. Keep only the ones you use.

## 8. Docs & conversion — 18 skills

| Skill | Verdict | Why |
|---|---|---|
| pdf | ✅ | Superset: read, merge, split, OCR, forms. |
| convert-pdf-to-md | 🗑️ | Read-only subset of pdf. |
| docx | ✅ | Superset. |
| convert-word-to-md | 🗑️ | Read-only subset of docx. |
| xlsx | ✅ | Superset. |
| convert-excel-to-md | 🗑️ | Read-only subset of xlsx. |
| pptx | ✅ | Keep. |
| documentation | 🗑️ | Generic doc-generation workflow — dupe of doc-coauthoring + readme + writing-guidelines. |
| doc-coauthoring | ✅ | Guided interactive workflow. Keep. |
| readme | ✅ | README-focused. Keep. |
| edit-article | ✅ | Article editing. Keep. |
| writing-beats / writing-fragments / writing-shape | ✅ | One writing system, keep the trio. |
| writing-for-agents | ✅ | Skills/AGENTS.md writing. Keep. |
| writing-guidelines | ✅ | (Vercel/Anthropic checklist). |
| code-tour | ✅ | Keep. |
| internal-comms | ✅ | Personal formats. Keep. |

## 9. Design & UI — 16 skills

| Skill | Verdict | Why |
|---|---|---|
| impeccable | ✅ | **Master UI skill** (23 commands). Best-in-class here. |
| frontend-design | ✅ | Build new UI from scratch. Keep. |
| ui-ux-pro-max | 🗑️ | Generic community blob — dupe of frontend-design + impeccable + web-design-guidelines. |
| web-design-guidelines | ✅ | (Anthropic checklist). |
| apple-design | ✅ | Distinct aesthetic reference. Keep. |
| emil-design-eng | ✅ | Umbrella for the animation review bar. Keep. |
| animation-vocabulary | ✅ | Motion glossary. Keep. |
| find-animation-opportunities | ✅ | Keep. |
| improve-animations | ✅ | Keep. |
| review-animations | ✅ | Keep. (emil + 3 animation skills = coherent system.) |
| canvas-design / algorithmic-art | ✅ | Static art — distinct. Keep. |
| brand-guidelines | ✅ | Anthropic brand. Keep. |
| theme-factory | ✅ | Theme toolkit. Keep. |
| web-artifacts-builder | ⚠️ | claude.ai HTML artifacts. Keep if you use claude.ai artifacts. |
| pick-ui-library | ✅ | Keep. |
| tailwind-patterns | ✅ | Tailwind v4 principles. **Keep.** |
| tailwind-design-system | 🗑️ | Dupe of tailwind-patterns (tokens/variants/a11y). |
| tailwind-v4-shadcn | ✅ | Concrete setup + gotchas. Keep. |
| shadcn | ✅ | Keep. |

## 10. Frontend / JS / TS — 20 skills

| Skill | Verdict | Why |
|---|---|---|
| typescript-best-practices | ✅ | Enforced style rules. **Keep.** |
| typescript-expert | 🗑️ | Overlaps typescript-best-practices (+ monorepo content covered by setup-ts-deep-modules). |
| typescript-pro | 🗑️ | Community blob dupe. |
| nodejs-best-practices | ✅ | Framework decision-thinking. Keep. |
| nextjs-best-practices | ✅ | App Router principles. Keep. |
| nextjs-supabase-auth | 🗑️ | vibeship blob — dupe of supabase (covers Next.js auth + RLS). |
| react-patterns | 🗑️ | Dupe of vercel-composition-patterns + vercel-react-best-practices. |
| react-state-management | ✅ | Redux/Zustand/Jotai/React Query. Keep. |
| zustand-store-ts | 🗑️ | Thin dupe of react-state-management's Zustand coverage. |
| react-ui-patterns | ✅ | Async UI states. Keep. |
| react-component-performance | 🗑️ | Dupe of vercel-react-best-practices perf rules. |
| vercel-composition-patterns | ✅ | (Vercel pack). |
| vercel-react-best-practices | ✅ | (Vercel pack). |
| vercel-react-native-skills | ✅ | (Vercel pack). |
| react-native-architecture | 🗑️ | Dupe of vercel-react-native-skills. |
| trpc-fullstack | ✅ | Keep. |
| api-patterns | ✅ | API decision framework. **Keep this one.** |
| api-design-principles | 🗑️ | Same job as api-patterns (REST/GraphQL, versioning, pagination) — community blob. |

## 11. Python — 6 skills

| Skill | Verdict | Why |
|---|---|---|
| python-best-practices | ✅ | Enforced. **Keep.** |
| python-pro | 🗑️ | Community blob dupe. |
| fastapi-best-practices | ✅ | Enforced. **Keep.** |
| fastapi-pro | 🗑️ | Community blob dupe. |
| python-testing-patterns | ✅ | Keep. |
| sqlalchemy-expert | ⚠️ | Keep if using SQLAlchemy. |

## 12. Database — 9 skills

| Skill | Verdict | Why |
|---|---|---|
| database-design | ✅ | Decision framework. **Keep.** |
| database-architect | 🗑️ | Community blob dupe of database-design. |
| database-optimizer | 🗑️ | Community blob dupe of postgres-best-practices + performance-optimizer. |
| database-migrations-sql-migrations | ✅ | Keep. |
| postgres-best-practices | ✅ | Supabase's Postgres perf. **Keep.** |
| neon-postgres | 🗑️ | vibeship blob dupe of postgres-best-practices + supabase. |
| supabase | ✅ | Platform umbrella. Keep. |
| drizzle-orm-expert | ⚠️ | Keep only if using Drizzle. |
| prisma-expert | ⚠️ | Keep only if using Prisma. (Keep just the ORM(s) you actually use.) |

## 13. Backend / infra — 17 skills

| Skill | Verdict | Why |
|---|---|---|
| software-architecture | ✅ | Well-scoped clean-arch/DDD triggers. **Keep.** |
| domain-driven-design | 🗑️ | Dupe — covered by software-architecture + domain-modeling + ubiquitous-language. |
| clean-code | ✅ | Style reference. Keep. |
| code-simplifier | 🔀 | Overlaps clean-code + ponytail + codebase-cleanup. Merge or delete. |
| senior-architect | 🗑️ | Generic blob dupe of software-architecture. |
| microservices-patterns | 🗑️ | Generic community blob, no concrete trigger scope. |
| cloud-devops | 🗑️ | Generic umbrella dupe of terraform-specialist + docker-expert + github-actions-templates. |
| docker-expert | ✅ | Keep (concrete). |
| terraform-specialist | ✅ | Keep. |
| github-actions-templates | ✅ | Keep. |
| stripe-integration | ✅ | Keep. |
| auth-implementation-patterns | ✅ | Keep. |
| nestjs-expert | ⚠️ | Keep only if using NestJS. |
| graphql-architect | ⚠️ | Keep only if using GraphQL (api-patterns covers the REST/GraphQL decision). |
| trpc-fullstack | ✅ | Keep. |
| api-patterns | ✅ | Keep. |
| api-security-testing | ✅ | Keep. |

## 14. AI / agents — 7 skills

| Skill | Verdict | Why |
|---|---|---|
| ai-engineer | 🗑️ | Community blob — dupe of rag-engineer + langchain-architecture + langgraph. |
| rag-engineer | ⚠️ | Real RAG content (341 lines). Keep if doing RAG. |
| langchain-architecture | ⚠️ | Keep if using LangChain. |
| langgraph | ⚠️ | Keep if using LangGraph. (These 3 overlap; keep only what you use.) |
| prompt-engineer | ✅ | Prompt frameworks. Keep. |
| mcp-builder | ✅ | Keep. |
| agent-orchestrator | 🗑️ | Portuguese meta-skill for a specific ecosystem — dupe of ask-matt as a router. |

## 15. Review & cleanup — 13 skills

| Skill | Verdict | Why |
|---|---|---|
| code-review | ✅ | **Main review skill** (standards + spec). Keep. |
| code-review-excellence | 🗑️ | 48-line soft-skills essay; no process over code-review. |
| ponytail-review | ✅ | Over-engineering diff review. Keep (complements code-review). |
| ponytail-audit | ✅ | Repo-wide version of ponytail-review. Keep. |
| ponytail | ✅ | Writing-time simplification. Different phase. Keep. |
| production-code-audit | ✅ | **Deep line-by-line audit. Keep this one.** |
| codebase-audit-pre-push | 🗑️ | Dupe of production-code-audit (junk/dead-code/security pass). |
| vibe-code-auditor | 🗑️ | Dupe of production-code-audit. |
| codebase-cleanup | ✅ | The /cleanup command. Keep. |
| codebase-cleanup-refactor-clean | 🗑️ | Persona blob dupe of codebase-cleanup + clean-code. |
| codebase-cleanup-tech-debt | 🗑️ | Persona blob dupe of codebase-cleanup + health. |
| code-simplifier | 🔀 | (see backend) — overlaps ponytail/clean-code. |
| improve-codebase-architecture | ✅ | (planning system). |

## 16. Testing — 9 skills

| Skill | Verdict | Why |
|---|---|---|
| tdd | ✅ | Keep. |
| e2e-testing | ✅ | Playwright E2E workflow. **Keep.** |
| playwright-skill | 🗑️ | Tool deep-dive subsumed by e2e-testing. |
| testing-qa | 🗑️ | Umbrella dupe of e2e-testing + javascript-testing-patterns + python-testing-patterns + tdd. |
| qa | ✅ | (gstack) systematic QA + fix — different intent from e2e-testing. Keep. |
| javascript-testing-patterns | ✅ | Keep. |
| python-testing-patterns | ✅ | Keep. |
| migrate-to-shoehorn | ✅ | Keep. |
| benchmark | ✅ | (gstack). |

## 17. Performance — 5 skills

| Skill | Verdict | Why |
|---|---|---|
| web-perf | ✅ | Measurement via Chrome DevTools MCP. **Keep.** |
| web-performance-optimization | 🗑️ | Community blob dupe of web-perf. |
| performance-optimizer | 🗑️ | Community blob dupe of web-perf + postgres-best-practices. |
| react-component-performance | 🗑️ | (see frontend — dupe of vercel-react-best-practices). |
| vercel-optimize | ✅ | (Vercel pack — cost). |

## 18. Marketing & growth — 12 skills

| Skill | Verdict | Why |
|---|---|---|
| copywriting / emails / cro / ab-testing / analytics / pricing / launch / seo-audit | ✅ | Distinct domains. Keep all. |
| build-in-public | ✅ | Main X-posts engine. Keep. |
| x-ghostwriter-indie-aidev-twitter-niche | 🔀 | Niche style overlay on build-in-public. Merge into it if you post in that niche; else delete. |

## 19. Personal / utility — 11 skills

| Skill | Verdict | Why |
|---|---|---|
| morning / schedule / obsidian-vault / scaffold-exercises / setup-cowork | ✅ | Personal, keep. |
| git-commit / setup-pre-commit / resolving-merge-conflicts / permissioned-github | ✅ | Keep. |
| git-guardrails-claude-code | ✅ | Keep (Claude Code specific, but harmless). |
| wizard | ✅ | Keep. |
| antigravity_guide | ✅ | AGY guide. **Keep.** |
| agy-customizations | 🗑️ | Subsumed by antigravity_guide (its description already covers skills/rules/MCP/sidecars). |
| context-compression | 🗑️ | Theory essay — dupe of consolidate-memory for memory hygiene. |
| context-manager | 🗑️ | Theoretical blob (vector DBs/knowledge graphs) — no concrete workflow. |

---

## Best-in-class shortlist (the keepers that carry the workflow)

- **impeccable** — the master UI skill (23 commands, 46 lint rules)
- **code-review** — standards + spec parallel review
- **grilling / grill-with-docs** — the interview engine
- **web-perf** — real measurement, not vibes
- **vercel-react-best-practices** — 70 concrete React/Next rules
- **supabase / postgres-best-practices** — deep, retrieval-first
- **production-code-audit** — full line-by-line pass
- **cloudflare** family — retrieval-first, well cross-referenced
- **pdf / docx / xlsx / pptx** — superset document skills
- **ponytail trio** — unique over-engineering lens
- **skill-creator + writing-great-skills** — meta skills for keeping this repo healthy

## Delete list — 49 skills

**Dupes/aliases (41):** grill-me, typescript-pro, typescript-expert, react-patterns, python-pro, fastapi-pro, database-architect, database-optimizer, neon-postgres, nextjs-supabase-auth, api-design-principles, react-best-practices, react-native-architecture, react-component-performance, zustand-store-ts, ui-ux-pro-max, tailwind-design-system, web-performance-optimization, performance-optimizer, testing-qa, playwright-skill, code-review-excellence, vibe-code-auditor, codebase-audit-pre-push, codebase-cleanup-refactor-clean, codebase-cleanup-tech-debt, vercel-deployment, ai-engineer, agent-orchestrator, senior-architect, domain-driven-design, microservices-patterns, cloud-devops, context-compression, context-manager, agy-customizations, convert-pdf-to-md, convert-word-to-md, convert-excel-to-md, sql-injection-testing, documentation

**SecureCoder VS Code-extension skills (8):** securecoder_generation, securecoder_persona, scan_dependencies, run_security_scanner, determine_threat_model, create_security_implementation_plan, generate_security_audit_report, run_poc

**Merge candidates (3):** design-review (→ impeccable), code-simplifier (→ ponytail/clean-code), x-ghostwriter (→ build-in-public)

**Conditional (delete-if-unused):** Cloudflare pack (10), HyperFrames pack (8), scrapers (3), ORM experts (drizzle/prisma/sqlalchemy), nestjs-expert, graphql-architect, rag-engineer, langchain-architecture, langgraph, web-artifacts-builder, obsidian-vault

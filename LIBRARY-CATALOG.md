# LIBRARY-CATALOG.md - On-Demand Skill Registry

This catalog indexes specialized skills stored in ~/.agents/library/.
When a task matches a skill below and it is not yet installed in the current project, install it using:
~/.agents/scripts/install-skill.ps1 -Skill <skill-name> -Project <project-path>

## AI & LLM Infrastructure (i-infra)
- **langgraph** - Use when building stateful multi-actor AI agent workflows, cyclic graphs, persistence, or human-in-the-loop with LangGraph.
- **mcp-builder** - Use when creating custom Model Context Protocol (MCP) servers and tools for LLM integration.
- **prompt-engineer** - Use when crafting, refining, or evaluating system prompts and complex prompt architectures.
- **rag-engineer** - Use when implementing Retrieval-Augmented Generation, chunking, embeddings, and vector database indexing.
- **stripe-integration** - Use when implementing Stripe checkout, subscriptions, billing webhooks, or PCI-compliant payments.
- **writing-for-agents** - Use when writing or refining guidelines, instructions, prompts, and skills intended for AI coding agents.

## Backend Python (ackend-python)
- **fastapi-best-practices** - Use when building or reviewing Python FastAPI applications with Pydantic v2, async handlers, and dependency injection.
- **python-best-practices** - Use when writing, editing, or refactoring general Python code with strict typing, PEP 8, and Ruff standards.
- **python-testing-patterns** - Use when implementing Python test suites, pytest fixtures, mocks, and parameterized test cases.

## Cloudflare Platform (cloudflare)
- **agents-sdk** - Use when building stateful agents, durable execution, or real-time WebSockets on Cloudflare Workers Agents SDK.
- **cloudflare** - Use when working with Cloudflare Workers, Pages, D1, KV, R2, Queues, Hyperdrive, or Workers AI.
- **durable-objects** - Use when coordinating state, WebSocket rooms, or distributed transactions with Cloudflare Durable Objects.
- **sandbox-sdk** - Use when building secure code execution sandboxes or isolated AI execution environments.
- **turnstile-spin** - Use when integrating Cloudflare Turnstile bot protection and CAPTCHA verification into forms and API routes.
- **workers-best-practices** - Use when reviewing or writing Cloudflare Workers architecture, performance, and bindings.
- **wrangler** - Use when configuring wrangler.toml, deploying, running local dev, or provisioning Cloudflare resources.

## Content & Social (content)
- **x-ghostwriter-indie-aidev-twitter-niche** - Parked; use when drafting X/Twitter posts for developer niche once personal account export is available.

## Database & Data Architecture (data)
- **database-design** - Use when designing relational database schemas, tables, indexing strategies, foreign keys, or normalization.
- **drizzle-orm-expert** - Use when writing TypeScript schema definitions, relational queries, or migrations with Drizzle ORM.
- **postgres-best-practices** - Use when optimizing PostgreSQL queries, analyzing query plans, designing composite indexes, or tuning Supabase.
- **prisma-expert** - Use when modeling schemas, executing complex queries, or running migrations with Prisma ORM.
- **supabase** - Use when integrating Supabase Auth, Postgres database, Row Level Security (RLS), Realtime, or Storage.

## DevOps & Security (devops-security)
- **api-patterns** - Use when designing REST, GraphQL, or tRPC API contracts, response envelopes, versioning, and pagination.
- **api-security-testing** - Use when auditing REST/GraphQL APIs for OWASP API Top 10 vulnerabilities, BOLA, injection, or rate limiting.
- **docker-expert** - Use when writing Dockerfiles, multi-stage container builds, docker-compose setups, or container hardening.
- **github-actions-templates** - Use when creating CI/CD workflows, automated testing, matrix builds, or deployment pipelines in GitHub Actions.
- **production-code-audit** - Use when explicitly requested to conduct a line-by-line security and reliability deep scan of a production codebase.
- **resolving-merge-conflicts** - Use when systematically diagnosing and resolving git merge or rebase conflicts.
- **web-security-testing** - Use when auditing web applications for XSS, CSRF, SSRF, authentication bypass, and header security.

## Frontend Stack & Frameworks (`frontend-stack`)
- **frontend-design** - Use when building UI from scratch, including dashboards, components, design tokens, and systematic layouts.
- **nextjs-best-practices** - Use when building Next.js App Router applications with Server Components, Server Actions, and streaming.
- **nodejs-best-practices** - Use when structuring Node.js runtime code, error handling, streams, async flows, and module design.
- **react-best-practices** - Use when writing idiomatic React code, custom hooks, context boundaries, and optimizing render performance.
- **react-state-management** - Use when choosing or implementing state architecture with Zustand, Jotai, Context, or URL search params.
- **react-ui-patterns** - Use when implementing UI component patterns, compound components, render props, and loading states.
- **react-view-transitions** - Use when implementing seamless page and element animations using the modern View Transitions API.
- **shadcn** - Use when installing, customizing, and composing accessible UI components from the shadcn/ui library.
- **tailwind-patterns** - Use when writing scalable Tailwind CSS styles, design tokens, dynamic classes, and responsive layouts.
- **trpc-fullstack** - Use when implementing end-to-end typesafe APIs between TypeScript frontends and backends with tRPC.
- **typescript-best-practices** - Use when writing strict TypeScript types, generics, utility types, and modern ESM configurations.
- **web-perf** - Use when auditing and optimizing Core Web Vitals (LCP, FID/INP, CLS), bundle sizes, and network performance.

## Growth & Marketing (`marketing`)
- **ab-testing** - Use when designing, calculating sample sizes, and analyzing statistically valid A/B split experiments.
- **ad-creative** - Use when developing visual ad concepts, hooks, copy variants, and angles for paid campaigns.
- **ads** - Use when setting up, structuring, and optimizing search, social, and display ad campaign budgets and targeting.
- **ai-seo** - Use when optimizing content structure, entity relationships, and schemas for LLM search indexing and search engines.
- **churn-prevention** - Use when identifying customer cancellation signals, exit surveys, and implementing retention flows.
- **cold-email** - Use when writing high-converting outbound B2B cold email sequences and optimizing sender deliverability.
- **competitor-profiling** - Use when conducting deep teardowns of competitor product capabilities, pricing, and positioning.
- **competitors** - Use when analyzing competitor positioning, teardowns, feature matrices, and finding differentiation moats.
- **content-strategy** - Use when planning content marketing pillars, distribution channels, and editorial calendars.
- **copy-editing** - Use when tightening, clarifying, proofreading, and improving prose readability without losing original voice.
- **copywriting** - Use when writing landing page copy, value propositions, headlines, benefit bullets, and call-to-actions.
- **cro** - Use when auditing conversion funnels, friction points, form drop-offs, and micro-conversions.
- **customer-research** - Use when conducting customer interviews, surveys, and synthesizing user feedback into actionable insights.
- **emails** - Use when designing email marketing newsletters, lifecycle automations, welcome sequences, and onboarding drips.
- **free-tools** - Use when conceptualizing and building free marketing engineering tools, calculators, and lead magnets.
- **gtm** - Use when orchestrating multi-project Go-To-Market launches, social radar outreach, and dev ecosystem distribution.
- **launch** - Use when orchestrating Product Hunt, Hacker News, X, and press launch checklists and timelines.
- **marketing-ideas** - Use when brainstorming creative acquisition channels, viral loops, and unconventional marketing experiments.
- **marketing-plan** - Use when synthesizing target audience research, channel selection, and budgets into a cohesive growth plan.
- **marketing-psychology** - Use when applying behavioral economics principles (loss aversion, social proof, anchoring) to conversion.
- **offers** - Use when crafting high-converting offers, bundling, pricing guarantees, and risk reversal incentives.
- **onboarding** - Use when designing new user onboarding flows, activation milestones, and reducing time-to-value.
- **pricing** - Use when structuring SaaS tiers, usage-based models, feature packaging, and price elasticity tests.
- **product-marketing** - Use when framing product positioning, core messaging pillars, launch announcements, and battlecards.
- **programmatic-seo** - Use when designing database-driven programmatic SEO templates and large-scale landing page generation.
- **public-relations** - Use when drafting press releases, media pitches, founder stories, and journalist outreach.
- **sales-enablement** - Use when creating sales pitch decks, one-pagers, objection handling scripts, and demo guides.
- **schema** - Use when implementing JSON-LD structured data markup for Google rich snippets and search engines.
- **seo-audit** - Use when auditing technical SEO, indexing health, internal linking, meta tags, and site crawlability.

## Media & Visual Generation (media)
- **algorithmic-art** - Use when generating procedural generative art, mathematical patterns, canvas visualizations, and SVG art.
- **canvas-design** - Use when building HTML5 2D Canvas games, physics simulations, particle systems, and rendering loops.
- **pdf** - Use when generating, extracting, parsing, and transforming PDF documents and vector layouts.
- **remocn** - Use when building reusable motion graphics and animated React components inside Remotion compositions.
- **remotion-best-practices** - Use when creating programmatic video compositions, animations, audio, and render workflows in Remotion.
- **threejs-fundamentals** - Use when building 3D scenes, shaders, lighting, cameras, and WebGL renders with Three.js.
- **xlsx** - Use when parsing, generating, manipulating, or formatting Excel spreadsheets (.xlsx) and CSV files.

## Miscellaneous & Migration (misc)
- **doc-coauthoring** - Use when co-authoring lengthy design docs, PRDs, or technical proposals through structured iteration.
- **migrate-to-shoehorn** - Use when eliminating unsafe TypeScript 'as' assertions in test files using shoehorn.

## Scraping & Extraction (scraping)
- **apify-ultimate-scraper** - Use when building web scrapers, crawler workflows, and data pipelines on the Apify platform.
- **defuddle** - Use when extracting clean, readable markdown or structured text from raw, messy web pages.
- **scrapling-official** - Use when writing robust Python web scrapers with Scrapling, bypass mechanisms, and selectors.

## Codebase Analysis & Tools (	ools)
- **antigravity_guide** - Use when needing reference documentation and commands for Antigravity, AGY CLI, and IDE features.
- **graphify** - Use when building or querying codebase knowledge graphs and dependency relationship maps.
- **request-refactor-plan** - Use when conducting a refactoring interview and structuring safe incremental commits as a GitHub issue.
- **using-ao** - Use when interacting with the AO agent orchestrator CLI, daemon sessions, and worker processes.
- **web-artifacts-builder** - Use when bundling multi-component React, Tailwind, and shadcn/ui applications into single-file HTML artifacts.

## UI Style Archetypes (ui-styles)
- **animation-vocabulary** - Use when finding precise motion vocabulary, curves, easing, and timing definitions for UI animations.
- **apple-design** - Use when designing interfaces following Apple Human Interface Guidelines and iOS/macOS aesthetic standards.
- **brandkit** - Use when defining brand typography, color palettes, spacing rules, and visual identity guidelines.
- **brutalist-skill** - Use when building industrial, raw, high-contrast, brutalist user interfaces.
- **emil-design-eng** - Use when implementing ultra-refined UI micro-interactions, spring physics, and high-craft frontend polish.
- **image-to-code-skill** - Use when converting design mockups, wireframes, or UI screenshots into clean, pixel-accurate frontend code.
- **impeccable** - Use when conducting comprehensive UI/UX design audits across hierarchy, typography, contrast, and alignment.
- **improve-animations** - Use when auditing web animations and generating prioritized motion optimization plans.
- **minimalist-skill** - Use when crafting clean, restrained, high-whitespace minimalist interfaces.
- **no-ai-slop** - Use when reviewing and refactoring generic, lazy, or AI-generated styling into distinctive, polished UI.
- **pick-ui-library** - Use when evaluating and selecting frontend component libraries, icon sets, and UI frameworks.
- **soft-skill** - Use when creating high-end, premium visual agency designs with subtle gradients, blurs, and depth.
- **taste-skill** - Use when designing anti-slop, tasteful landing pages, portfolios, and web app interfaces.

## Vercel Deployment & Runtime (ercel)
- **deploy-to-vercel** - Use when configuring Vercel project settings, monorepo root paths, build commands, and deployments.
- **vercel-cli-with-tokens** - Use when deploying and managing Vercel projects headlessly using token authentication.
- **vercel-optimize** - Use when diagnosing and optimizing Vercel deployment costs, function timeouts, bandwidth, and edge caching.
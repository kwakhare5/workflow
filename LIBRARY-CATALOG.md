# LIBRARY-CATALOG.md - On-Demand Skill Registry

This catalog indexes specialized skills stored in `~/.agents/library/`.
When a task matches a skill below and it is not yet installed in the current project, install it using:
`~/.agents/scripts/install-skill.ps1 -Skill <skill-name> -Project <project-path>`

## AI & LLM Infrastructure (`ai-infra`)
- **langgraph** - Use when building stateful multi-actor AI agent workflows, cyclic graphs, persistence, or human-in-the-loop with LangGraph.
- **mcp-builder** - Use when creating custom Model Context Protocol (MCP) servers and tools for LLM integration.
- **prompt-engineer** - Use when crafting, refining, or evaluating system prompts and complex prompt architectures.
- **rag-engineer** - Use when implementing Retrieval-Augmented Generation, chunking, embeddings, and vector database indexing.
- **stripe-integration** - Use when implementing Stripe checkout, subscriptions, billing webhooks, or PCI-compliant payments.

## Backend Python (`backend-python`)
- **fastapi-best-practices** - Use when building or reviewing Python FastAPI applications with Pydantic v2, async handlers, and dependency injection.

## Cloudflare Platform (`cloudflare`)
- **agents-sdk** - Use when building stateful agents, durable execution, or real-time WebSockets on Cloudflare Workers Agents SDK.
- **cloudflare** - Use when working with Cloudflare Workers, Pages, D1, KV, R2, Queues, Hyperdrive, or Workers AI.
- **durable-objects** - Use when coordinating state, WebSocket rooms, or distributed transactions with Cloudflare Durable Objects.
- **sandbox-sdk** - Use when building secure code execution sandboxes or isolated AI execution environments.
- **turnstile-spin** - Use when integrating Cloudflare Turnstile bot protection and CAPTCHA verification into forms and API routes.
- **workers-best-practices** - Use when reviewing or writing Cloudflare Workers architecture, performance, and bindings.
- **wrangler** - Use when configuring wrangler.toml, deploying, running local dev, or provisioning Cloudflare resources.

## Content & Social (`content`)
- **x-ghostwriter-indie-aidev-twitter-niche** - Parked; use when drafting X/Twitter posts for developer niche once personal account export is available.

## Database & Data Architecture (`data`)
- **database-design** - Use when designing relational database schemas, tables, indexing strategies, foreign keys, or normalization.
- **drizzle-orm-expert** - Use when writing TypeScript schema definitions, relational queries, or migrations with Drizzle ORM.
- **postgres-best-practices** - Use when optimizing PostgreSQL queries, analyzing query plans, designing composite indexes, or tuning Supabase.
- **prisma-expert** - Use when modeling schemas, executing complex queries, or running migrations with Prisma ORM.
- **supabase** - Use when integrating Supabase Auth, Postgres database, Row Level Security (RLS), Realtime, or Storage.

## DevOps & Security (`devops-security`)
- **api-security-testing** - Use when auditing REST/GraphQL APIs for OWASP API Top 10 vulnerabilities, BOLA, injection, or rate limiting.
- **docker-expert** - Use when writing Dockerfiles, multi-stage container builds, docker-compose setups, or container hardening.
- **github-actions-templates** - Use when creating CI/CD workflows, automated testing, matrix builds, or deployment pipelines in GitHub Actions.
- **production-code-audit** - Use when explicitly requested to conduct a line-by-line security and reliability deep scan of a production codebase.
- **web-security-testing** - Use when testing web applications for XSS, CSRF, SSRF, authentication bypass, and header security.

## Frontend Stack (`frontend-stack`)
- **nextjs-best-practices** - Use when building with Next.js App Router, Server Components (RSC), Server Actions, metadata, and Turbopack.
- **react-best-practices** - Use when optimizing React component rendering, eliminating unnecessary re-renders, and structuring hooks.
- **react-state-management** - Use when choosing or implementing state management (Zustand, TanStack Query, Redux, Context).
- **react-ui-patterns** - Use when building accessible, composable React UI components, compound components, and form abstractions.
- **react-view-transitions** - Use when implementing fluid view transitions and page navigation animations in React/Next.js.
- **shadcn** - Use when installing, customizing, and composing shadcn/ui components with Tailwind CSS.
- **tailwind-patterns** - Use when writing clean Tailwind CSS utility classes, responsive layouts, design tokens, and CSS variables.
- **trpc-fullstack** - Use when building end-to-end type-safe APIs with tRPC, Next.js, and client procedure queries.
- **web-perf** - Use when diagnosing and optimizing Core Web Vitals (LCP, INP, CLS), asset loading, and bundle size.

## Growth & Marketing (`marketing`)
- **ab-testing** - Use when designing, calculating sample sizes, and evaluating A/B experiments and conversion tests.
- **ad-creative** - Use when scripting, formatting, and generating copy for paid social ads (Meta, TikTok, LinkedIn).
- **ads** - Use when structuring and auditing B2B or consumer ad campaigns, targeting, and paid acquisition channels.
- **ai-seo** - Use when optimizing content structure for AI search engines (Perplexity, ChatGPT Search) and LLM citations.
- **churn-prevention** - Use when designing cancellation flows, retention offers, and churn telemetry in SaaS.
- **cold-email** - Use when writing cold email sequences, deliverability setup, and B2B outreach scripts.
- **competitors** - Use when conducting competitive analysis, teardowns, and positioning differentiation.
- **content-strategy** - Use when planning content architecture, editorial calendars, and organic search funnels.
- **copy-editing** - Use when polishing and tightening existing drafts for clarity, cadence, and conciseness.
- **copywriting** - Use when writing high-converting landing page copy, value propositions, and sales headlines.
- **cro** - Use when auditing and optimizing landing pages and sign-up funnels for conversion rate improvement.
- **emails** - Use when writing automated lifecycle email campaigns, onboarding drips, and product announcements.
- **free-tools** - Use when building engineering-as-marketing free calculators, widgets, and viral tools.
- **launch** - Use when preparing and executing product launches on Product Hunt, X, and community platforms.
- **marketing-ideas** - Use when brainstorming creative growth tactics, marketing experiments, and acquisition angles.
- **marketing-plan** - Use when building a cohesive, end-to-end go-to-market and growth strategy for a product.
- **marketing-psychology** - Use when applying cognitive biases, social proof, and behavioral nudges to product marketing.
- **offers** - Use when structuring pricing tiers, guarantees, packaging, and high-converting value offers.
- **onboarding** - Use when streamlining user activation, time-to-value, and new user onboarding flows.
- **pricing** - Use when setting SaaS pricing models, packaging features, and monetizing subscription tiers.
- **product-marketing** - Use when crafting product positioning, audience targeting, and core feature messaging.
- **programmatic-seo** - Use when building template-driven landing page engines for scaled keyword coverage.
- **public-relations** - Use when pitching journalists, writing press releases, and securing organic media coverage.
- **sales-enablement** - Use when creating sales battlecards, demo scripts, one-pagers, and objection handling guides.
- **schema** - Use when implementing Schema.org structured data (JSON-LD) for enhanced search engine rich snippets.
- **seo-audit** - Use when auditing technical SEO, indexability, metadata, crawl budgets, and internal linking.

## Media & Visual Computing (`media`)
- **algorithmic-art** - Use when generating math-driven visuals, generative canvas graphics, and SVG artwork.
- **canvas-design** - Use when building custom HTML5 Canvas drawings, charts, visual effects, and particle simulations.
- **pdf** - Use when generating, styling, rendering, or manipulating PDF documents programmatically.
- **remocn** - Use when using shadcn-inspired animated components and motion presets in Remotion compositions.
- **remotion-best-practices** - Use when creating, editing, animating, rendering, captioning, or upgrading Remotion video compositions.
- **threejs-fundamentals** - Use when building 3D scenes, shaders, lighting, cameras, and WebGL renders with Three.js.

## Miscellaneous & Migration (`misc`)
- **doc-coauthoring** - Use when co-authoring lengthy design docs, PRDs, or technical proposals through structured iteration.
- **migrate-to-shoehorn** - Use when eliminating unsafe TypeScript 'as' assertions in test files using shoehorn.

## Scraping & Extraction (`scraping`)
- **apify-ultimate-scraper** - Use when building web scrapers, crawler workflows, and data pipelines on the Apify platform.
- **defuddle** - Use when extracting clean, readable markdown or structured text from raw, messy web pages.
- **scrapling-official** - Use when writing robust Python web scrapers with Scrapling, bypass mechanisms, and selectors.

## Codebase Analysis & Tools (`tools`)
- **graphify** - Use when building or querying codebase knowledge graphs and dependency relationship maps.

## UI Style Archetypes (`ui-styles`)
- **apple-design** - Use when designing interfaces following Apple Human Interface Guidelines and iOS/macOS aesthetic standards.
- **brandkit** - Use when defining brand typography, color palettes, spacing rules, and visual identity guidelines.
- **brutalist-skill** - Use when building industrial, raw, high-contrast, brutalist user interfaces.
- **emil-design-eng** - Use when implementing ultra-refined UI micro-interactions, spring physics, and high-craft frontend polish.
- **image-to-code-skill** - Use when converting design mockups, wireframes, or UI screenshots into clean, pixel-accurate frontend code.
- **impeccable** - Use when conducting comprehensive UI/UX design audits across hierarchy, typography, contrast, and alignment.
- **minimalist-skill** - Use when crafting clean, restrained, high-whitespace minimalist interfaces.
- **no-ai-slop** - Use when reviewing and refactoring generic, lazy, or AI-generated styling into distinctive, polished UI.
- **pick-ui-library** - Use when evaluating and selecting frontend component libraries, icon sets, and UI frameworks.
- **soft-skill** - Use when creating high-end, premium visual agency designs with subtle gradients, blurs, and depth.
- **taste-skill** - Use when designing anti-slop, tasteful landing pages, portfolios, and web app interfaces.

## Vercel Deployment & Runtime (`vercel`)
- **deploy-to-vercel** - Use when configuring Vercel project settings, monorepo root paths, build commands, and deployments.
- **vercel-optimize** - Use when diagnosing and optimizing Vercel deployment costs, function timeouts, bandwidth, and edge caching.
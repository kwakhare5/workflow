---
name: cloudflare-suite
description: Comprehensive Cloudflare platform suite. Triggers for Workers, Agents SDK, Durable Objects, D1/KV/R2, Cloudflare One (Zero Trust), Turnstile, and Wrangler CLI.
---

# Cloudflare Platform Suite

Architect and deploy serverless backends, edge AI agents, stateful Durable Objects, and Zero Trust security on Cloudflare.

## Sub-modules

1. **Workers & Edge Backend**: Architecture, routing, bindings, KV, D1 SQL, R2, and Wrangler CLI.
   - Reference: `references/workers-best-practices.md`, `references/wrangler.md`, `references/cloudflare.md`
2. **AI Agents SDK & Stateful DO**: State management, real-time WebSockets, alarms, and persistent SQLite storage.
   - Reference: `references/agents-sdk.md`, `references/durable-objects.md`, `references/sandbox-sdk.md`
3. **Zero Trust & Security**: Cloudflare Access, Gateway, Tunnels, and Turnstile bot protection.
   - Reference: `references/cloudflare-one.md`, `references/turnstile-spin.md`, `references/cloudflare-email-service.md`

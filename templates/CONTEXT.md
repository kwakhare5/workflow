# CONTEXT.md — Domain Language
# Read at the START of EVERY session.
#
# PURPOSE: Give the AI a shared vocabulary so it names things consistently
# across function names, variables, comments, tests, and UI labels.
#
# HOW TO FILL THIS IN:
# Don't fill this manually. Run /grill at the start of a new project.
# The AI interviews you → you answer → it writes this file automatically.
# After that, the AI maintains it during development (Step 6 of the coding loop).
#
# Rule: Only terms that are non-obvious or specific to THIS app.
# Don't add common words like "user", "button", "form".

---

## Core Entities

_What are the main "things" in your app? What do you call them?_

| Term | What it means in THIS app | Never call it |
|------|--------------------------|---------------|
| [e.g. Workspace] | [Top-level container. A team or solo user's isolated environment] | [Organization, Account, Tenant] |
| [e.g. Member] | [A user who has been invited into a Workspace] | [User, Account, Collaborator] |
| [e.g. Project] | [A collection of work items inside a Workspace] | [Board, Space, Collection] |
| [e.g. Plan] | [The subscription tier: Free, Pro, or Team] | [Package, Tier, Subscription] |

---

## Business Rules

_Invariants that must never be violated. AI treats these as hard constraints._

1. [e.g. A User can belong to multiple Workspaces]
2. [e.g. Only the Workspace Owner can manage billing and delete the Workspace]
3. [e.g. Free Plan is limited to 3 Projects and 1 Member]
4. [e.g. Deleting a Project soft-deletes — data is retained for 30 days]

---

## User Roles

| Role | Can do | Cannot do |
|------|--------|-----------|
| [Owner] | [Everything — billing, members, deletion] | [—] |
| [Admin] | [Manage members and content] | [Manage billing] |
| [Member] | [Create and edit content] | [Manage members or billing] |

---

## Status / State Machines

_If your app has things that move through states, define them here._

| Status | Meaning | Can transition to |
|--------|---------|-------------------|
| [draft] | [Created, only visible to creator] | [published, archived] |
| [published] | [Live and visible to all members] | [archived] |
| [archived] | [Hidden but data preserved] | [draft] |

---

## Key Workflows

_The main things users do. Describe in plain language._

1. **[e.g. Onboarding]:** New user signs up → creates or joins a Workspace → creates first Project
2. **[e.g. Billing upgrade]:** Member hits limit → prompted to upgrade Plan → Stripe checkout → Plan updated
3. **[e.g. Invite flow]:** Owner sends invite link → recipient signs up → becomes Member of Workspace

---

## Naming Conventions

_How things are named in code. AI follows these exactly._

| Thing | Convention | Example |
|-------|-----------|---------|
| Database tables | snake_case, plural | `workspace_members` |
| React components | PascalCase | `WorkspaceCard` |
| API routes | kebab-case | `/api/workspace-members` |
| TypeScript types | PascalCase | `WorkspaceMember` |
| Hooks | camelCase, `use` prefix | `useWorkspaceMembers` |

---

## ADRs — Architecture Decision Records

_Why we made key decisions. Append-only — never delete entries._

| Date | Decision | Why |
|------|---------|-----|
| [YYYY-MM-DD] | [e.g. Chose Drizzle ORM over Prisma] | [e.g. Better raw SQL control for complex queries] |
| [YYYY-MM-DD] | [e.g. Supabase Auth over Clerk] | [e.g. Already using Supabase DB — reduce vendors] |
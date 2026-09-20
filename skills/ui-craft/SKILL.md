---
name: ui-craft
description: Master UI/UX aesthetic, tactile micro-interactions, and fluid physics suite. Unifies macro art direction (taste-skill), component craft (emil-design-eng), and gesture dynamics (apple-design).
---

# UI Craft — Master Design Engine

A layered frontend design system combining macro aesthetic direction, tactile micro-interactions, and physical fluid gestures. Use when designing, polishing, or critiquing high-craft web interfaces.

Every interface decision lives at one of three distinct layers:
1. **Macro Layer (Art Direction & Anti-Slop):** Overall layout hierarchy, typography, density, and aesthetic modes (Brutalist, Editorial, Minimalist, Soft, Dark Tech). Rejects generic AI defaults (purple gradients, equal card grids, Inter on slate-900). See `references/taste-modes.md`.
2. **Micro Layer (Component Craft & Tactile Polish):** Physical feedback on interactions, button compression (`scale(0.97)` on active), popover transform-origins, spring curves, avoiding `transition: all`. See `references/emil-polish.md`.
3. **Physics Layer (Fluid Gestures & Direct Manipulation):** 1:1 pointer tracking, gesture continuity, velocity inheritance, interruptibility (grabbing an element mid-flight). See `references/fluid-motion.md`.

## 1. The Design Read (Before Touching Code)

Before writing UI code, state in one line:
> **"Reading this as: <page kind> for <audience>, with a <vibe> language, leaning toward <aesthetic family>."**

Set the three core dials:
- **`DESIGN_VARIANCE`** (1 = Strict Symmetry, 10 = Artsy Asymmetry)
- **`MOTION_INTENSITY`** (1 = Static, 10 = Fluid Physics)
- **`VISUAL_DENSITY`** (1 = Airy/Editorial, 10 = Compact Cockpit)

## 2. Tactical Invariants

- **Response on Press:** Highlight on `pointerdown`, not `click`. Feedback must be instant.
- **Physical Bounds:** Animate from current presentation value, never target value. Interruptible at all times.
- **No Decorative AI Slop:** No decorative emojis in UI copy, no generic purple mesh glows, no equal three-column feature cards.
- **Review Format:** When reviewing UI code, use a structured Before / After / Why table.

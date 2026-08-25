---
name: ponytail-audit
description: Whole-repo over-engineering scanner that identifies dead code, bloat, and unused abstractions to delete.
source: DietrichGebert/ponytail
---

Scan the whole repo for unnecessary complexity. Rank findings biggest cut first.
One-shot report — does not apply fixes.

## Tags

- `delete:` dead code, unused flexibility, speculative feature. Replacement: nothing.
- `stdlib:` hand-rolled thing the standard library ships. Name the function.
- `native:` dependency or code doing what the platform already does. Name the feature.
- `yagni:` abstraction with one implementation, config nobody sets, layer with one caller.
- `shrink:` same logic, fewer lines. Show the shorter form.

## Format

One line per finding, ranked by impact (biggest cut first):

`<file>:L<line>: <tag> <what>. <replacement>.`

## Process

1. Scan all source files — not just the diff.
2. Apply the ponytail ladder to every function, class, dependency, and abstraction.
3. Rank findings: largest reduction in lines/deps first.
4. Output the ranked list. Stop. Do not apply changes.

The report's job is to surface what to cut. The user decides what to action.

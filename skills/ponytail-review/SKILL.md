---
name: ponytail-review
description: Diff-focused over-engineering review. Flags speculative complexity and unneeded dependencies.
source: DietrichGebert/ponytail
---

Review diffs for unnecessary complexity. One line per finding: location, what
to cut, what replaces it. The diff's best outcome is getting shorter.

## Format

`L<line>: <tag> <what>. <replacement>.`, or `<file>:L<line>: ...` for
multi-file diffs.

## Tags

- `delete:` dead code, unused flexibility, speculative feature. Replacement: nothing.
- `stdlib:` hand-rolled thing the standard library ships. Name the function.
- `native:` dependency or code doing what the platform already does. Name the feature.
- `yagni:` abstraction with one implementation, config nobody sets, layer with one caller.
- `shrink:` same logic, fewer lines. Show the shorter form.

## Rules

- One line per finding. No paragraphs.
- Rank by impact: biggest reduction first.
- Do not repeat what the diff already deleted — only what survives that shouldn't.
- If the diff is already minimal: say so in one line and stop.

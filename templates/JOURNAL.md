# Product Journal

A chronological, append-only record of real product work and its evidence. This journal feeds engineering continuity and build-in-public drafts. Record facts, not marketing copy.

---

## How to maintain this journal

At the end of a session with meaningful changes:

1. Read the current `JOURNAL.md`.
2. Use at most one heading per project per calendar date:
   `### [Project - short factual summary] YYYY-MM-DD`
3. If today's project heading exists, merge new facts into it. Do not create a second heading for the same project and date.
4. Keep exact metrics and their context. Never round up or convert local/test evidence into production claims.
5. Record one or more atomic work cards. A large session may have several cards because it may contain several independent tensions.
6. Keep commit hashes and paths only in `Engineering references`. They are not tweet copy.
7. Do not add a `Vibe` field.

---

## Entry schema

```markdown
### [Project - short factual summary] YYYY-MM-DD

#### Work card 1: [one tension]
- **Problem / tension:** What broke, surprised you, stayed ambiguous, or forced a decision?
- **Change / decision:** What one or two changes caused the result? Write in plain English first.
- **Proof:** Exact test result, metric, screenshot path, demo path, benchmark, user-visible behavior, or before/after result.
- **Still broken / unproven:** What remains risky, disabled, unmeasured, local-only, synthetic-only, or not replay-proven?
- **Metric context:** Environment, denominator/sample size, time window, baseline, excluded cases, and whether reproduced. Use `N/A` when there is no metric.
- **Question (optional):** One real question whose answer could change the product.
- **Trial-ready flow (optional):** The one flow a relevant person can try and the feedback needed.
- **Engineering references:** Commit hash, issue, file, test command, or internal link. Keep these out of public copy unless specifically needed.

#### Work card 2: [another independent tension]
[repeat fields]
```

---

## Log entries

### [Example Grocery Agent - safer ambiguous quantity handling] 2026-09-17

#### Work card 1: "add 3 coke" could create the wrong basket
- **Problem / tension:** A quantity without pack size could mean three cans, three bottles, or three multipacks. Guessing could create an expensive cart mistake.
- **Change / decision:** The model now proposes possible meanings. Deterministic code blocks the cart change until the user chooses one.
- **Proof:** Ambiguity test passes for all three catalogue variants; capture a short chat demo showing the clarification choices.
- **Still broken / unproven:** The flow passes locally but has not been replay-tested through the live messaging and provider path.
- **Metric context:** Local test environment; three catalogue variants; no production users measured.
- **Question (optional):** Is pack size enough context, or should the clarification also show price per unit?
- **Trial-ready flow (optional):** Ask a tester to enter ambiguous quantities and report any choice that still feels unsafe.
- **Engineering references:** `abc1234`; ambiguity test command; relevant issue link.

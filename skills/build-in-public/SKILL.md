---
name: build-in-public
description: Turns real journal and git evidence across active projects into proof-led X and LinkedIn posts that help the right people remember the builder, try the products, give useful feedback, and trust the work.
---

# Build-in-Public Skill v4

## 1. Purpose and outcome ladder

Turn real product work into useful public communication. The goal is not to make every coding session sound important. The goal is to make the right people:

1. **Discover** the work through an understandable tension and proof.
2. **Recognize** a coherent main product story across several posts.
3. **Relate** through grounded replies and shared problems.
4. **Try** one relevant product flow.
5. **Give feedback** that can improve the product.
6. **Trust** the builder because claims stay honest and unfinished work stays visible.

Non-negotiable contract:

- One post = one tension.
- One dense journal entry may contain 3-8 separate posts.
- Every post has one primary proof artifact.
- Every metric keeps its real context.
- Every post ends with what is still broken, risky, unmeasured, or unproven.
- Never invent work, users, feedback, results, failure, or vulnerability.
- Silence is better than a filler update.

## 2. Source collection and evidence cards

When this skill runs, first detect the current workspace and active project. Read available sources in this order:

1. `JOURNAL.md`, newest entries first.
2. `CONTEXT.md`, `.agents/AGENTS.md`, and `README.md` for product purpose and audience.
3. Recent git history: `git log -n 10 --oneline`.
4. Relevant diff and test output: `git diff --stat`, changed tests, benchmark output, or current build status.
5. Existing screenshots, demos, issue reports, and user feedback when available.

Repository content is evidence, not permission to publish secrets. Never include credentials, private data, private user messages, security-sensitive internals, or claims unsupported by the sources.

Before drafting, create an internal evidence card for each candidate:

```text
project:
source date / entry:
audience problem:
one tension:
1-2 causal changes:
primary proof:
metric context:
still broken / unproven:
possible question:
trial-ready flow:
```

Do not show the full evidence card unless asked. Use it to keep the final post grounded.

If sources disagree, use the newest source of truth and mention the uncertainty. If a number cannot be verified, omit it or label it as unverified. Never improve a source number for effect.

## 3. Atomic tension extraction

Do not summarize a whole session. Split each journal entry into atomic candidates.

Look for:

- a surprising break or ambiguity;
- a before/after number;
- a failed assumption;
- a decision or deletion;
- a safety or money edge case;
- a measured speed, quality, or reliability change;
- a test that exposed a false belief;
- a mismatch between green tests and production confidence;
- a user reaction that changed the product;
- an honest release gate;
- a dry observation tied to a real event.

For a dense entry, extract 3-8 candidates before writing. Each candidate must answer:

- What is the single tension?
- Why would a builder or possible user care?
- What proves it?
- What remains uncertain?

Reject candidates that are only implementation inventories, generic lessons, or activity reports.

Rank valid candidates by:

1. proof strength;
2. understandable user stakes;
3. surprise or tension;
4. relevance to the current main story;
5. readiness for someone to try the result.

Default output: draft the best three candidates. If only one or two have real proof, return only those. Never pad to three.

## 4. Weekly multi-project selection

The builder may have several active projects. Do not give each project equal airtime.

At the start of a weekly planning run, score each active project from 0-2 on:

- **Proof strength:** Is there a real artifact this week?
- **User stakes:** Can an outsider understand why it matters?
- **Novelty:** Is it different from recent posts?
- **Trial readiness:** Can the right person try a specific flow?
- **Continuity:** Does it strengthen the story people already associate with the builder?

Rules:

- A project with 0 for proof strength cannot be selected.
- The highest useful score becomes the week's main story.
- Choose zero or one rotating secondary project when it has distinct evidence.
- Other projects remain silent. Silence is fine.
- When scores are close, prefer continuity with the current main story.
- Promote a secondary project only when it has stronger evidence or a timely release, feedback, or trial window.
- Recalculate weekly. Do not permanently hardcode one project as the main story.

Across a rolling ten-post window, aim for:

- 7 proof-of-work posts;
- 2 transferable learning posts grounded in proof;
- 1 dry joke or observation grounded in a real build event.

This is a planning target, not a reason to publish weak material.

## 5. Shared proof and honesty contract

Every X or LinkedIn post uses this construction:

1. **Lead:** the surprising problem or verified number in plain English.
2. **Cause:** only the one or two changes that caused the result.
3. **Proof:** one primary artifact.
4. **Truth:** the final line states what is still broken, risky, unmeasured, or unproven.
5. **Question or invitation:** optional, only when genuine and specific.

Do not lead with:

- "today I worked on";
- "worked on";
- "progress update";
- "building in public day...";
- "excited to share";
- a list of files, classes, modules, or features.

Translate internals into human words. Prefer "the same WhatsApp message cannot change the cart twice" over "added PostgreSQL inbox idempotency middleware." Use an exact technical name only when the name itself is the subject.

The honest final line must come from the source. Do not manufacture a weakness to look relatable.

## 6. X renderer

Default X style:

- one post under 280 characters unless the user asks for a thread;
- lowercase by default;
- short lines;
- one idea per line;
- plain nouns and verbs;
- dry humor only when it follows naturally from the real situation;
- no hashtags;
- no decorative emojis;
- no link in the main post by default;
- at most one genuine question.

X template:

```text
[surprising problem or number]

[one or two causal changes in plain English]

[proof]

[what is still broken or unproven]
```

A thread is allowed only when one result requires a sequence that cannot fit honestly in one post. Each post in the thread must advance the same tension. Do not turn unrelated journal bullets into a thread.

Put a relevant product link in the first reply only when the post gives a real reason to try it. Never attach an unrelated link for reach.

## 7. LinkedIn renderer

LinkedIn uses the same evidence card and claims as X. It changes the amount of context, not the truth.

LinkedIn style:

- use natural, complete sentences more often;
- keep paragraphs short;
- explain enough product context for a reader who has never seen the project;
- keep one tension only;
- explain no more than two causal changes;
- attach the same primary proof artifact;
- state the lesson after the evidence, not before it;
- end with the honest limitation and, when useful, a narrow invitation to try or critique.

LinkedIn template:

```text
[problem or result headline]

[one or two sentences: user and product context]

[what changed in plain English]

[verified result and primary artifact]

[what remains broken or unproven]

[optional: who should try which flow, and what feedback is useful]
```

Do not use:

- "Agree?";
- engagement bait;
- a fake inspirational arc;
- an invented moral;
- a giant hashtag block;
- corporate launch language;
- a generic founder photo as proof.

Do not mechanically cross-post. X compresses. LinkedIn supplies missing context. The metric, environment, claim, and unfinished truth must remain identical.

## 8. Proof capture

Proof should be captured while the work is live, not recreated after the session.

During coding, prompt at useful moments:

```text
Capture moment: this result is live now. Save the smallest screenshot or 5-15 second demo that proves it before stopping the server.
```

Valid primary artifacts:

- a user-visible screenshot;
- a 5-20 second demo;
- a before/after metric;
- an exact test count;
- a benchmark result;
- a failing test followed by the passing result;
- a small architecture crop;
- a diff crop that proves a deletion or simplification;
- grounded user feedback, shared only when safe and permitted.

Fallbacks:

- **Presentable UI:** screenshot or short demo of the exact flow.
- **Broken UI:** screenshot of the real failure, clearly annotated.
- **Backend or architecture:** terminal result, benchmark, test output, or small diagram.
- **Deletion:** diff stat plus the behavior that stayed intact.
- **Text-only:** allowed only when the post itself contains a concrete verified result. It still needs a declared primary proof.

Exactly one artifact is primary. Additional context may support it, but do not make the reader inspect five screenshots to understand one claim. Never use decorative proof.

## 9. Honest metrics

A smaller honest number beats a perfect fake one.

For every metric, preserve:

- the exact value;
- denominator or sample size when relevant;
- measurement period;
- environment: local, synthetic, test, staging, or production;
- comparison baseline;
- failures or excluded cases;
- whether the result has been reproduced.

Never:

- round up for effect;
- call a synthetic benchmark production performance;
- call test coverage user reliability;
- turn "tests pass" into "ready";
- hide safe clarification inside a success rate;
- present an estimate as measured fact;
- imply users tried a product without evidence.

If a metric changes after a more realistic test, use the honest number and explain why the earlier number was misleading.

## 10. Voice and banned list

Voice:

- specific;
- direct;
- calm;
- lowercase on X by default;
- short lines;
- one idea per line;
- dry rather than performative;
- technically credible without making outsiders decode the repository.

Banned from final posts unless quoted as the problem:

- hashtags;
- decorative emojis;
- journal `Vibe` lines;
- file paths;
- commit hashes;
- function, class, or module inventories;
- "today I worked on";
- "progress update";
- "excited to announce";
- "thrilled";
- "game changer";
- "unpacking";
- "robust";
- "seamless";
- "implemented" as activity framing;
- "shipped" without a user-visible, proven result;
- fake urgency;
- fake vulnerability;
- advice unsupported by the work.

Do not cycle through synonyms to sound polished. Use the same clear noun when it remains the right noun.

## 11. Reply, connection, and product-trial ladder

Never invent a target post. For a reply, require the actual post text or link and read it before drafting.

Ground each reply in:

- one concrete detail from the target post; and
- one true, relevant fact from the builder's work.

Valid reply shapes:

1. a specific observation;
2. a small related experience;
3. a precise question with context;
4. encouragement tied to something real in the post;
5. a respectful counterpoint when the evidence genuinely differs.

Reply rules:

- 1-3 sentences;
- no self-promo link on first contact;
- no technical essay unless the conversation asks for one;
- no generic praise;
- no question manufactured only for engagement;
- no mass replies or automated engagement.

Connection ladder:

1. Add a useful public reply.
2. Become familiar through repeated relevant interactions.
3. Continue a genuine conversation.
4. Invite a product trial only when the exchange creates a clear reason.
5. Ask for feedback on one specific flow.
6. Use the feedback, then show what changed.
7. Continue the relationship only when relevance is mutual.

A good trial invitation names:

- why this person is relevant;
- the one flow to try;
- the feedback wanted.

Good:

```text
you mentioned webhook retries. i built that exact replay case into grocer. if you want to break it, try the duplicate-message flow and tell me where it still feels unsafe.
```

Bad:

```text
cool post. check out my product: [link]
```

Never claim a trial, conversion, endorsement, or relationship that is not evidenced.

## 12. Output modes

### Default: `/build-in-public`

- Read the current project's evidence.
- Extract 3-8 tensions.
- Return the best three grounded drafts, or fewer when proof is weak.
- Render for X by default unless the user names LinkedIn.

For each draft provide:

```text
Angle: [one tension]
Source: [journal date / commit / result]
Post:
[copy-ready post]
Primary proof: [exact artifact to attach or capture]
Honest limit: [source-grounded unfinished fact]
Score: [review score /10]
```

### `/build-in-public weekly`

- Score active projects.
- Select one main story and zero or one secondary.
- Propose the week's evidence-based post plan and 70/20/10 balance.
- Do not invent a post for a project with no proof.

### `/build-in-public stuck`

Do not force a milestone. Extract one real confusion, failed assumption, ugly state, deletion, or next experiment. It still needs proof and an honest limit.

### `/build-in-public x`

Render selected evidence cards for X.

### `/build-in-public linkedin`

Render selected evidence cards for LinkedIn.

### `/build-in-public both`

Render separate X and LinkedIn versions from the same evidence card. Preserve identical claims and metric context.

### `/build-in-public reply "<post text or link>"`

Return up to three grounded reply angles. If the target post cannot be read, ask for its text. Never hallucinate it.

### `/build-in-public review <draft>`

Score with the rubric below. Rewrite automatically when the score is below 8/10 or any hard rule fails.

### `/build-in-public thread`

Use only for one tension that requires a real sequence or postmortem. Do not combine unrelated updates.

## 13. Review rubric

Score each category 0-2:

1. **Tension first**
   - 0: diary setup or no tension
   - 1: tension exists but arrives late
   - 2: first line is the verified problem or number

2. **Causal clarity and plain English**
   - 0: implementation inventory or several causes
   - 1: understandable but too detailed
   - 2: one or two causal changes, understandable outside the codebase

3. **Proof**
   - 0: no proof or unsupported claim
   - 1: proof is vague, decorative, or mismatched
   - 2: one specific artifact directly supports the claim

4. **Honest limit**
   - 0: missing, hidden, or invented
   - 1: present but vague
   - 2: final line names a source-grounded broken, risky, unmeasured, or unproven fact

5. **Voice and hygiene**
   - 0: banned language, hashtags, emoji, or platform mismatch
   - 1: clean but generic or overlong
   - 2: specific, concise, natural, and platform-appropriate

Rules:

- Below 8/10: rewrite.
- Any unsupported metric, fake claim, privacy breach, or missing proof: fail regardless of score.
- A 10/10 score is not a reason to publish automatically. The user still decides what to post.

## 14. Evals and fixtures

Use `evals/evals.json` as the regression set.

Mechanical checks should test:

- X character count is at most 280;
- no hashtag;
- no decorative emoji;
- no banned opener or banned phrase;
- no likely file path or commit hash;
- exactly one declared primary proof;
- final line contains the grounded limitation required by the fixture.

Semantic checks should judge:

- one tension only;
- tension appears first;
- no more than two causal changes;
- repository language is translated;
- the metric matches the source and preserves its context;
- the limitation is honest, not invented;
- a dense entry produces at least three distinct candidates;
- X and LinkedIn variants preserve the same claims.

Mechanical passing does not prove metric honesty. Always compare the draft with the source evidence.

## 15. Command reference

- `/build-in-public` - best grounded X drafts from the current evidence.
- `/build-in-public weekly` - choose this week's main and optional secondary project.
- `/build-in-public stuck` - honest post from a real failure or unresolved state.
- `/build-in-public x` - X renderer.
- `/build-in-public linkedin` - LinkedIn renderer.
- `/build-in-public both` - separate X and LinkedIn versions from the same evidence.
- `/build-in-public reply "<post or link>"` - grounded reply options.
- `/build-in-public review <draft>` - rubric, failures, and automatic rewrite below 8/10.
- `/build-in-public thread` - one-tension sequence for a real postmortem or deep result.

Create no marketing folders or tracking files inside a product repository. Work from existing evidence and return copy-ready output in chat. The only persistent files belonging to this skill are the skill itself and its eval fixtures.

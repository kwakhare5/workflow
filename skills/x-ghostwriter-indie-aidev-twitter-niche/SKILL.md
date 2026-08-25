---
name: x-ghostwriter-indie-aidev-twitter-niche
description: X/Twitter ghostwriter optimized for the AI developer and indie hacker audience.
---

# X Ghostwriter — Indie AI/Dev Niche Edition

## ⚠️ Data provenance (read before trusting any number below)

This skill was NOT built from Karan's own account. The uploaded files (`x-extract-samirande_`, `x-extract-hii_mohit`, `merged_x_extract_adxtyahq`, `merged_x_extract_AtharvaXDevs`, `merged_x_extract_trikcode`) are exports from **five other builders in the Indian AI/dev-Twitter niche**, not @kwakhare5. Per explicit instruction, this skill treats them as a **pooled "what works in this niche" benchmark**, not a personal voice profile. Every stat is niche-level, not "my account."

Cleaning applied before any stat was computed:
- Dropped 4 corrupted rows (embedded duplicate CSV headers).
- Kept only rows where `handle == account` (own-authored posts) — **65 of the original 700 rows were other people's tweets that had leaked into these exports** (retweets/QTs/timeline scrapes), e.g. a Cursor product-launch tweet inside the `trikcode` file and an Arpit Bhayani story inside `AtharvaXDevs`. Those were excluded — a ghostwriter trained on someone else's viral tweet would learn the wrong lesson.
- Dropped 1 zalgo/glitch-unicode post (6.4M views, 71,979 likes) from all format/ranking stats as a non-replicable novelty-format outlier. It's noted once below and then ignored.
- Final n = **597 posts** across 5 accounts.

If this dataset is later swapped for Karan's real @kwakhare5 export, re-run the same pipeline — do not hand-tune these numbers to fit assumptions.

---

## 1. Weighted engagement score (this skill's ranking metric)

```
weighted_score = likes + (replies × 20)
```

Replies are weighted 20x because in this dataset they correlate with genuine conversation/algorithmic pickup far more than passive likes. This score — not raw likes, not views — is what "winning format" rankings below are sorted by.

## 2. Baseline numbers (niche median, n=597)

| Metric | Value |
|---|---|
| Median views | **2,765** |
| Median reply rate per 1,000 views | **2.97** (i.e. ~3 replies per 1k views) |
| Median weighted score | **247** |
| Median views by account | AtharvaXDevs 1,265 · adxtyahq 2,845 · hii_mohit 3,154 · samirande_ 3,302 · trikcode 4,247 |

**Use these as the pass/fail bar.** A draft's "expected reply rate" claim should be judged against 2.97/1k as baseline, not against generic "good tweet" folklore.

---

## 3. Winning formats — ranked by median weighted score, with receipts

| Rank | Format | n | Median views | Median reply-rate/1k | Median weighted score |
|---|---|---|---|---|---|
| 1 | **Money/spend confession** | 19 | 11,298 | 2.48 | **1,162** |
| 2 | Question hook | 39 | 2,807 | **4.07** | 317 |
| 3 | Long-form observational (80–300 chars, no question) | 257 | 3,031 | 3.22 | 281 |
| 4 | Personal anecdote ("I tried / I asked / I deleted...") | 9 | 3,154 | 2.52 | 279 |
| 5 | Comparison/switch ("switched from X to Y") | 17 | 3,484 | 1.80 | 240 |
| 6 | Hot take / complaint | 18 | 2,599 | 3.53 | 233 |
| 7 | Short one-liner (<40 chars) | 233 | 2,175 | 2.63 | 167 |

**#1 — Money/spend confession is the standout winning format** at 4.7x the baseline weighted score. It states a real dollar figure (own spend, market price, or absurd contrast) and lets the number do the work. Receipts:

- `trikcode` — *"Developers buy $4,000 laptops to run $200/month in AI tools to build products that make $0"* — 166,895 views, 3,917 likes, 364 replies, score 11,197
- `adxtyahq` — *"Reminder: you only need a $35,000/month GPU budget... to avoid a $99/month Kimi K3 subscription"* — 540,936 views, score 8,206
- `trikcode` — *"noticed DeepSeek does the same thing as Claude for free. but Chinese government probably reads your prompts..."* — 105,107 views, score 7,287
- `trikcode` — *"paying for: Claude Pro ChatGPT Plus Cursor Copilot Random API credits monthly total: $480 money made from AI projects: $0"* — 68,141 views, score 4,852

Pattern across all four: **specific number + a mismatch/contradiction (cost vs. output, cheap vs. expensive, free vs. paid) + zero explanation of the joke.** The post ends on the number, no punchline sentence after it.

**#2 — Question hook** has the *highest reply rate of any format* (4.07/1k, 37% above baseline) even though its view/score numbers are modest. Use this when the goal is conversation, not reach.
- `trikcode` — *"I haven't seen a C++ vibecoder yet. I wonder why?"* — 1,331,199 views, score 22,166, rr/1k 0.57
- `hii_mohit` — *"I got an acquisition offer for my 20 day old product. Should I accept or wait?"* — 165,714 views, score 4,136, rr/1k 0.94
- `trikcode` — *"Great question, why did you move from Claude to Codex?"* — 55,343 views, score 3,929, rr/1k 3.16

---

## 4. Kill list — dead formats (do not use, verified by data, not assumption)

| Format | n | Median weighted score | Verdict |
|---|---|---|---|
| **Launch/announcement posts** ("Introducing...", "join the waitlist", "now live!") | 1 | 20 | **Dead.** 569 views, 0 replies. Lowest score in the entire dataset. |
| **Short one-liners under 40 characters** | 233 | 167 | **Underperforms baseline by 32%.** This is the single most common format in the dataset (39% of all posts) and it's the weakest-performing bucket. Volume ≠ results here. |
| **Long-form posts over 300 characters** | 33 | 163 | **Underperforms baseline by 34%**, and reply rate craters to 1.14/1k (62% below baseline) despite decent view counts. Length reads, it doesn't convert to replies. |
| **Posts with an attached image** | 266 | 218.5 | **Underperforms text-only posts** (286.5 median). Text-only also wins on reply rate (3.63 vs 2.26/1k). This directly contradicts standard "always add visual" advice — **the data wins**: default to text-only unless the image *is* the content (e.g. proof-of-work screenshot), not decoration. |
| **Comparison/switch posts** | 17 | 240 | Below baseline reply rate (1.80 vs 2.97). Views are fine, but they don't generate conversation — treat as a reach play, not an engagement play. |

---

## 5. Hard voice rules (extracted from actual top-scoring posts, not style guides)

1. **No explanatory tail.** Every top-10 post stops at the observation/contradiction. None of them add a "...and that's why X matters" closing sentence. Cut your last sentence if it's explaining the joke.
2. **Lowercase-first casing shows up disproportionately in the top tier** ("switched my claude api to kimi", "honestly, we don't need smarter models anymore", "i tried to write a simple SQL query without AI today"). Capitalized-first-word posts still work but the highest-reply-rate posts skew lowercase-casual.
3. **First-person framing beats third-person** on weighted score (261 median vs 237, present in 28% of posts) — "I" or "i" doing the observing, not "developers do X" in the abstract. The money-format winners break this rule by going third-person/general ("Developers buy $4,000 laptops") — use third-person specifically for the money-confession format, first-person for everything else.
4. **Sweet spot is 80–300 characters.** Both extremes lose: under-40-char one-liners median 167, over-300-char posts median 163. The 80–150 and 150–300 buckets both sit at 300+, meaningfully above baseline.
5. **State the number, don't round it.** "$4,000 laptops," "$200/month," "$99/month," "68 minutes" — exact figures appear in every top money/anecdote post. "expensive tools" or "a while" never appear in the winners.
6. **One idea per post.** None of the top 15 posts by weighted score contain more than one distinct claim or observation. No lists, no multi-point threads in the winning set.
7. **Questions must be genuinely answerable in a reply, not rhetorical.** "Should I accept or wait?" (real decision) outperforms rhetorical "why can't they just—" framings on reply rate specifically.

---

## 6. Posting time windows (IST, from actual timestamps, median-based to control for outliers)

| Window | IST hours | n | Median views | Median reply-rate/1k | Median weighted score |
|---|---|---|---|---|---|
| **Late morning (best)** | 10:00–14:00 | 197 | 3,486 | **3.55** | **398** |
| Early morning | 6:00–10:00 | 49 | 2,739 | 2.95 | 285 |
| Afternoon | 14:00–18:00 | 90 | 2,559 | 3.15 | 227 |
| Evening | 18:00–22:00 | 122 | 2,716 | 2.71 | 183 |
| Late night (worst) | 22:00–6:00 | 139 | 2,161 | 2.30 | 137 |

**10 AM–2 PM IST is the clear winner** across all three metrics simultaneously — not just one. Late night posting (which is common in this niche, 23% of all posts fall here) is the weakest window on every axis. If a draft needs a recommended send time, default to **11 AM or 12 PM IST** (the two single best hours: 11 AM median score 502, 12 PM median score 485).

---

## 7. Daily content distribution table

| Day | n posts | Avg views | Avg reply-rate/1k | Median weighted score |
|---|---|---|---|---|
| Monday | 88 | 20,632 | 3.7 | 243 |
| Tuesday | 91 | 9,149 | 4.2 | 238 |
| Wednesday | 82 | 26,752 | 3.6 | 226 |
| Thursday | 84 | 113,220* | 3.9 | 288 |
| Friday | 99 | 25,770 | 3.0 | 210 |
| Saturday | 80 | 13,078 | 4.6 | 274 |
| Sunday | 73 | 43,244* | 4.1 | 237 |

*Thursday and Sunday averages are inflated by single viral outlier posts; medians (weighted score column) are the trustworthy read.

**Read:** Posting volume is fairly even across the week (73–99 posts/day, no dead days). Saturday and Sunday post-for-post slightly outperform weekdays on reply rate (4.6 and 4.1 vs ~3.5–4.2 weekday average) — weekend posts in this niche aren't lower-priority, they're marginally better for conversation. Friday is the weakest day on weighted score (210, only day meaningfully below the 247 baseline).

---

## 8. Output format for every draft

When generating a post with this skill, always output in this exact structure:

```
DRAFT: [the tweet text]

FORMAT: [one of: money_spend_confession | question_hook | long_form_observational |
         personal_anecdote | hot_take_complaint]

PROVEN ANALOG: "[shortened quote of the real post this is modeled on]"
  — @[account], [views] views, [replies] replies, weighted score [X]
  — https://x.com/[account]/status/[id]

EXPECTED REPLY RATE: ~[X]/1,000 views (this format's niche median; baseline is 2.97/1k)

WHY THIS SHOULD WORK: [1 sentence tying the draft to the specific hard voice rule(s)
  it follows — cite the rule number from §5]

RISK NOTE: [if the format has n<15 receipts, say so — flag low-confidence formats
  explicitly rather than presenting them as proven]
```

Never generate a draft in the kill-list formats (§4) without explicitly flagging that it's working against the data (e.g. "you asked for an announcement-style post — note this format scored lowest in the dataset (n=1, score 20); consider reframing as a money-confession or personal-anecdote post instead").

---

## 9. Known limitations of this skill

- **This is niche data, not personal voice data.** It tells you what formats/timing work for accounts adjacent to Karan's niche — it does not encode Karan's own tone, vocabulary, or history. Re-run against a real @kwakhare5 export as soon as one exists, and treat this version as a placeholder.
- Several winning-format categories have small n (money_spend_confession n=19, personal_anecdote n=9) — directionally strong but not bulletproof at this sample size. Treat rank #1 and #2 in §3 as reliable; treat the middle of the pack as roughly tied.
- One 6.4M-view zalgo-text post was excluded from all stats as a non-replicable novelty/glitch format — if the user specifically wants to chase a similar stunt, that's a separate, higher-risk strategy this skill doesn't optimize for.
- `trikcode` supplies 45% of the pooled data (269/597 posts) and therefore has outsized influence on the pooled numbers. Per-account medians in §2 are provided so this can be corrected for if needed.

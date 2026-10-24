# PRD.md — Product Requirements Document
#
# PURPOSE: Defines WHAT you are building, WHO it is for, and WHAT is out of scope.
# The AI reads this at the start of any new feature to stay on mission.
#
# HOW TO POPULATE:
# 1. Fill in the 2-sentence summary and target user.
# 2. List the 3-5 non-negotiable core features for v1.
# 3. Explicitly list what you are NOT building to prevent AI scope creep.

---

## 1. Executive Summary
<A clear 2-sentence explanation of what this app is and what exact problem it solves.>

---

## 2. Target User & Core Problem
- **Target User:** <Who is this built for? (e.g. solo devs, small teams, consumers)>
- **Core Problem:** <What painful problem does the user have right now?>
- **User Outcome:** <What is the user able to accomplish after using this app?>

---

## 3. Core Features (v1 Scope)
_Keep this to the absolute minimum needed to solve the core problem._

1. **[Feature 1 Name]:**
   - **User Flow:** User does X → sees Y → gets Z result.
   - **Acceptance Criteria:** What must be true for this feature to be considered done?

2. **[Feature 2 Name]:**
   - **User Flow:** User does X → sees Y → gets Z result.
   - **Acceptance Criteria:** What must be true for this feature to be considered done?

3. **[Feature 3 Name]:**
   - **User Flow:** User does X → sees Y → gets Z result.
   - **Acceptance Criteria:** What must be true for this feature to be considered done?

---

## 4. What We Are NOT Building (Out of Scope)
_The AI must never propose or build these unless explicitly told._

- [e.g. Custom authentication / OAuth — we use basic magic links or Supabase Auth for v1]
- [e.g. Multi-team / enterprise permissions — solo workspaces only for v1]
- [e.g. Dark/light mode toggle — single dark theme for v1]
- [e.g. Mobile app — responsive web only]

---

## 5. Success Metrics & Done State
- **How we know v1 works:** <e.g. A user can sign up, create a project, and export their result in under 2 minutes.>
- **Target performance:** <e.g. Page loads in under 1 second, zero console errors, verification script exits 0.>

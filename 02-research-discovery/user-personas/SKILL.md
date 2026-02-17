---
name: user-personas
description: >
  Create data-backed user personas that go beyond demographics to capture behaviors,
  motivations, and jobs-to-be-done. Trigger this skill when the user mentions personas,
  user profiles, user segments, user archetypes, customer profiles, or says things like
  "who are our users," "create personas for this product," or "define our target users."
---

# User Persona Generator

A useful persona isn't a stock photo with a fake name and hobbies. It's a behavioral
model that helps the team make better product decisions by asking "what would [persona]
do?" Personas work when they're rooted in real data and capture what drives behavior.

## Before You Start

Ask the user:

1. **What data do we have?** — Interview transcripts, analytics segments, survey data,
   support patterns, sales notes.
2. **How many personas?** — 3-5 is the sweet spot. More than 5 means the team will
   ignore most of them. Fewer than 3 means you're probably missing a segment.
3. **What decisions will these inform?** — Feature prioritization, onboarding flows,
   marketing messaging, pricing tiers.
4. **Current assumptions** — Who does the team think the users are? This helps
   identify blind spots.

## Persona Structure

```
# [Persona Name] — [One-line descriptor]

> "[A quote that captures this persona's core motivation]"

## Overview
**Role/Title:** [professional context]
**Experience level:** [with the product/domain]
**Segment size:** [% of user base, if known]
**Revenue contribution:** [% of revenue, if known]

## Behavioral Profile

### Goals (what they're trying to achieve)
1. [Primary goal — the job they're hiring your product for]
2. [Secondary goal]
3. [Tertiary goal]

### Frustrations (what gets in their way)
1. [Primary pain point — with evidence]
2. [Secondary pain point]
3. [What they complain about but isn't actually the real problem]

### Behaviors (what they actually do)
- **Frequency:** [How often they use the product]
- **Key workflows:** [Top 3 things they do]
- **Workarounds:** [Hacks they've built around product limitations]
- **Tools in ecosystem:** [What else they use alongside your product]
- **Decision process:** [How they evaluate and adopt new features]

### Motivations (why they care)

**Functional:** [Practical outcome they need]
**Emotional:** [How they want to feel]
**Social:** [How they want to be perceived]

## Context & Triggers

**When do they reach for your product?**
- [Trigger moment 1] — [situation that creates the need]
- [Trigger moment 2]

**When do they NOT use your product (but could)?**
- [Missed opportunity 1] — [what they use instead]

## Success Metrics (from their perspective)
- [How THEY measure whether your product is working for them]
- [Not your metrics — their metrics]

## Relationship with Product
- **Acquisition channel:** [How they typically find you]
- **Aha moment:** [When they first see value]
- **Retention driver:** [Why they keep coming back]
- **Churn risk:** [What would make them leave]

## Design Implications
- [Specific product/design decisions this persona drives]
- [Features to prioritize FOR this persona]
- [Features to de-prioritize — they don't care about these]

## Anti-patterns
- [Common mistake teams make when designing for this persona]
```

## Quality Checks

Before presenting personas, verify:

- **Behavioral, not demographic.** Age, gender, and location should only appear if
  they genuinely drive different product behavior. "35-year-old in San Francisco"
  tells you nothing useful. "Power user who manages 50+ projects and needs keyboard
  shortcuts" tells you everything.
- **Evidence-backed.** Every claim should trace to data. If you can't cite evidence,
  mark it as an assumption that needs validation.
- **Distinct.** If two personas would make the same product decisions, merge them.
  The test: would the team build something different for Persona A vs. Persona B?
- **Actionable.** Each persona should drive at least one product decision.
  If a persona doesn't change any decisions, it's not useful.

## Output

Save as `PERSONAS-[product-name].md`. Create one document with all personas
for easy comparison. Include a summary comparison table at the top.

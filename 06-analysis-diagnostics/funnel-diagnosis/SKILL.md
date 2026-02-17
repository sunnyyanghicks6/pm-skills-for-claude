---
name: funnel-diagnosis
description: >
  Diagnose conversion funnel problems and generate data-backed improvement hypotheses.
  Works with any multi-step flow: signup, onboarding, checkout, upgrade, feature adoption.
  Trigger this skill when the user mentions funnel analysis, conversion diagnosis,
  drop-off analysis, funnel optimization, or says things like "where are we losing users,"
  "diagnose this funnel," or "why is conversion low."
---

# Funnel Diagnosis

You diagnose where and why users drop off in multi-step flows, then generate
testable hypotheses for improvement.

## Before You Start

Ask the user:

1. **What funnel?** — Signup, onboarding, checkout, upgrade, feature adoption.
2. **Current data** — Step-by-step conversion rates, or raw numbers.
3. **Time period** — Recent snapshot or trend over time.
4. **Segments** — Any known differences by user type, channel, device?

## Diagnosis Process

### Step 1: Map the Funnel

```
Step 1: [action] → [X users] (100%)
    ↓ [Y% drop-off]
Step 2: [action] → [X users] ([Z]%)
    ↓ [Y% drop-off]
Step 3: [action] → [X users] ([Z]%)
    ↓ [Y% drop-off]
Step 4: [action] → [X users] ([Z]%)
```

### Step 2: Identify the Biggest Drop

Calculate both absolute and relative drop-off per step. The biggest optimization
opportunity isn't always the biggest percentage drop — it's the step where the
most recoverable users are lost.

| Step | Users In | Users Out | Drop-off | Recoverable? |
|------|---------|----------|----------|--------------|
| [step] | [N] | [N] | [%] | High/Med/Low |

**Recoverable** = users who show intent but don't complete. Low recoverability =
users who were never the right audience.

### Step 3: Generate Hypotheses

For each major drop-off, systematically consider:

**Motivation problems:** Users don't want to complete this step.
- Value proposition unclear at this point
- Asked for too much commitment too early
- Competing alternatives are easier

**Ability problems:** Users can't complete this step.
- UX is confusing or broken
- Too many fields / too much information required
- Technical barriers (load time, browser compatibility, mobile issues)

**Trigger problems:** Users lose momentum.
- No clear CTA or next step
- Distraction or interruption
- Too much time between steps

### Step 4: Prioritize Hypotheses

| Hypothesis | Evidence | Impact if True | Ease to Test | Priority |
|-----------|----------|---------------|-------------|----------|
| [hypothesis] | [what supports this] | [potential lift] | [effort] | [1-N] |

### Step 5: Recommend Actions

For each top hypothesis:
- **Quick test:** Fastest way to validate (5-user test, copy change, A/B test)
- **Full solution:** What to build if the hypothesis is confirmed
- **Expected impact:** Modeled lift based on current data

## Output

```
# Funnel Diagnosis — [Funnel Name]

## Current State
[Funnel visualization with conversion rates]

## Key Finding
[The single biggest opportunity, in one sentence]

## Step-by-Step Analysis
### [Step with biggest drop-off]
**Drop-off:** [X%] ([N] users lost)
**Hypotheses:**
1. [Hypothesis] — Evidence: [data] — Priority: High
2. [Hypothesis] — Evidence: [data] — Priority: Medium

[Repeat for each significant drop-off]

## Recommended Action Plan
1. [First thing to test/fix] — Expected impact: [X%] — Effort: [S/M/L]
2. [Second] — Expected impact: [X%] — Effort: [S/M/L]
3. [Third] — Expected impact: [X%] — Effort: [S/M/L]

## Benchmarks
[How does this funnel compare to industry standards?]
```

Save as `FUNNEL-DIAGNOSIS-[name]-[date].md`.

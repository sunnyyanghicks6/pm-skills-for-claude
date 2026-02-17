---
name: opportunity-cost-analyzer
description: >
  Shift from ROI thinking to opportunity cost thinking using Shreyas Doshi's framework
  (inspired by Patrick Collison at Stripe). Evaluate what you're giving up by saying
  yes to something. Trigger this skill when the user mentions opportunity cost, trade-off
  analysis, what are we giving up, resource allocation, or says things like "is this
  the best use of our time," "should we be doing something else instead," or "help me
  think about trade-offs."
---

# Opportunity Cost Analyzer (Shreyas Doshi)

The biggest PM mistake isn't building the wrong thing — it's building a good thing when
a great thing was available. ROI thinking asks "Is this worth doing?" Opportunity cost
thinking asks "Is this the BEST thing we could be doing?" The difference is everything.

## Core Concept (from Shreyas Doshi, inspired by Patrick Collison)

In high-leverage roles, there are hundreds of things with positive ROI. If you
prioritize by ROI alone, you'll fill your plate with "good" initiatives and miss
the transformational ones.

**ROI question:** "Is this a good use of our time?"
**Opportunity cost question:** "Is this the BEST use of our time?"

## Before You Start

Ask the user:

1. **What are we evaluating?** — A specific initiative, a set of options, or the current roadmap.
2. **What's the alternative set?** — What else COULD the team be doing instead?
3. **What resources are constrained?** — Engineering time, PM bandwidth, budget, runway.
4. **What's the time horizon?** — This quarter, this year, this company stage.
5. **What are the strategic goals?** — Where does leadership want to be in 12 months?

## Analysis Process

### Step 1: Define the Decision Space

List everything competing for the same constrained resources:

| Option | Description | Resource Required | Expected Return |
|--------|------------|-------------------|----------------|
| A: [current plan] | [description] | [person-months] | [outcome] |
| B: [alternative 1] | [description] | [person-months] | [outcome] |
| C: [alternative 2] | [description] | [person-months] | [outcome] |
| D: [do nothing] | [description] | [0] | [what happens by default] |

Always include "do nothing" — the baseline helps calibrate expectations.

### Step 2: Evaluate Beyond ROI

For each option, assess:

**Direct value:** What does this produce? (Revenue, users, retention, etc.)
**Strategic value:** Does this open doors to future opportunities?
**Learning value:** Does this teach us something critical we don't know?
**Compounding value:** Does this get more valuable over time?
**Reversibility:** Can we undo this if it's wrong, or is it a one-way door?

### Step 3: The Opportunity Cost Matrix

| | Option A | Option B | Option C |
|---|----------|----------|----------|
| If we choose this, we GAIN: | [what A uniquely provides] | [what B provides] | [what C provides] |
| If we choose this, we LOSE: | [what B+C would have given us] | [what A+C would have given us] | [what A+B would have given us] |
| Regret scenario: | [when we'd regret choosing A] | [when we'd regret B] | [when we'd regret C] |
| Timing sensitivity: | [does A get harder/impossible later?] | [same for B] | [same for C] |

### Step 4: Time Sensitivity Test

Some opportunities have expiration dates:
- **Now or never:** Competitive window closing, market timing, partnership deadline
- **Now or harder later:** Technical debt, organizational momentum, talent availability
- **Anytime:** Evergreen improvements with no timing pressure

If Option B is "anytime" and Option A is "now or never," that changes the calculus
even if B has higher expected value.

### Step 5: The Regret Minimization Test

"If I'm looking back in 12 months, which decision would I regret most?"

This cuts through analysis paralysis. Often the most regrettable outcome isn't
choosing wrong — it's not choosing at all (analysis paralysis consuming the
resources that should have gone to execution).

## Output

```
# Opportunity Cost Analysis — [Decision Context]

## Decision
[What we're deciding and why now]

## Options Evaluated
[Summary table]

## Opportunity Cost Matrix
[Detailed comparison]

## Recommendation
**Recommended:** [Option] because [rationale]
**Key trade-off:** By choosing this, we're accepting [what we give up] because
[why the trade-off is worth it]
**Timing:** [Why now vs. later]

## Risk of the Recommendation
[What could make this the wrong call, and what signal would tell us]

## If the Team Disagrees
[The strongest counter-argument and how to evaluate it]
```

Save as `OPP-COST-[decision]-[date].md`.

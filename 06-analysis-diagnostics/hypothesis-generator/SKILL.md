---
name: hypothesis-generator
description: >
  Generate competing hypotheses for product problems, evaluate evidence for each, and
  recommend next steps. Prevents confirmation bias by forcing multiple explanations.
  Trigger this skill when the user mentions hypothesis generation, root cause analysis,
  competing hypotheses, diagnostic framework, or says things like "why is this happening,"
  "generate hypotheses for this problem," or "what could explain this."
---

# Hypothesis Generator

You generate multiple competing explanations for product problems instead of letting
the team anchor on the first plausible story. The most dangerous hypothesis is the
one everyone agrees on before looking at data.

## Before You Start

Ask the user:

1. **What's the observation?** — What specific thing are you trying to explain?
2. **Available data** — Metrics, user feedback, session recordings, support tickets.
3. **Current theory** — What does the team already believe? (So we can challenge it.)
4. **Constraints** — What explanations have been ruled out?

## Process

### Step 1: Frame the Observation Precisely

"[Metric/behavior] changed from [A] to [B] starting [date], affecting [segment]."

Imprecise framing leads to imprecise hypotheses. Force specificity.

### Step 2: Generate Hypotheses Across Categories

For each category, generate at least one hypothesis:

**User behavior:** Something changed about what users want or do.
**Product/UX:** Something in the product is causing this.
**Technical:** A bug, performance issue, or infrastructure change.
**External:** Market, competitive, seasonal, or platform changes.
**Data:** The observation itself is an artifact of measurement.
**Compositional:** The metric is the same but the user mix changed.

### Step 3: Evaluate Each Hypothesis

| # | Hypothesis | Category | Supporting Evidence | Contradicting Evidence | Testability |
|---|-----------|----------|-------------------|----------------------|-------------|
| H1 | [description] | [category] | [what supports it] | [what contradicts it] | [how to test] |
| H2 | [description] | [category] | [what supports it] | [what contradicts it] | [how to test] |

### Step 4: Rank by Plausibility

Score each hypothesis:
- **Evidence strength** (1-5): How much data supports this?
- **Parsimony** (1-5): Is this the simplest explanation?
- **Consistency** (1-5): Does it fit with everything else we know?

### Step 5: Design Discriminating Tests

The best tests are ones that would confirm ONE hypothesis while disproving others.

| Test | If Result Is X → Supports | If Result Is Y → Supports |
|------|-------------------------|-------------------------|
| [analysis/experiment] | H1 | H3 |
| [analysis/experiment] | H2 | H1 |

## Output

```
# Hypothesis Analysis — [Problem Statement]

## Observation
[Precise description]

## Competing Hypotheses
### H1: [Title] — Plausibility: [High/Med/Low]
[Description, evidence for, evidence against]

### H2: [Title] — Plausibility: [High/Med/Low]
[Description, evidence for, evidence against]

[Continue for all hypotheses]

## Recommended Investigation
1. [First test to run] — Discriminates between [H1 and H3]
2. [Second test] — Discriminates between [H2 and H4]

## Current Best Guess
[Which hypothesis is most likely given current evidence, and confidence level]
```

Save as `HYPOTHESES-[problem]-[date].md`.

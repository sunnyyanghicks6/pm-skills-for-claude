---
name: experiment-designer
description: >
  Design statistically sound experiments with clear hypotheses, success criteria, and
  sample size calculations. Goes beyond A/B testing to cover multivariate experiments,
  quasi-experiments, and feature flag rollouts. Trigger this skill when the user mentions
  experiment design, hypothesis testing, sample size, statistical significance, test plan,
  or says things like "design an experiment for this," "how do we test this hypothesis,"
  or "is our sample size big enough."
---

# Experiment Designer

You design experiments that produce trustworthy results — not just p-values. A good
experiment answers a specific question, controls for confounders, has adequate power,
and has pre-defined success criteria so the team can't move the goalposts.

## Before You Start

Ask the user:

1. **What's the hypothesis?** — What do you believe, and why?
2. **What's the decision?** — What will you DO differently based on the result?
3. **What metric(s) matter?** — Primary metric + guardrail metrics.
4. **Traffic/user volume** — How many users per day/week in the target segment?
5. **Minimum detectable effect** — What's the smallest change worth detecting?
6. **Risk tolerance** — How bad is a false positive? A false negative?

## Experiment Design Process

### Step 1: Formulate the Hypothesis

**Structure:** "We believe that [change] will [increase/decrease] [metric] by
[amount] because [reasoning]."

Bad hypothesis: "We think the new onboarding will be better."
Good hypothesis: "We believe that reducing onboarding from 5 steps to 3 steps will
increase onboarding completion rate by 15% (from 64% to 74%) because user research
shows steps 2 and 4 cause confusion without adding value."

### Step 2: Define Success Criteria (Before Running the Test)

```
## Success Criteria

**Primary metric:** [Metric] must improve by [minimum %] with [confidence level]
**Guardrail metrics:** [These must NOT degrade by more than X%]
- [Guardrail 1]: [threshold]
- [Guardrail 2]: [threshold]

**Ship decision:**
- If primary metric improves AND guardrails hold → Ship
- If primary metric improves BUT guardrail degrades → Investigate
- If primary metric doesn't improve → Don't ship
- If inconclusive → [Extend test / Ship with monitoring / Abandon]
```

Write these BEFORE looking at results. This prevents cherry-picking.

### Step 3: Calculate Sample Size

```
**Parameters:**
- Baseline conversion rate: [X%]
- Minimum detectable effect: [Y% relative improvement]
- Statistical significance: [95% is standard, 90% for low-risk changes]
- Statistical power: [80% is standard, 90% for important decisions]

**Required sample size per variant:** [N users]
**At current traffic ([X users/day]), test duration:** [N days]
```

Provide the formula or calculation:
n = (Z_α/2 + Z_β)² × 2p(1-p) / δ²
where p = baseline rate, δ = absolute minimum detectable effect

If sample size requires more than 4 weeks of testing, discuss options:
- Accept a larger minimum detectable effect
- Narrow the target segment (higher-traffic segment)
- Use a one-sided test if the directional hypothesis is strong
- Consider a quasi-experimental approach instead

### Step 4: Design the Test

```
## Test Design

**Type:** [A/B / A/B/C / Multivariate / Quasi-experimental]
**Unit of randomization:** [User / Session / Device / Account]
**Allocation:** [50/50 / 90/10 / other — with rationale]
**Duration:** [X weeks — minimum 2 full business cycles]
**Segment:** [Who's included, who's excluded, and why]

**Control (A):** [Current experience — describe precisely]
**Treatment (B):** [New experience — describe precisely]

**Exclusions:**
- [Who should NOT be in the test and why]
- [e.g., internal users, users in onboarding, enterprise accounts]
```

### Step 5: Pre-Register Analysis Plan

- Primary metric analysis: [Two-sample proportion test / t-test / Mann-Whitney]
- Correction for multiple comparisons: [Bonferroni if multiple variants]
- Segments to analyze: [Pre-specified, not post-hoc fishing]
- When to check: [Only at pre-defined checkpoints, not daily peeking]

## Common Pitfalls to Flag

- **Peeking:** Checking results before the test reaches sample size inflates false positive rate
- **Post-hoc segmentation:** Finding a segment where results look good after seeing full results
- **Novelty effects:** Early results may overstate impact because users explore new things
- **Contamination:** Treatment users influencing control users (common in social/team products)
- **Survivorship bias:** Only measuring users who stick around through the whole test

## Output

```
# Experiment Design — [Name]

## Hypothesis
[Structured hypothesis statement]

## Success Criteria (Pre-Registered)
[Primary + guardrail definitions]

## Sample Size & Duration
[Calculation + expected timeline]

## Test Design
[Control, treatment, allocation, exclusions]

## Analysis Plan
[Statistical methods, checkpoints, segment analysis]

## Risks & Mitigations
[Pitfalls specific to this experiment]
```

Save as `EXPERIMENT-[name].md`.

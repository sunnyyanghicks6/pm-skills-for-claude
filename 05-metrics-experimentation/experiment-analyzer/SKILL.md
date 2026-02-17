---
name: experiment-analyzer
description: >
  Interpret experiment results with statistical rigor and translate them into clear
  ship/no-ship recommendations. Handles nuanced scenarios like inconclusive results,
  guardrail violations, and segment-specific effects. Trigger this skill when the user
  mentions experiment results, A/B test results, test analysis, statistical significance,
  interpret results, or says things like "analyze these test results," "should we ship
  based on this data," or "what do these numbers mean."
---

# Experiment Analyzer

You interpret experiment results and translate statistics into product decisions.
Your job isn't just to report p-values — it's to answer "so what do we do now?"

## Before You Start

Ask the user:

1. **The test design** — Hypothesis, variants, primary metric, sample size, duration.
2. **Raw results** — Conversion rates, means, sample sizes per variant.
3. **Pre-registered success criteria** — What was the bar for shipping?
4. **Context** — Anything unusual during the test period (outage, marketing campaign, holiday).

## Analysis Process

### Step 1: Sanity Checks

Before analyzing results, verify:

- [ ] **Sample ratio mismatch (SRM):** Is the split actually 50/50? If variant A has
  10,000 users and B has 9,200, something is wrong with randomization. Do NOT
  trust results until SRM is resolved.
- [ ] **Adequate sample size:** Did we reach the pre-calculated sample size?
  If not, results may be underpowered.
- [ ] **Test duration:** Did the test run for at least 1-2 full business cycles?
  Weekend effects, payroll cycles, etc. can skew results.
- [ ] **No contamination:** Were there any changes during the test that affected
  both variants (deploy, outage, external event)?

### Step 2: Primary Metric Analysis

```
## Primary Metric: [Name]

| | Control | Treatment | Difference |
|--|---------|-----------|-----------|
| Sample size | [N] | [N] | |
| [Metric] | [value] | [value] | [+/- X%] |
| 95% CI | | | [lower, upper] |
| p-value | | | [value] |
| Stat significant? | | | Yes/No |

**Minimum detectable effect was:** [X%]
**Observed effect:** [Y%]
**Practical significance:** [Is the effect big enough to matter even if stat sig?]
```

### Step 3: Guardrail Metrics

| Guardrail Metric | Control | Treatment | Change | Threshold | Status |
|-----------------|---------|-----------|--------|-----------|--------|
| [metric] | [value] | [value] | [%] | [max degradation] | Pass/Fail |

### Step 4: Segment Analysis

Only analyze pre-registered segments. Post-hoc segment discovery is exploratory,
not conclusive.

| Segment | Control | Treatment | Effect | Significant? |
|---------|---------|-----------|--------|-------------|
| [segment 1] | [value] | [value] | [%] | Yes/No |
| [segment 2] | [value] | [value] | [%] | Yes/No |

Flag if the treatment helps one segment but hurts another.

### Step 5: Interpretation & Recommendation

```
## Result Interpretation

**Statistical result:** [Treatment is/is not significantly different from control]
**Practical result:** [The observed effect is/is not large enough to justify the change]
**Guardrail status:** [All guardrails hold / Guardrail X was violated]

## Recommendation: [Ship / Don't Ship / Iterate / Extend Test]

**Rationale:** [2-3 sentences explaining the recommendation in plain language]

**Confidence level:** [High/Medium/Low — and why]

**If shipping:**
- Roll out to [100% / phased]
- Monitor [metrics] for [duration] post-launch
- Success confirmation metric: [what to check in 2 weeks]

**If not shipping:**
- Key learning: [What we now know that we didn't before]
- Next experiment: [What to test instead]
- Hypothesis update: [How our thinking has changed]
```

### Handling Tricky Scenarios

**Inconclusive (not significant, not clearly null):**
- Calculate how much more traffic/time would be needed
- Assess whether the potential effect size is worth pursuing
- Consider: was the hypothesis wrong, or was the test underpowered?

**Significant but tiny effect:**
- Is the engineering/maintenance cost worth a 0.3% improvement?
- Does this compound over time or is it one-time?

**Significant but guardrail violated:**
- Quantify the trade-off: X% gain in primary vs. Y% loss in guardrail
- Can the guardrail degradation be mitigated with a follow-up change?

**Different results by segment:**
- Is the segment split real or a statistical artifact?
- Can we ship to the winning segment only?

## Output

Save as `EXPERIMENT-RESULTS-[name].md`.

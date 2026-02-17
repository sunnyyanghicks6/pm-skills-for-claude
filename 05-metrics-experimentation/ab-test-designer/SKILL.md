---
name: ab-test-designer
description: >
  Design A/B tests with proper methodology, sample sizes, and success criteria. More
  focused than the general experiment-designer — specifically for feature A/B tests
  that product teams run regularly. Trigger this skill when the user mentions A/B test,
  split test, feature test, variant test, or says things like "set up an A/B test for
  this," "should we A/B test this," or "design a split test."
---

# A/B Test Designer

You design A/B tests that give product teams trustworthy answers. The goal is a test
so well-designed that regardless of the result, the team knows exactly what to do next.

## Before You Start

Ask the user:

1. **What's being tested?** — Feature, design change, copy change, flow change.
2. **What's the hypothesis?** — Why do you think the variant will win?
3. **Primary metric** — The ONE number this test is trying to move.
4. **Current baseline** — What's the metric at today?
5. **Minimum meaningful improvement** — What's the smallest change worth shipping?
6. **Daily traffic** — Users/day in the eligible segment.

## Quick-Design Template

```
# A/B Test Brief — [Test Name]

## Hypothesis
"[Changing X] will [improve Y] by [Z%] because [reason]."

## Variants
| Variant | Description | Screenshot/Mockup |
|---------|------------|------------------|
| Control | [Current experience] | [link] |
| Treatment | [New experience] | [link] |

## Metrics

### Primary (one only)
- **[Metric]**: [Definition] — Must improve by [X%] minimum

### Secondary (2-3 max)
- **[Metric]**: [What it measures]

### Guardrails (must not degrade)
- **[Metric]**: [Maximum acceptable degradation: X%]

## Sizing
- Baseline rate: [X%]
- Minimum detectable effect: [Y% relative]
- Significance level: 95%
- Power: 80%
- **Required per variant: [N] users**
- **At [X] users/day → [Y] days to run**
- **Planned end date: [date]**

## Targeting
- **Include:** [Who sees the test]
- **Exclude:** [Who doesn't — and why]
- **Randomization unit:** [User ID / Session / Account]
- **Allocation:** 50/50

## Decision Rules (Pre-Committed)

| Result | Action |
|--------|--------|
| Treatment wins by ≥[X%], guardrails hold | Ship treatment |
| Treatment wins by <[X%] (stat sig) | Discuss: ship or iterate |
| No significant difference | Keep control, investigate learnings |
| Treatment loses | Keep control, document why hypothesis was wrong |
| Guardrail metric degrades | Stop test, investigate |

## Timeline
- [ ] Test setup & QA: [date]
- [ ] Start: [date]
- [ ] First checkpoint (NOT for decisions): [date — 50% of sample]
- [ ] Analysis: [date — 100% of sample]
- [ ] Decision: [date]
- [ ] Ship/cleanup: [date]

## Risks
- [Specific risk 1 and mitigation]
- [Specific risk 2 and mitigation]
```

## Decision: Should We Even A/B Test This?

Not everything needs an A/B test. Help the user decide:

**A/B test when:**
- The change is reversible and low-risk
- You have enough traffic for statistical power
- The outcome is genuinely uncertain
- The metric impact is measurable

**Don't A/B test when:**
- You don't have enough traffic (test would take 3+ months)
- The change is obviously right (fixing a broken flow, legal requirement)
- The change affects too few users to reach significance
- It's a strategic bet, not an incremental optimization

**Instead of A/B testing, consider:**
- Qualitative testing (5-user usability test)
- Dogfooding (internal team uses it first)
- Phased rollout with monitoring (ship to 10%, watch metrics)

Save as `AB-TEST-[name].md`.

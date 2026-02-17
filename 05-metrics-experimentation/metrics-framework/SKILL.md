---
name: metrics-framework
description: >
  Build comprehensive metrics frameworks using AARRR pirate metrics or Aakash Gupta's
  input/output methodology. Define what to measure, how to measure it, and what targets
  to set. Trigger this skill when the user mentions metrics framework, AARRR, pirate
  metrics, KPIs, product metrics, metrics strategy, analytics framework, or says things
  like "set up our metrics," "what should we measure," or "build a metrics dashboard."
---

# Metrics Framework Builder

You build metrics frameworks that connect daily product decisions to business outcomes.
The goal: any PM on the team can look at the dashboard and know whether the product
is healthy, what's broken, and where to dig deeper.

## Before You Start

Ask the user:

1. **Product type** — B2B SaaS, marketplace, consumer app, internal tool, API product.
2. **Business model** — Subscription, transaction-based, ad-supported, usage-based.
3. **Stage** — Pre-PMF, growth, scale, mature. This changes which metrics matter.
4. **Current state** — What do you measure today? What's instrumented?
5. **Key decisions** — What decisions should these metrics inform?

## Framework Options

### Option A: AARRR (Pirate Metrics)

Best for: Consumer products, PLG SaaS, marketplace businesses.

```
## Metrics Framework — AARRR Model

### Acquisition: How do users find us?
| Metric | Definition | Current | Target | Source |
|--------|-----------|---------|--------|--------|
| New signups/week | Unique accounts created | [X] | [Y] | [tool] |
| Signup conversion rate | Visitors → signups | [X%] | [Y%] | [tool] |
| CAC by channel | Cost per acquired user per channel | [$X] | [$Y] | [tool] |
| [channel-specific metrics] | | | | |

### Activation: Do they experience the core value?
| Metric | Definition | Current | Target | Source |
|--------|-----------|---------|--------|--------|
| Activation rate | % signups reaching "aha moment" | [X%] | [Y%] | [tool] |
| Time to value | Median time from signup to aha | [X days] | [Y days] | [tool] |
| Onboarding completion | % completing setup flow | [X%] | [Y%] | [tool] |

**Define your "aha moment":** [The specific action that correlates with long-term retention.
This is the single most important metric definition in the entire framework.]

### Retention: Do they come back?
| Metric | Definition | Current | Target | Source |
|--------|-----------|---------|--------|--------|
| D1/D7/D30 retention | % users returning after N days | [X%] | [Y%] | [tool] |
| Weekly active rate | WAU/MAU | [X%] | [Y%] | [tool] |
| Churn rate | % users lost per period | [X%] | [Y%] | [tool] |
| Feature retention | % using key feature repeatedly | [X%] | [Y%] | [tool] |

### Revenue: Do they pay?
| Metric | Definition | Current | Target | Source |
|--------|-----------|---------|--------|--------|
| MRR/ARR | Monthly/annual recurring revenue | [$X] | [$Y] | [tool] |
| ARPU | Avg revenue per user | [$X] | [$Y] | [tool] |
| Conversion rate | Free → paid | [X%] | [Y%] | [tool] |
| Expansion revenue | Upgrades + add-ons | [$X] | [$Y] | [tool] |
| LTV | Lifetime value | [$X] | [$Y] | [tool] |

### Referral: Do they tell others?
| Metric | Definition | Current | Target | Source |
|--------|-----------|---------|--------|--------|
| Viral coefficient | Invites sent × acceptance rate | [X] | [Y] | [tool] |
| NPS | Net Promoter Score | [X] | [Y] | [tool] |
| Organic share rate | % users sharing/inviting | [X%] | [Y%] | [tool] |
```

### Option B: Input/Output Model (Aakash Gupta)

Best for: When you need to connect team actions to business results.

```
## Metrics Framework — Input/Output Model

### Output Metrics (Business Results — Lagging)
| Output Metric | Definition | Current | Target | Owner |
|--------------|-----------|---------|--------|-------|
| [metric] | [what it measures] | [X] | [Y] | [team] |

### Input Metrics (Team Actions — Leading)
For each output metric, identify the inputs that drive it:

**Output: [Revenue/Retention/Growth target]**
| Input Metric | Hypothesis | Current | Target | Lever |
|-------------|-----------|---------|--------|-------|
| [metric] | [why this input drives the output] | [X] | [Y] | [what team can do] |

### Causal Chain
[Output] ← [Input 1] + [Input 2] + [Input 3]
Show the math: "If we move Input 1 from X to Y, our model says Output moves by Z."
```

## Implementation Checklist

After defining the framework:

- [ ] Every metric has a precise definition (no ambiguity about how it's calculated)
- [ ] Every metric has a data source identified
- [ ] Every metric has a baseline measurement
- [ ] Targets are grounded in historical data or benchmarks, not wishes
- [ ] Counter-metrics are defined (what NOT to sacrifice for each target)
- [ ] Dashboard is designed with metrics grouped logically
- [ ] Review cadence is set (daily glance, weekly review, monthly deep dive)
- [ ] Alerting thresholds are defined for critical metrics

## Output

Save as `METRICS-FRAMEWORK-[product-name].md`.

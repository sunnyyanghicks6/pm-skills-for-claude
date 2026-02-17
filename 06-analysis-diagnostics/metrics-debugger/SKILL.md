---
name: metrics-debugger
description: >
  Debug metrics drops with first principles. When a key metric suddenly changes,
  systematically identify whether it's a real product issue, a data issue, or an
  external factor. Trigger this skill when the user mentions metrics drop, metric
  debugging, KPI drop, dashboard anomaly, or says things like "our metric just dropped,"
  "why did [metric] go down," "something looks off in the data," or "investigate this
  metrics change."
---

# Metrics Debugger

A metric just moved unexpectedly. Your job is to figure out why — fast. Is it a real
product problem, a data pipeline issue, an external factor, or a normal fluctuation?
Panic is expensive; methodical debugging is cheap.

## First Response

When a metric drops, resist the urge to hypothesize immediately. Follow this sequence:

### Step 1: Verify the Data

Before investigating the cause, confirm the drop is real:

- [ ] **Is the data fresh?** Check pipeline latency. Is today's data fully loaded?
- [ ] **Is the definition consistent?** Did someone change how the metric is calculated?
- [ ] **Is the source stable?** Any data pipeline failures, schema changes, or ETL errors?
- [ ] **Is sampling consistent?** If you use sampling, did the sample change?
- [ ] **Check multiple sources.** Does the drop appear in both your analytics tool AND
  the database? If only one shows it, it's likely a data issue.

If the data is wrong, stop. Fix the data. Don't debug a phantom problem.

### Step 2: Scope the Impact

```
## Impact Assessment

**Metric:** [name]
**Change:** [X → Y] ([Z% change])
**When:** [started date/time]
**Duration:** [how long]

**Affected segments:**
- By platform: [iOS / Android / Web — which shows the drop?]
- By geography: [specific regions?]
- By user type: [new vs. existing, free vs. paid?]
- By channel: [organic vs. paid, specific referrer?]

**Related metrics:**
- [Upstream metric]: [changed / stable]
- [Downstream metric]: [changed / stable]
- [Correlated metric]: [changed / stable]
```

### Step 3: Systematic Root Cause Analysis

Work through these categories in order:

**1. Internal product changes:**
- Any deployments in the timeframe? (Check deploy logs)
- Feature flag changes?
- A/B test started or ended?
- Infrastructure changes (CDN, load balancer, database migration)?

**2. External factors:**
- Seasonality (holiday, weekend, end of month)?
- Competitor action (launch, outage, price change)?
- News event affecting user behavior?
- App store changes (algorithm, featuring, ranking)?
- Platform changes (iOS update, Chrome update, API deprecation)?

**3. User behavior shift:**
- Traffic mix change (different channels sending different users)?
- User segment shift (enterprise vs. SMB ratio)?
- Bot traffic change?

**4. Upstream dependency:**
- Third-party API outage?
- Payment provider issue?
- Email deliverability change?
- Ad platform targeting change?

### Step 4: Quantify and Attribute

Once you've identified the likely cause:

```
## Root Cause

**Primary cause:** [description]
**Confidence:** High / Medium / Low
**Evidence:** [what confirms this]

**Impact breakdown:**
- [X%] of the drop is explained by [cause 1]
- [Y%] of the drop is explained by [cause 2]
- [Z%] is unexplained / noise

**Is this a one-time event or ongoing?** [assessment]
```

### Step 5: Recommend Response

| Urgency | Criteria | Action |
|---------|---------|--------|
| Critical | Revenue-impacting, user-facing, growing | Fix immediately, war room |
| High | Significant but contained | Fix this sprint, monitor hourly |
| Medium | Moderate impact, stable | Investigate and fix within 1-2 weeks |
| Low | Minor, self-correcting | Monitor, no action needed |

## Output

```
# Metrics Debug — [Metric Name] [Date]

## Summary
[2-3 sentences: what happened, why, what to do]

## Investigation Log
[Step-by-step what you checked and found]

## Root Cause
[Identified cause with evidence and confidence]

## Recommended Action
[What to do + urgency level]

## Monitoring Plan
[What to watch to confirm the fix or detect recurrence]
```

Save as `METRICS-DEBUG-[metric]-[date].md`.

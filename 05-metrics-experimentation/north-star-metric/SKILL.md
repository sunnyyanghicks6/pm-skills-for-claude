---
name: north-star-metric
description: >
  Identify and validate your product's North Star metric with supporting input metrics.
  The North Star is the single metric that best captures the value you deliver to
  customers. Trigger this skill when the user mentions north star metric, NSM, one metric
  that matters, single key metric, or says things like "what's our north star," "what
  one number should we track," or "define our key metric."
---

# North Star Metric Finder

The North Star Metric is the single number that best reflects the value your product
delivers to customers. It's not revenue (that's a business outcome). It's the usage
metric that, when it grows, means customers are getting what they came for.

## Before You Start

Ask the user:

1. **What value does your product deliver?** — In one sentence, why do customers use it?
2. **Business model** — How do you make money?
3. **Current metrics** — What do you track today? What feels closest to a NSM?
4. **Product stage** — Pre-PMF vs. growth vs. scale changes the right NSM.

## Selection Process

### Step 1: Identify the Core Value

The North Star should measure value delivered, not value extracted:

| Product Type | Value Delivered | Example NSM |
|-------------|----------------|-------------|
| Communication | Messages exchanged | Messages sent per week |
| Marketplace | Successful transactions | Transactions completed per week |
| SaaS tool | Work accomplished | Tasks completed per week |
| Content | Engagement with content | Minutes of content consumed per day |
| Fintech | Money managed | Dollars transacted per month |

### Step 2: Test Against Criteria

A good North Star Metric must pass ALL of these:

1. **Measures value to customer** — When it goes up, customers are happier (not just
   the business). Revenue growth without NSM growth means you're extracting, not creating.
2. **Leading indicator of revenue** — It correlates with future revenue growth. If
   NSM grows but revenue doesn't follow, the metric is wrong.
3. **Reflects product strategy** — It captures what's unique about YOUR approach to
   the problem. Two competitors in the same space might have different NSMs.
4. **Actionable by the product team** — The team can influence it through product
   decisions. If it's purely driven by marketing or sales, it's not a product NSM.
5. **Understandable** — Anyone in the company can explain what it means and why it
   matters. If you need a paragraph to define it, simplify.

### Step 3: Define the Input Metrics

The NSM is an output. Identify 3-5 input metrics that drive it:

```
North Star: [Metric]
├── Input 1: [What drives NSM — team can directly influence]
├── Input 2: [What drives NSM]
├── Input 3: [What drives NSM]
└── Counter-metric: [What we must NOT sacrifice to grow NSM]
```

The counter-metric is critical. If your NSM is "messages sent per week," your
counter-metric might be "% of messages that receive a reply." Without it, you
could game the NSM with spam-like features.

### Step 4: Validate with Data

Before committing, check:
- Does this metric correlate with retention? (Users with high NSM stay longer)
- Does it correlate with revenue? (Users with high NSM pay more/upgrade)
- Is it sensitive to product changes? (When you ship improvements, does it move?)
- Does it have enough variance to be useful? (If everyone is at the same level,
  it won't help you prioritize)

### Step 5: Set the Target

Use the format: "[Metric] = [Current] → [Target] by [Date]"

Ground the target in:
- Historical growth rate
- Benchmark data from similar products
- What would need to be true for the business to hit its goals

## Output

```
# North Star Metric — [Product Name]

## Our North Star
**Metric:** [precise definition]
**Current:** [value]
**Target:** [value] by [date]
**Why this metric:** [2-3 sentences connecting it to customer value]

## Input Metrics
| Input | Definition | Current | Target | Owner |
|-------|-----------|---------|--------|-------|
| [input] | [definition] | [X] | [Y] | [team] |

## Counter-Metric
**Metric:** [what we won't sacrifice]
**Threshold:** [minimum acceptable level]

## Validation
- Retention correlation: [data]
- Revenue correlation: [data]
- Sensitivity to product changes: [evidence]

## How We'll Use It
- **Weekly:** [What we check]
- **Monthly:** [What we review]
- **Quarterly:** [How it informs planning]
```

Save as `NORTH-STAR-[product-name].md`.

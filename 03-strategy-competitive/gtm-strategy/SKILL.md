---
name: gtm-strategy
description: >
  Build a complete Go-to-Market strategy with target segments, channels, messaging,
  pricing approach, launch timeline, and success metrics. Incorporates Aakash Gupta's
  PLG layers where relevant. Trigger this skill when the user mentions go to market,
  GTM, launch strategy, market entry, product launch plan, or says things like "how
  do we bring this to market," "plan the launch," or "GTM for this feature."
---

# Go-to-Market Strategy Generator

A GTM strategy is the bridge between "we built it" and "people use it and pay for it."
This skill produces a structured GTM plan that covers who you're targeting, how you'll
reach them, what you'll say, and how you'll measure success.

## Before You Start

Ask the user:

1. **What's launching?** — New product, new feature, new market expansion, pricing change.
2. **Target audience** — Who are the first users? Be specific about the segment.
3. **Business model** — PLG/self-serve, sales-led, hybrid. This fundamentally changes the GTM.
4. **Timeline** — Hard launch date or flexible? Any external dependencies (conference, funding round)?
5. **Budget/resources** — Marketing budget, sales team size, growth engineering capacity.
6. **Competitive context** — Who else serves this audience? What's our differentiation?

## GTM Strategy Structure

```
# Go-to-Market Strategy — [Product/Feature Name]

**Launch date:** [date] | **Author:** [name] | **Status:** Draft

---

## 1. Market Opportunity

**Target segment:** [Specific description — not "everyone"]
**Segment size:** [TAM/SAM/SOM with sources]
**Why now:** [Market timing, competitive window, internal readiness]
**Key insight:** [The one thing we know about this market that others don't]

## 2. Positioning & Messaging

### Positioning Statement
For [target audience] who [need/pain point], [Product] is a [category]
that [key benefit]. Unlike [competitive alternative], we [key differentiator].

### Messaging Hierarchy

**Primary message (headline):** [10 words max — the benefit that matters most]

**Supporting messages:**
1. [Message pillar 1] — [proof point]
2. [Message pillar 2] — [proof point]
3. [Message pillar 3] — [proof point]

**Objection handling:**
| Objection | Response |
|-----------|----------|
| "[common pushback]" | [how to address it] |

## 3. Growth Model

### If Product-Led Growth (Aakash Gupta's 7 Layers):

**Acquisition:** How do users discover the product?
- [Channel 1]: [approach + expected contribution]
- [Channel 2]: [approach + expected contribution]

**Activation:** What's the "aha moment" and how fast do users reach it?
- [Define the activation event]
- [Target: X% of signups activate within Y days]

**Retention:** What brings users back?
- [Core loop description]
- [Target: X% D7 retention, Y% D30 retention]

**Revenue:** What triggers the upgrade from free to paid?
- [Monetization trigger]
- [Pricing strategy: freemium / free trial / reverse trial]

**Referral:** How do users bring other users?
- [Viral mechanism — built-in sharing, team invites, etc.]
- [Target viral coefficient]

### If Sales-Led:
- **ICP definition:** [Firmographics + technographics + buying signals]
- **Sales motion:** [Inbound, outbound, partner, or hybrid]
- **Deal size target:** [$X ACV]
- **Sales cycle:** [Expected length]
- **Required collateral:** [Demo script, case studies, ROI calculator, etc.]

## 4. Channel Strategy

| Channel | Role | Investment | Expected Outcome | Timeline |
|---------|------|-----------|-----------------|----------|
| [channel] | [awareness/acquisition/activation] | [budget/effort] | [metric] | [when] |

## 5. Launch Plan

### Pre-launch (T-4 weeks)
- [ ] [Action item] — [owner] — [date]

### Launch week
- [ ] [Action item] — [owner] — [date]

### Post-launch (T+4 weeks)
- [ ] [Action item] — [owner] — [date]

## 6. Success Metrics

| Metric | Target (30 days) | Target (90 days) | Measurement |
|--------|-----------------|-----------------|-------------|
| [metric] | [target] | [target] | [tool/method] |

### Kill Criteria
If [condition] by [date], we will [pivot/sunset/re-evaluate].

## 7. Risks & Mitigations

| Risk | Likelihood | Impact | Mitigation |
|------|-----------|--------|------------|
| [risk] | High/Med/Low | High/Med/Low | [plan] |
```

Save as `GTM-STRATEGY-[product-name].md`.

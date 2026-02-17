---
name: competitive-landscape
description: >
  Map multiple competitors into a unified landscape with positioning matrices, feature
  comparisons, and market segment analysis. Broader than single-competitor analysis —
  this covers the entire competitive field. Trigger this skill when the user mentions
  competitive landscape, market map, competitive overview, market analysis, industry
  landscape, or says things like "map out all our competitors," "who's in this space,"
  or "create a market overview."
---

# Competitive Landscape Mapper

You map entire competitive markets, not just individual competitors. This skill produces
a bird's-eye view of who's playing in the space, how they're positioned, where the
white space is, and where the market is headed.

## Before You Start

Ask the user:

1. **What market/category?** — Define the boundaries of the landscape.
2. **How many competitors?** — Known players to include, plus a request to identify
   ones the user might be missing.
3. **What's the purpose?** — Board presentation, investor deck, strategic planning,
   new market entry assessment.
4. **Time horizon** — Current state only, or include trajectory/predictions.

## Landscape Structure

```
# Competitive Landscape — [Market/Category]

**Date:** [today] | **Author:** [name]

## Market Overview
[3-5 sentences: market size, growth rate, key trends reshaping the space, maturity stage]

## Player Map

### Tier 1: Market Leaders
| Company | Est. Revenue | Funding | Key Strength | Target Segment |
|---------|-------------|---------|-------------|----------------|
| [company] | [range] | [total] | [one phrase] | [who they serve] |

### Tier 2: Strong Challengers
[Same table format]

### Tier 3: Emerging / Niche
[Same table format]

### Adjacent Threats
[Companies not directly competing today but could enter — and why]

## Positioning Matrix

### Matrix 1: [Primary dimensions]
[2x2 grid with all players plotted — choose dimensions that reveal the most
strategic insight for the user's context]

### Matrix 2: [Secondary dimensions]
[Different 2x2 that reveals a different strategic truth]

## Feature Landscape

| Capability | Leader A | Leader B | Challenger C | Us | Market Table Stakes |
|-----------|---------|---------|-------------|-----|-------------------|
| [feature] | [status] | [status] | [status] | [status] | Yes/No |

Color-code or tag: ✅ Strong | ⚡ Competitive | ⭕ Gap | ❌ Not offered

**Table stakes** = capabilities customers expect from any player. If you don't
have these, you're not in the conversation.

## Market Segments

| Segment | Dominant Player | Underserved? | Our Opportunity |
|---------|----------------|-------------|-----------------|
| [segment] | [who wins here] | [yes/no + why] | [what we could do] |

## Trend Analysis

### Where the market is headed (12-18 months)
1. [Trend] — [Impact on competitive dynamics]
2. [Trend] — [Impact]
3. [Trend] — [Impact]

### Potential disruptions
- [Technology shift, regulatory change, or business model innovation that could
  reshape the landscape]

## White Space Analysis
[Where is there opportunity that no one is serving well?]
- [Opportunity 1]: [why it exists, who would value it, barrier to entry]
- [Opportunity 2]: [same]

## Strategic Implications for [Our Product]
1. [Where to compete — and where NOT to]
2. [Differentiation opportunities]
3. [Partnership or acquisition targets]
4. [Timeline urgency — is the window closing?]
```

Save as `LANDSCAPE-[market]-[date].md`.

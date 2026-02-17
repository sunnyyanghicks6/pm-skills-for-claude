---
name: competitor-analysis
description: >
  Create comprehensive competitor analysis using Gibson Biddle's DHM framework (Delight,
  Hard-to-copy, Margin-enhancing) with strategic positioning insights. Trigger this skill
  when the user mentions competitor analysis, competitive analysis, competitive intelligence,
  battlecard, DHM framework, or says things like "analyze this competitor," "how do we
  compare to [company]," or "build a competitive brief."
---

# Competitor Analysis (DHM Framework)

You build competitor analyses that go beyond feature comparison checklists. Using Gibson
Biddle's DHM framework, you evaluate whether competitive advantages are sustainable —
not just whether a feature exists.

## Before You Start

Ask the user:

1. **Which competitor(s)?** — Specific companies or "the competitive landscape."
2. **What's the context?** — Sales battlecard, strategic planning, board prep, feature gap analysis.
3. **What data do we have?** — Product demos, pricing pages, customer feedback mentioning
   competitors, G2/Capterra reviews, analyst reports.
4. **Our positioning** — What's our current value prop so we can compare honestly.

## Analysis Framework

### Step 1: Product Capability Mapping

| Capability | Us | Competitor A | Competitor B | Notes |
|-----------|-----|-------------|-------------|-------|
| [capability] | [rating/status] | [rating/status] | [rating/status] | [context] |

Use specific ratings: "Best in class" / "Competitive" / "Gap" / "Not offered"
— not vague 1-5 scales.

### Step 2: DHM Assessment (Gibson Biddle)

For each competitor, evaluate their product through three lenses:

**Delight:** What do their users genuinely love about the product?
- What generates word-of-mouth?
- What would users miss most if they switched away?
- What do G2/Capterra reviewers praise most?

**Hard-to-copy:** Which advantages are defensible?
- Network effects (more users = more value)
- Proprietary data or technology
- Brand and trust accumulated over years
- Ecosystem/integration lock-in
- Switching costs (data, workflow, training)
- Economies of scale

**Margin-enhancing:** Does their model sustain investment?
- Pricing power (can they raise prices without losing customers?)
- Unit economics trajectory
- Expansion revenue vs. new customer dependency
- Funding/cash position for sustained competition

### Step 3: Strategic Positioning Map

Place competitors on a 2x2 matrix. Choose the two dimensions most relevant to
the user's context:

Common axis pairs:
- **Ease of use** vs. **Power/Depth**
- **SMB focus** vs. **Enterprise focus**
- **Point solution** vs. **Platform**
- **Low price** vs. **Premium**

```
                    High [Dimension 2]
                         |
          Competitor A   |   Us
                         |
  Low [Dim 1] ----------+---------- High [Dim 1]
                         |
          Competitor C   |   Competitor B
                         |
                    Low [Dimension 2]
```

### Step 4: Win/Loss Analysis

| Scenario | We Win When... | We Lose When... |
|----------|---------------|-----------------|
| vs. Competitor A | [conditions] | [conditions] |
| vs. Competitor B | [conditions] | [conditions] |

### Step 5: Strategic Implications

For each competitor, answer:
- **What should we copy?** — Features or approaches clearly working for them.
- **What should we counter?** — Where we can differentiate instead of matching.
- **What should we ignore?** — Their moves that are irrelevant to our strategy.
- **What's their likely next move?** — Based on their trajectory, hiring, and messaging.

## Output Structure

```
# Competitive Analysis — [Competitor(s)] vs. [Our Product]

## Executive Summary
[3-4 sentences: key finding, biggest threat, biggest opportunity, recommended action]

## Feature Comparison Matrix
[Detailed capability table]

## DHM Assessment
### [Competitor A]
**Delight:** [what users love]
**Hard-to-copy:** [defensible advantages]
**Margin-enhancing:** [business model strength]
**Overall threat level:** High / Medium / Low

[Repeat per competitor]

## Positioning Map
[2x2 visual + narrative explanation]

## Win/Loss Patterns
[Table with conditions]

## Strategic Recommendations
1. [Action item with rationale]
2. [Action item with rationale]
3. [Action item with rationale]

## Sources
[List all data sources used in the analysis]
```

Save as `COMPETITOR-ANALYSIS-[competitor]-[date].md`.

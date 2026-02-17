---
name: ai-opportunity-finder
description: >
  Identify AI/ML opportunities for your product. Evaluates where AI can create genuine
  user value vs. where it's just hype. Inspired by Nate B Jones's pragmatic approach
  to AI-first product strategy. Trigger this skill when the user mentions AI strategy,
  AI opportunities, AI features, ML opportunities, where to use AI, AI product strategy,
  or says things like "where should we use AI in our product," "find AI opportunities,"
  or "should we add AI to this feature."
---

# AI Opportunity Finder

Not every product needs AI. But every product team should know where AI would create
genuine value vs. where it's a distraction. This skill helps you find real AI
opportunities — not "add a chatbot" but "here's where AI fundamentally improves the
user experience."

## Before You Start

Ask the user:

1. **What's the product?** — What it does, who uses it, core workflows.
2. **Current pain points** — Where do users struggle, wait, or do repetitive work?
3. **Data available** — What user data, content, or behavioral data exists?
4. **Team capability** — Do you have ML engineers, or would this require hiring/buying?
5. **Strategic context** — Is AI a strategic priority, or exploring early?

## Opportunity Identification Framework

### Step 1: Map User Workflows

For each core workflow, identify where users:

| Workflow Step | User Action | Time Spent | Friction | Data Available? |
|-------------|-------------|-----------|----------|----------------|
| [step] | [what they do] | [minutes] | [High/Med/Low] | [Yes/No — what data] |

### Step 2: AI Opportunity Filter

For each high-friction step, evaluate AI fit:

**Good AI candidates:**
- Tasks that are repetitive but require judgment (classification, prioritization, summarization)
- Processes with lots of data but little insight (pattern detection, anomaly detection)
- Personalization at scale (recommendations, content curation)
- Content generation with human review (drafts, suggestions, completions)
- Prediction based on historical patterns (forecasting, risk scoring)

**Bad AI candidates (Nate B Jones principle: don't force it):**
- Tasks requiring perfect accuracy with no tolerance for errors
- Workflows where users need to trust and verify every output
- Problems that are simpler to solve with traditional software
- Features where AI adds complexity without proportional value
- Areas with insufficient or biased training data

### Step 3: Evaluate Each Opportunity

| Opportunity | AI Approach | User Value | Data Ready? | Build/Buy | Effort | Risk |
|------------|-----------|-----------|------------|-----------|--------|------|
| [opportunity] | [technique] | [benefit] | [Y/N] | [build/buy/partner] | [S/M/L] | [H/M/L] |

### Step 4: Value Assessment

For each opportunity, answer:

**User value:** Does this save time, reduce errors, or enable something previously impossible?
**Business value:** Does this increase revenue, reduce cost, or create competitive moat?
**Feasibility:** Can we build this with available data, team, and infrastructure?
**Risk:** What happens when the AI is wrong? How bad is a false positive/negative?
**Trust:** Will users trust AI in this context? How do we build that trust?

### Step 5: Implementation Strategy

For top opportunities:

**Start with augmentation, not automation.** AI suggests, human decides. This builds
trust and generates training data for better models.

**Build the feedback loop.** Every AI feature needs a way for users to correct it.
These corrections become training data that makes the model better over time.

**Plan for failure gracefully.** What's the user experience when the AI is wrong?
If there's no good fallback, the feature isn't ready.

## Output

```
# AI Opportunity Assessment — [Product Name]

## Executive Summary
[2-3 sentences: top opportunities, strategic recommendation, readiness assessment]

## Opportunity Map
| Priority | Opportunity | Value | Feasibility | Recommended Approach |
|----------|-----------|-------|-------------|---------------------|
| 1 | [opportunity] | High | High | [approach] |
| 2 | [opportunity] | High | Medium | [approach] |
| 3 | [opportunity] | Medium | High | [approach] |

## Detailed Analysis
[Per-opportunity deep dive]

## What NOT to Build with AI
[Opportunities that were evaluated and rejected, with reasoning]

## Prerequisites
- Data requirements: [what's needed]
- Team requirements: [hire/upskill/partner]
- Infrastructure: [what's needed]

## Recommended Roadmap
- **Phase 1 (0-3 months):** [Quick win AI feature — augmentation mode]
- **Phase 2 (3-6 months):** [Higher complexity — with feedback loop data from Phase 1]
- **Phase 3 (6-12 months):** [Full automation where trust has been established]
```

Save as `AI-OPPORTUNITIES-[product-name].md`.

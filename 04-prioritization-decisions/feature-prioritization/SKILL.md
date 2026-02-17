---
name: feature-prioritization
description: >
  Score and rank features using RICE, ICE, or weighted scoring frameworks with clear
  documentation of trade-offs. Trigger this skill when the user mentions prioritization,
  RICE scoring, ICE scoring, feature ranking, backlog prioritization, stack ranking,
  weighted scoring, or says things like "help me prioritize these features," "which
  should we build first," or "rank this backlog."
---

# Feature Prioritization

You help PMs make defensible prioritization decisions. Not gut feel dressed up as
analysis — actual structured evaluation that surfaces trade-offs and makes the
reasoning transparent to stakeholders.

## Before You Start

Ask the user:

1. **What features/initiatives are we prioritizing?** — List of 5-20 items.
2. **What framework to use?** — RICE, ICE, Weighted Scoring, or recommend one.
3. **What's the strategic context?** — Company goals, OKRs, constraints.
4. **Who decides?** — PM alone, leadership team, cross-functional group.
5. **Time horizon** — This quarter, this half, this year.

If the user isn't sure which framework, recommend based on context:
- **RICE** — Best for product teams with good data on reach and impact.
- **ICE** — Faster, good for early-stage or when data is sparse.
- **Weighted Scoring** — Best when multiple stakeholders have different priorities.

## RICE Framework

| Feature | Reach | Impact | Confidence | Effort | RICE Score |
|---------|-------|--------|-----------|--------|------------|
| [feature] | [users/quarter] | [0.25-3] | [50-100%] | [person-months] | R×I×C/E |

**Reach:** How many users will this affect per quarter? Use real numbers, not guesses.
**Impact:** 3 = Massive, 2 = High, 1 = Medium, 0.5 = Low, 0.25 = Minimal.
**Confidence:** 100% = backed by data, 80% = strong hypothesis, 50% = gut feel.
**Effort:** Person-months of engineering + design + QA. Ask engineering for estimates.

**RICE Score = (Reach × Impact × Confidence) / Effort**

Higher score = higher priority. But don't blindly follow the math — the framework
surfaces trade-offs, it doesn't make decisions.

## ICE Framework

| Feature | Impact (1-10) | Confidence (1-10) | Ease (1-10) | ICE Score |
|---------|-------------|-------------------|-----------|-----------|
| [feature] | [score] | [score] | [score] | I×C×E |

Faster than RICE. Use when you need a quick read on relative priority.

## Weighted Scoring

Define custom criteria based on your strategic context:

| Feature | Strategic Fit (w:30%) | User Impact (w:25%) | Revenue (w:20%) | Effort (w:15%) | Risk (w:10%) | Total |
|---------|---------------------|--------------------|-----------------|--------------------|------------------|-------|
| [feature] | [1-5] | [1-5] | [1-5] | [1-5, inverted] | [1-5, inverted] | [weighted sum] |

Let the user define the criteria and weights — this framework only works when the
scoring dimensions reflect actual strategic priorities.

## Beyond the Score

After scoring, always present:

### The Stack Rank
Ordered list with scores, grouped by natural tiers (clear winners, middle pack, deprioritized).

### Trade-off Narratives
For the top 5, explain WHY they ranked high. For anything surprising (high score but
feels wrong, or low score for a pet project), call it out.

### The Opportunity Cost Check (Shreyas Doshi)
"By choosing items 1-5, we're explicitly saying NO to items 6-15. Here's what
we're giving up and why the trade-off is worth it."

### Dependencies and Sequencing
Some features unlock others. Note any ordering constraints that the score alone
doesn't capture.

### Confidence Gaps
Flag items where the score is high but confidence is low. These need validation
(customer research, technical spike) before committing.

## Output

```
# Feature Prioritization — [Context/Quarter]

## Framework: [RICE / ICE / Weighted]
## Scoring Table
[Full table with all scores]

## Recommended Priority Order
1. [Feature] — Score: [X] — [One sentence rationale]
2. [Feature] — Score: [X] — [One sentence rationale]
...

## Trade-offs & What We're Saying No To
[Narrative on what's being deprioritized and why]

## Confidence Gaps to Resolve
[Items needing validation before committing]

## Dependencies
[Sequencing constraints]
```

Save as `PRIORITIZATION-[context]-[date].md`.

---
name: feature-brief
description: >
  Create a concise one-page feature brief for stakeholder alignment before committing to
  a full PRD. Uses Shreyas Doshi's Three Levels of Product Work to ensure the brief
  addresses impact, execution, and optics. Trigger this skill when the user mentions
  feature brief, one-pager, feature proposal, feature pitch, concept doc, or says things
  like "quick write-up for leadership," "summarize this feature idea," or "I need to
  pitch this before we spec it."
---

# Feature Brief Generator

A feature brief is the "should we even do this?" document. It's shorter than a PRD,
faster to write, and designed to get a yes/no decision from leadership before you invest
weeks in detailed requirements.

## Before You Start

Ask the user:

1. **What's the idea?** — One sentence.
2. **Who asked for it?** — Customer request, data insight, strategic initiative, or your own hunch.
3. **Who needs to approve it?** — This shapes the framing.

## Feature Brief Template

```
# [Feature Name] — Feature Brief

**Author:** [name] | **Date:** [today] | **Decision needed by:** [date]

---

## The Problem (2-3 sentences)
What's broken, missing, or suboptimal? Use real data or customer quotes.
Don't describe the solution here — just the pain.

## The Opportunity (2-3 sentences)
Why is this worth doing now? Size the opportunity:
- How many users are affected?
- What's the revenue/retention/engagement impact?
- What happens if we do nothing?

## Proposed Approach (3-5 sentences)
High-level solution direction. Not a spec — just enough for someone to picture
what you're proposing. Include what this is NOT (scope boundaries).

## Three Levels Check (Shreyas Doshi)

**Impact:** What measurable outcome will this produce?
[One sentence with a specific metric target]

**Execution:** Can we build this with current resources in [timeframe]?
[One sentence on feasibility and team capacity]

**Optics:** How will stakeholders and customers perceive this?
[One sentence on narrative/positioning]

## Effort vs. Impact

| | Low Effort | High Effort |
|---|---|---|
| **High Impact** | [Sweet spot — do this] | [Worth it if strategic] |
| **Low Impact** | [Quick win or skip] | [Avoid] |

Where does this feature land? Be honest.

## Key Risks
1. [Risk 1 — one sentence]
2. [Risk 2 — one sentence]
3. [Risk 3 — one sentence]

## Ask
What specifically do you need from the reader?
- [ ] Approval to write full PRD
- [ ] Engineering spike to validate feasibility
- [ ] Design exploration
- [ ] Data analysis to size the opportunity
- [ ] Other: [specify]
```

## Writing Guidelines

- Keep it to ONE page. If you're going over, you're speccing too much.
- Lead with the problem, not the solution. Decision-makers need to believe the
  problem is real before they'll invest in solving it.
- Include one compelling data point or customer quote. Not three — one.
- The "Ask" section is the most important. Be crystal clear about what decision
  you need and by when.

## Output

Save as `BRIEF-[feature-name].md`.

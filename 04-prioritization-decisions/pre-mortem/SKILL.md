---
name: pre-mortem
description: >
  Run a Shreyas Doshi-style pre-mortem to identify failure modes before they happen.
  Imagine the project has failed and work backward to prevent it. Trigger this skill
  when the user mentions pre-mortem, premortem, risk analysis, failure analysis, risk
  assessment, project risks, or says things like "what could go wrong," "stress test
  this plan," or "identify risks before we start."
---

# Pre-Mortem (Shreyas Doshi)

You run pre-mortems that surface genuinely uncomfortable truths. The exercise works
because it inverts the normal optimism of planning: instead of "how will this succeed?"
you ask "why did this fail?" The psychology of pre-mortems creates permission to be
pessimistic — which is exactly what risk management requires.

## Before You Start

Ask the user:

1. **What's the project/initiative?** — PRD, launch plan, strategic bet, reorg.
2. **Timeline** — When is this expected to deliver results?
3. **Team involved** — Functions, key people, dependencies.
4. **What's already been identified?** — Known risks so we don't duplicate.

## Pre-Mortem Process

### Step 1: Set the Scene

"It's [6 months / 1 year] from now. This project has failed. Not a partial success —
a clear failure. Users aren't using it, metrics didn't move, the team is demoralized,
and leadership is asking what went wrong. Let's figure out why."

### Step 2: Generate Failure Modes

Think through every category systematically:

**Adoption Failures:**
- Users don't understand the value proposition
- The problem we're solving isn't actually painful enough to change behavior
- Switching costs are higher than the benefit
- We built for the wrong persona
- The feature is discoverable but not compelling on first use

**Execution Failures:**
- Technical complexity was 3x what we estimated
- Key engineer left mid-project
- Design went through 5 iterations and we shipped something nobody loved
- We cut the wrong corners to hit the deadline
- Integration with [system] was harder than expected

**Organizational Failures:**
- Leadership shifted priorities mid-project
- The team that owns [dependency] didn't deliver on time
- Legal/compliance raised a blocker we didn't anticipate
- We couldn't get design resources when we needed them
- Cross-team coordination overhead ate 40% of engineering time

**Market Failures:**
- Competitor shipped a similar feature first
- Market conditions changed (economic downturn, regulation)
- Customer needs evolved between planning and launch
- We priced it wrong

**Measurement Failures:**
- We couldn't instrument the metrics we needed
- The metrics moved but we couldn't attribute it to our feature
- We optimized for a vanity metric that didn't matter
- Sample size was too small to draw conclusions

### Step 3: Assess and Prioritize

| # | Failure Mode | Category | Likelihood | Impact | Detectability |
|---|-------------|----------|-----------|--------|---------------|
| 1 | [description] | [category] | High/Med/Low | High/Med/Low | Early/Late/After |

**Detectability matters:** Can we see this coming early enough to react, or will we
only know it failed after the damage is done?

### Step 4: Mitigate Top Risks

For the top 5 failure modes (highest likelihood × impact):

```
### Risk: [Failure mode]
**Likelihood:** [High/Med/Low] | **Impact:** [High/Med/Low]

**Leading indicators:** [What would we see early if this is happening?]
- [Signal 1] — [When we'd see it]
- [Signal 2] — [When we'd see it]

**Prevention:** [What we can do NOW to reduce likelihood]
- [Action] — [Owner] — [By when]

**Contingency:** [If it happens despite prevention, what's Plan B?]
- [Backup plan]

**Accept/Mitigate/Avoid:** [Explicit decision on how to handle this risk]
```

### Step 5: The Uncomfortable Truth Check

Ask yourself: "Is there a risk I'm avoiding because it's politically uncomfortable
to name?" If yes, that's probably the most important one. Surface it.

Common politically uncomfortable risks:
- "The executive sponsor doesn't actually understand what we're building"
- "Engineering doesn't believe in this approach but agreed under pressure"
- "We don't have the data to know if this will work and we're guessing"
- "This exists because a competitor shipped it, not because our users need it"

## Output

```
# Pre-Mortem — [Project Name]

**Date:** [today] | **Project timeline:** [dates]

## Failure Scenario
[Vivid 2-3 sentence description of what failure looks like]

## Failure Mode Inventory
[Full table of all identified failure modes]

## Top 5 Risks — Detailed Mitigation Plans
[Detailed analysis per risk]

## Risk Monitoring Plan
| Risk | Leading Indicator | Check Frequency | Owner |
|------|------------------|----------------|-------|
| [risk] | [signal] | [weekly/biweekly] | [name] |

## Summary
[2-3 sentences: overall risk profile, biggest concern, confidence level in mitigations]
```

Save as `PRE-MORTEM-[project-name].md`.

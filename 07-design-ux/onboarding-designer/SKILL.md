---
name: onboarding-designer
description: >
  Design onboarding flows that guide users to value quickly. Focuses on time-to-value
  optimization and activation rate improvement. Trigger this skill when the user mentions
  onboarding, first-time experience, FTUE, activation flow, welcome flow, setup wizard,
  time to value, or says things like "design the onboarding," "users are dropping off
  during setup," or "improve our first-time experience."
---

# Onboarding Designer

Great onboarding doesn't teach users your product — it helps them accomplish their
goal as fast as possible. Every screen, step, and tooltip should either move the user
closer to their "aha moment" or get out of the way.

## Before You Start

Ask the user:

1. **What's the aha moment?** — The specific action where users first experience value.
2. **Current onboarding** — What exists today? Where do users drop off?
3. **User segments** — Different users may need different onboarding paths.
4. **Constraints** — Required data collection, compliance, technical limitations.

## Design Process

### Step 1: Define the Aha Moment

The aha moment is the action most correlated with long-term retention. Everything
in onboarding exists to get users here faster.

"Users who [specific action] within [time window] retain at [X%] vs [Y%] for those who don't."

### Step 2: Map the Critical Path

What's the minimum number of steps between signup and aha moment?

```
Current path: Signup → Profile → Settings → Tutorial → Invite → [Aha!]  (6 steps)
Optimized:    Signup → [Aha!] → Profile → Invite  (4 steps, aha moved earlier)
```

Rules:
- Move the aha moment as early as possible
- Defer everything that isn't needed for the aha moment
- Ask for information only when you need it (progressive profiling)
- Show value before asking for commitment

### Step 3: Design Each Step

For every onboarding step:

```
### Step [N]: [Name]

**Purpose:** Why does this step exist? [If you can't answer, cut it.]
**User sees:** [What's on screen]
**User does:** [What action they take]
**Data collected:** [What you learn — for product analytics or personalization]
**Success criteria:** [X% of users complete this step]
**Drop-off mitigation:** [What happens if they try to leave]

**Skip logic:** [Can this step be skipped? Under what conditions?]
**Progressive disclosure:** [Start simple, reveal complexity as needed]
```

### Step 4: Design for Segments

| Segment | Aha Moment | Key Path Difference | Personalization |
|---------|-----------|--------------------|--------------------|
| [segment] | [their aha] | [different steps?] | [what changes] |

### Step 5: Design Recovery Mechanisms

Users will abandon onboarding. Plan for it:
- **Save progress** — Don't make them restart
- **Re-engagement emails** — Triggered by abandonment, focused on value
- **Simplified re-entry** — When they come back, show one clear next step
- **Alternative paths** — Some users prefer self-service exploration over guided flows

## Output

```
# Onboarding Design — [Product Name]

## Aha Moment
[Definition and retention correlation data]

## Onboarding Flow
[Step-by-step design with wireframe descriptions]

## Segment Variations
[Per-segment adjustments]

## Metrics
| Metric | Current | Target |
|--------|---------|--------|
| Onboarding completion rate | [X%] | [Y%] |
| Time to aha moment | [X days] | [Y days] |
| D7 retention (completed onboarding) | [X%] | [Y%] |

## Recovery & Re-engagement Plan
[Email triggers, re-entry flows]
```

Save as `ONBOARDING-DESIGN-[product-name].md`.

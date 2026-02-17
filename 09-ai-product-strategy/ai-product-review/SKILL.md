---
name: ai-product-review
description: >
  Review PRDs and feature specs from the user's perspective to predict adoption,
  support burden, and satisfaction impact. Simulates how real users will experience
  the product before it's built. Trigger this skill when the user mentions product
  review, user perspective review, adoption prediction, UX review, customer impact
  review, or says things like "review this from the user's perspective," "will users
  actually use this," or "predict how customers will react."
---

# AI Product Review (User Perspective Simulator)

You review product specs by simulating how actual users will experience the feature.
Not how the PM HOPES they'll use it — how they WILL use it, including the parts
where they get confused, abandon the flow, or file a support ticket.

## Before You Start

Ask the user:

1. **The spec** — PRD, feature brief, or design mockups.
2. **Target personas** — Who are the primary users?
3. **Current behavior** — What do they do today? What are they switching from?
4. **Success metrics** — What does the PM hope to achieve?

## Review Dimensions

### 1. Adoption Prediction

**Will users discover this?**
- How will they learn about it? (In-app, email, word of mouth, support)
- Is the entry point obvious or buried?
- Does the naming/labeling match what users would search for?

**Will users try it?**
- Is the value proposition clear in the first 5 seconds?
- What's the effort to try it? (One click? 10 minutes of setup?)
- Is there a "try before you commit" path?

**Will users keep using it?**
- Does it solve a recurring need or a one-time problem?
- Is it faster/better than their current workaround?
- What would make them revert to the old way?

**Adoption risk score:** High / Medium / Low — with rationale.

### 2. Usability Assessment

Walk through the proposed flow as each persona:

```
### Persona: [Name]
**Goal:** [What they're trying to accomplish]

Step 1: [What they see] → [What they'd think] → [What they'd do]
Step 2: [What they see] → [What they'd think] → [What they'd do]
...
**Likely confusion points:** [Where they'd get stuck]
**Likely frustration points:** [Where they'd get annoyed]
**Likely delight points:** [Where they'd think "nice, this is good"]
```

### 3. Support Burden Prediction

| Predicted Support Issue | Frequency | Preventable? | Mitigation |
|------------------------|-----------|-------------|------------|
| [issue users will contact support about] | High/Med/Low | Yes/No | [how to prevent] |

### 4. Satisfaction Impact

**What will increase satisfaction:**
- [Specific aspect that users will appreciate]

**What will decrease satisfaction:**
- [Specific aspect that will frustrate users]
- [Edge case that will generate complaints]

**Net satisfaction prediction:** Positive / Neutral / Negative

### 5. Competitive Reaction

How does this compare to how competitors solve the same problem?
- [Better than competitor X at...]
- [Worse than competitor Y at...]
- [Differentiated from everyone by...]

## Output

```
# Product Review — [Feature Name]

## Summary Verdict
**Adoption prediction:** [High/Medium/Low confidence of adoption]
**User satisfaction impact:** [Positive/Neutral/Negative]
**Support burden:** [High/Medium/Low]
**Ship recommendation:** [Ship as-is / Ship with changes / Rethink]

## Detailed Review
[Per-dimension analysis]

## Top 3 Improvements (Highest Impact)
1. [Change] — [Why it matters to users] — [Effort]
2. [Change] — [Why] — [Effort]
3. [Change] — [Why] — [Effort]

## What's Strong
[Genuine praise for what will work well]
```

Save as `PRODUCT-REVIEW-[feature-name].md`.

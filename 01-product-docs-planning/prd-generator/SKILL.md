---
name: prd-generator
description: >
  Transform a problem statement, feature idea, or rough brief into a structured, engineering-ready
  Product Requirements Document (PRD). Uses Teresa Torres's Opportunity Solution Tree for framing
  the problem space, Marty Cagan's empowered-team philosophy for solution design, and Shreyas Doshi's
  Pre-Mortem technique to stress-test before handoff. Trigger this skill whenever the user mentions
  PRD, product requirements, spec, feature spec, requirements document, or says things like
  "write up what we're building", "spec this out", or "turn this into a doc engineering can use."
---

# PRD Generator

You are a senior product manager writing a PRD that will align stakeholders and give engineering
everything they need to start building. A great PRD isn't a feature list — it's a thinking tool
that forces clarity on the problem before jumping to solutions.

## Before You Start

Ask the user for whichever of these you don't already have from the conversation:

1. **What problem are we solving?** — In the user's own words. One sentence is fine.
2. **Who experiences this problem?** — Target user or persona.
3. **Why now?** — What changed that makes this worth doing in this cycle.
4. **Any constraints?** — Timeline, tech stack, dependencies, regulatory.

If the user gives you a vague prompt like "write a PRD for notifications," don't guess. Ask
what's broken about the current state and who's hurting. The problem framing is the most
valuable part of the document — get it right.

## PRD Structure

Use the following template. Every section matters; don't skip any unless the user explicitly
says to.

```
# [Feature Name] — PRD

**Author:** [name]
**Date:** [today]
**Status:** Draft | In Review | Approved
**Stakeholders:** [list]

---

## 1. Problem Statement

Write 2-3 sentences describing the problem from the user's perspective. Ground it in
observable behavior or data, not assumptions. Reference the Opportunity Solution Tree:
what's the desired outcome, and what opportunity does this address?

Format: "[User type] currently [pain point]. This results in [measurable impact].
We believe that [opportunity statement]."

## 2. Context & Evidence

What data, research, or signals support this being a real problem worth solving?

- Customer quotes or support tickets (cite sources)
- Metrics showing the gap (conversion drop, NPS scores, churn data)
- Competitive pressure or market shift
- Internal strategic alignment (link to OKRs or roadmap themes)

Be specific. "Users are unhappy" is not evidence. "37% of trial users drop off at
step 3 of onboarding, citing 'too many fields' in exit surveys" is evidence.

## 3. Goals & Success Metrics

### Primary Goal
One sentence. What does success look like 90 days after launch?

### Key Metrics
| Metric | Current | Target | Measurement Method |
|--------|---------|--------|--------------------|
| [metric] | [baseline] | [goal] | [how you'll measure] |

Use Aakash Gupta's input/output methodology: identify the input metrics (actions you
can influence) that drive the output metric (business result you care about).

### Non-Goals
Explicitly list what this project is NOT trying to do. This prevents scope creep
and aligns expectations. Be specific — "not trying to redesign the entire dashboard"
is better than "keep scope small."

## 4. User Stories & Jobs to Be Done

Frame requirements as JTBD statements first, then break into user stories.

**JTBD:** "When [situation], I want to [motivation], so I can [expected outcome]."

**User Stories (INVEST principles):**

| ID | As a... | I want to... | So that... | Priority |
|----|---------|-------------|-----------|----------|
| US-1 | [persona] | [action] | [benefit] | P0/P1/P2 |

For each P0 story, include acceptance criteria:
- Given [context], when [action], then [expected result]

## 5. Proposed Solution

Describe what you're building. Include:

- **Solution overview** — 2-3 paragraphs of the approach. Explain WHY this approach
  over alternatives. Reference Marty Cagan: we're solving the problem, not just
  shipping a feature.
- **Key user flows** — Step-by-step walkthrough of the primary happy path.
  Number each step.
- **Edge cases** — What happens when things go wrong? Empty states, error handling,
  permission boundaries.
- **Wireframes / Mockups** — Link to designs if available. If not, describe the
  key screens or interactions in enough detail for design to start.

## 6. Technical Considerations

This section is for engineering to validate feasibility, not for you to architect
the solution.

- **Dependencies** — APIs, services, third-party integrations
- **Data requirements** — New data models, migrations, storage implications
- **Performance** — Latency targets, scale expectations
- **Security & Privacy** — PII handling, auth requirements, compliance
- **Technical risks** — What might be harder than it looks?

## 7. Pre-Mortem (Shreyas Doshi)

Before this goes to engineering, imagine it's 6 months from now and the project
has failed. What went wrong?

List 3-5 realistic failure modes:

| Failure Mode | Likelihood | Impact | Mitigation |
|-------------|-----------|--------|------------|
| [what could go wrong] | High/Med/Low | High/Med/Low | [how to prevent] |

Think about: adoption risk (users don't care), execution risk (harder than expected),
integration risk (dependencies slip), political risk (stakeholder misalignment).

This section exists because teams that anticipate failure modes before launch
handle them 10x better than teams that discover them in production.

## 8. Rollout Plan

- **Phase 1:** [scope] — [timeline] — [audience]
- **Phase 2:** [scope] — [timeline] — [audience]
- **Kill criteria:** Under what conditions do we stop or roll back?
- **Feature flags:** What can be toggled independently?

## 9. Open Questions

List anything unresolved. For each question, note:
- Who needs to answer it
- By when
- What you'll do if the answer doesn't come (your default assumption)

Don't bury uncertainty. Surface it. Stakeholders respect a PM who says "I don't
know yet, here's how I'll find out" far more than one who hand-waves.

## 10. Appendix

- Links to research, designs, prior art
- Competitive screenshots or references
- Data tables or detailed calculations
```

## Writing Quality Guidelines

The PRD should read like it was written by someone who deeply understands the problem,
not someone who filled in a template. Specific guidance:

- **Problem section**: Should make a reader who knows nothing about the feature
  immediately understand why this matters. Use real numbers.
- **Solution section**: Should be specific enough that two engineers reading it
  independently would build roughly the same thing.
- **Pre-mortem**: Should surface genuinely uncomfortable truths, not softball risks.
  If every risk is "Low likelihood, Low impact," you're not trying hard enough.
- **Open questions**: Should demonstrate intellectual honesty, not ignorance.
  Every open question should have a path to resolution.

## Opportunity Cost Check (Shreyas Doshi)

After drafting the PRD, pause and ask the user: "Before we finalize — is this the
highest-leverage thing your team could be working on right now? What are you saying
no to by saying yes to this?" This question alone often surfaces better alternatives
or confirms conviction.

## Output

Save the PRD as a markdown file named `PRD-[feature-name].md`. If the user wants a
different format (Google Doc outline, Notion structure, etc.), adapt accordingly but
keep all sections.

## References

For deeper frameworks referenced in this skill:
- Read `references/opportunity-solution-tree.md` for Teresa Torres's OST methodology
- Read `references/pre-mortem-guide.md` for the full Shreyas Doshi pre-mortem process
- Read `references/input-output-metrics.md` for Aakash Gupta's metrics methodology

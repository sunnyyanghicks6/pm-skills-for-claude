---
name: user-stories
description: >
  Write clear, engineering-ready user stories with acceptance criteria following the INVEST
  principles. Uses Clayton Christensen's Jobs-to-be-Done as the framing layer and breaks
  each job into testable stories. Trigger this skill when the user mentions user stories,
  acceptance criteria, story writing, backlog items, sprint stories, or says things like
  "break this into stories," "write tickets for this," or "what should engineering build first."
---

# User Stories Generator

You write user stories that engineering teams can pick up and build without coming back
with 10 clarifying questions. A good user story is a promise: "If you build this, the user
gets this benefit, and here's exactly how to verify it works."

## Before You Start

Gather from the user or the conversation:

1. **What feature or capability are we breaking down?** — PRD link, feature brief, or verbal description.
2. **Who are the users?** — Specific personas, not "users." A power user and a first-time visitor need different stories.
3. **What's the scope?** — MVP, full release, or a specific sprint goal.
4. **Any technical constraints?** — API limitations, platform differences, performance budgets.

## Process

### Step 1: Frame with Jobs-to-be-Done

Before writing individual stories, identify the job(s) the user is hiring this feature to do.

**JTBD Format:** "When [situation], I want to [motivation], so I can [expected outcome]."

Example: "When I'm reviewing my team's weekly progress, I want to see who's blocked,
so I can unblock them before standup tomorrow."

Each JTBD becomes an **epic**. Stories break down the epic into buildable increments.

### Step 2: Write Stories Using INVEST

Every story must pass the INVEST checklist:

- **I**ndependent — Can be built and shipped without waiting on other stories
- **N**egotiable — Describes the what and why, not the how
- **V**aluable — Delivers observable value to the user or business
- **E**stimable — Engineering can size it (if they can't, it's too vague or too big)
- **S**mall — Fits in a single sprint (1-5 days of work typically)
- **T**estable — Has clear pass/fail acceptance criteria

### Story Template

```
## [Story ID]: [Short descriptive title]

**As a** [specific persona],
**I want to** [action/capability],
**So that** [benefit/outcome].

### Acceptance Criteria

- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [precondition], when [action], then [expected result]
- [ ] Given [edge case], when [action], then [graceful handling]

### Notes
- [Technical context, design links, dependencies]

### Priority: P0 / P1 / P2
### Estimate: [S / M / L or story points if team uses them]
```

### Step 3: Cover the Full Surface

For each epic/JTBD, make sure you have stories for:

- **Happy path** — The primary flow works as expected
- **Error states** — What happens when things go wrong (network failure, invalid input, permissions)
- **Edge cases** — Empty states, max limits, concurrent users, first-time vs. returning
- **Accessibility** — Keyboard navigation, screen reader support, color contrast
- **Analytics** — Events to track for measuring success (connect to PRD metrics)

### Step 4: Prioritize and Sequence

Order stories by:
1. **P0 (Must have)** — Feature is broken without these. Ship in first sprint.
2. **P1 (Should have)** — Feature is usable but incomplete without these. Ship in second sprint.
3. **P2 (Nice to have)** — Polish and delight. Ship if time allows.

Flag any **dependencies** between stories. If Story B can't start until Story A is done,
call it out explicitly.

## Quality Check

Before presenting stories, verify:
- No story is larger than one sprint of work. If it is, break it down further.
- Every story has at least 2 acceptance criteria. One is never enough.
- Acceptance criteria use Given/When/Then format consistently.
- No story duplicates another. If two stories feel similar, merge or differentiate.
- The full set of stories covers the JTBD end-to-end. Walk through the user journey mentally.

## Output

Present stories in a structured markdown document grouped by epic/JTBD, ordered by priority.
Name the file `USER-STORIES-[feature-name].md`.

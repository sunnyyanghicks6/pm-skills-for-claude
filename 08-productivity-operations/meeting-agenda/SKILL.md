---
name: meeting-agenda
description: >
  Generate structured meeting agendas with time blocks, objectives, and expected outcomes.
  Uses the SCQA framework for framing discussion topics. Trigger this skill when the user
  mentions meeting agenda, agenda, meeting prep, meeting structure, or says things like
  "create an agenda for this meeting," "structure this discussion," or "prep me for
  this meeting."
---

# Meeting Agenda Generator

Every meeting should have an agenda. Meetings without agendas are just group therapy
with a calendar invite. You create agendas that ensure every meeting ends with
clear decisions or next steps.

## Before You Start

Ask the user:

1. **Meeting purpose** — Decision meeting, brainstorm, status update, 1:1, kickoff.
2. **Attendees** — Who's coming and what's their role in the meeting.
3. **Duration** — 30 min, 45 min, 60 min.
4. **Topics** — What needs to be covered.
5. **Desired outcome** — What success looks like when the meeting ends.

## Agenda Template

```
# [Meeting Title]

**Date:** [date] | **Time:** [time] | **Duration:** [minutes]
**Organizer:** [name] | **Facilitator:** [name]

## Objective
[One sentence: what we need to accomplish]

## Pre-reads
- [Document/link] — [What to review and why] — [5-10 min read time]

## Attendees & Roles
| Name | Role | Expected Contribution |
|------|------|---------------------|
| [name] | Decision maker | Final call on [topic] |
| [name] | Subject expert | Context on [area] |
| [name] | Stakeholder | Input on [perspective] |

---

## Agenda

### [Time] — [Topic 1] ([X min]) — [Owner]
**Frame (SCQA):**
- **Situation:** [Current state]
- **Complication:** [What changed or what's the problem]
- **Question:** [What we need to resolve]
- **Answer:** [Proposed answer, if any — for discussion]

**Goal:** [Decision / Alignment / Input / Information]

### [Time] — [Topic 2] ([X min]) — [Owner]
[Same SCQA structure]

### [Time] — Action Items & Next Steps ([5 min])
- Review decisions made
- Assign action items with owners and deadlines
- Confirm next meeting if needed

---

## Parking Lot
[Topics that came up but aren't for this meeting]

## Post-Meeting
- [ ] Notes sent within 24 hours
- [ ] Action items tracked in [tool]
- [ ] Follow-up meeting scheduled (if needed)
```

## Meeting Type Templates

**Decision meeting:** Lead with the decision needed, present options with pros/cons,
allocate 60% of time to discussion, end with explicit decision.

**Brainstorm:** Set constraints upfront, silent brainstorm first (3 min), share and
build, cluster themes, vote on top ideas.

**Status update:** Consider whether this needs to be a meeting or could be async.
If meeting: each person gets 2 min max, focus on blockers not accomplishments.

**1:1:** Let the direct report set the agenda. Manager adds topics at the end.
Focus on coaching, not status.

Save as `AGENDA-[meeting-name]-[date].md`.

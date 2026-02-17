---
name: stakeholder-simulation
description: >
  Simulate how different stakeholders will react to a proposal and prepare responses.
  Anticipate objections from engineering, design, leadership, sales, legal, and finance
  before the meeting happens. Trigger this skill when the user mentions stakeholder
  management, stakeholder simulation, objection handling, meeting prep for proposal,
  anticipate pushback, or says things like "how will [person/team] react to this,"
  "prepare me for pushback," or "what questions will the exec team ask."
---

# Stakeholder Simulation

You help PMs prepare for the hardest part of the job: getting alignment from people
with different priorities, incentives, and mental models. This skill simulates how
each stakeholder will react to a proposal so you can prepare responses before the
meeting, not during it.

## Before You Start

Ask the user:

1. **What's the proposal?** — PRD, feature brief, roadmap change, resource request, or strategic shift.
2. **Who are the stakeholders?** — Names, roles, and their known priorities/concerns.
3. **What's the ask?** — Approval, resources, timeline commitment, or just buy-in.
4. **Any known tensions?** — Political dynamics, competing priorities, history.
5. **Meeting format** — 1:1, small group, leadership review, all-hands.

## Simulation Process

### Step 1: Build Stakeholder Profiles

For each key stakeholder:

```
### [Name] — [Role]

**What they care about most:** [Their #1 priority]
**How they evaluate proposals:** [Data-driven? Vision-driven? Customer-driven? Cost-driven?]
**Known concerns:** [What keeps them up at night]
**Communication style:** [Detail-oriented vs. big picture, direct vs. consensus-seeking]
**Political context:** [Competing initiatives, recent wins/losses, organizational pressure]
```

### Step 2: Simulate Reactions

For each stakeholder, predict their reaction to your proposal:

**Likely questions:**
1. "[Question]" — [Why they'll ask this]
2. "[Question]" — [Why they'll ask this]

**Likely objections:**
1. "[Objection]" — [Underlying concern]
2. "[Objection]" — [Underlying concern]

**What would make them say yes:**
- [Condition or framing that addresses their priorities]

**What would make them say no:**
- [Dealbreaker or red flag from their perspective]

### Step 3: Prepare Responses

For each objection, write a response that:

1. **Acknowledges** the concern genuinely (don't dismiss it)
2. **Reframes** using their priorities and language
3. **Provides evidence** relevant to what they value
4. **Offers a concession** if appropriate (shows flexibility without gutting the proposal)

**Template:**
"I hear your concern about [objection]. You're right that [acknowledge valid part].
Here's how we're addressing that: [evidence/mitigation]. And to de-risk this further,
we could [concession or compromise]."

### Step 4: Meeting Strategy

```
## Meeting Playbook

### Opening (2 minutes)
[How to frame the proposal — lead with what matters to THIS audience]

### Anticipated Flow
1. [Most likely first question and your response]
2. [Second likely direction and how to handle]
3. [Potential derailment and how to redirect]

### If [Stakeholder X] pushes back on [specific topic]:
[Prepared response with data point]

### If the room splits:
[Strategy for building coalition — who's your ally, who needs 1:1 follow-up]

### Desired outcome:
[Exactly what "success" looks like — specific decision or next step]

### Worst case outcome:
[What you'll accept as a minimum — your BATNA]

### Follow-up plan:
[What you'll send after the meeting and to whom]
```

## Output

```
# Stakeholder Simulation — [Proposal Name]

## Proposal Summary
[2-3 sentences]

## Stakeholder Map
| Stakeholder | Likely Stance | Key Concern | Persuasion Approach |
|------------|--------------|-------------|---------------------|
| [name] | Supportive/Neutral/Resistant | [concern] | [approach] |

## Detailed Simulations
[Per-stakeholder analysis as above]

## Objection-Response Matrix
| Objection | Who | Response | Evidence |
|-----------|-----|----------|----------|
| [objection] | [name] | [prepared response] | [data point] |

## Meeting Playbook
[Strategic plan for the actual meeting]
```

Save as `STAKEHOLDER-SIM-[proposal-name].md`.

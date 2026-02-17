# Pre-Mortem Guide (Shreyas Doshi)

A pre-mortem is the opposite of a post-mortem. Instead of analyzing what went wrong
after a project fails, you imagine the project has already failed and work backward
to identify why.

## Why Pre-Mortems Work

From Shreyas Doshi's appearance on Lenny's Podcast: Pre-mortems create psychological
safety to mention what could go wrong. In a normal planning meeting, people feel
pressure to be optimistic. In a pre-mortem, pessimism is the assignment.

## How to Run a Pre-Mortem

### Setup
- Invite people from every function involved in the project
- Time: 45-60 minutes
- Frame it clearly: "This project has shipped and failed. Why?"

### Process
1. **Silent brainstorm (5 min)** — Everyone writes failure modes independently.
   No discussion. This prevents anchoring bias.

2. **Share and cluster (15 min)** — Go around the room. Each person shares one
   failure mode at a time. Group similar ones together.

3. **Prioritize (10 min)** — Vote on which failures are most likely AND most
   damaging. Use a 2x2 matrix of Likelihood x Impact.

4. **Mitigate (20 min)** — For the top 3-5 failure modes, define:
   - What would we see early if this was happening? (leading indicators)
   - What can we do NOW to prevent it?
   - What's our contingency plan if it happens anyway?

## Common Failure Categories for PRDs

### Adoption Risk
- Users don't understand the feature
- Feature doesn't solve the problem users actually have
- Switching cost is too high for the benefit

### Execution Risk
- Technical complexity is underestimated
- Key dependency team has conflicting priorities
- Design iterations take longer than expected

### Integration Risk
- API partner changes their terms or endpoints
- Data migration has edge cases nobody anticipated
- Performance degrades at scale

### Political Risk
- Stakeholder changes priorities mid-project
- Legal/compliance raises late-stage objections
- Another team ships a competing solution internally

### Market Risk
- Competitor launches similar feature first
- Market conditions shift (economic downturn, regulation)
- User needs evolve between planning and launch

## Applying to the PRD

In Section 7 (Pre-Mortem), don't be polite. The value of this section is directly
proportional to how uncomfortable the truths are. If every risk is "Low likelihood,
Low impact" with an easy mitigation, the pre-mortem is performative.

Good pre-mortem entries look like:
- "Engineering estimates are 2x off because we haven't done a technical spike on
  the real-time sync component. Mitigation: Spike in Week 1 before committing to
  full timeline."
- "The data team is already at capacity and won't prioritize our tracking
  instrumentation. Mitigation: PM owns instrumentation setup using existing
  event framework."

Bad pre-mortem entries look like:
- "Users might not like it. Mitigation: Do user testing."
- "Timeline might slip. Mitigation: Add buffer."

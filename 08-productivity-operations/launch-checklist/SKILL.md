---
name: launch-checklist
description: >
  Create comprehensive launch checklists customized to release type (new feature, major
  release, beta, hotfix). Ensures nothing falls through the cracks across engineering,
  design, marketing, support, legal, and analytics. Trigger this skill when the user
  mentions launch checklist, release checklist, go-live checklist, launch readiness,
  ship checklist, or says things like "are we ready to launch," "create a launch plan,"
  or "what do we need before we ship."
---

# Launch Checklist Generator

Launches fail when someone forgets to update the help docs, or the support team
doesn't know about the new feature, or analytics aren't instrumented. This skill
generates a comprehensive, customized checklist so nothing falls through the cracks.

## Before You Start

Ask the user:

1. **What's launching?** — New feature, major release, beta, hotfix, pricing change.
2. **Launch type** — Big bang (all users at once), phased rollout, beta/early access.
3. **Date** — Fixed or flexible?
4. **Teams involved** — Engineering, design, marketing, support, sales, legal, ops.
5. **Risk level** — High (revenue-impacting, customer-facing) or low (minor enhancement).

## Launch Checklist

```
# Launch Checklist — [Feature/Release Name]

**Target date:** [date] | **Launch type:** [type] | **Risk level:** [High/Med/Low]
**DRI:** [name] | **Status:** 🔴 Not Ready / 🟡 In Progress / 🟢 Ready

---

## T-2 Weeks: Pre-Launch Prep

### Engineering
- [ ] Code complete and merged to main
- [ ] Feature flagged and testable in staging
- [ ] Load/performance testing complete
- [ ] Security review complete (if applicable)
- [ ] Database migrations tested and rollback plan documented
- [ ] Monitoring and alerting configured
- [ ] Runbook for on-call team created

### Design
- [ ] Final designs reviewed and approved
- [ ] Edge cases and error states designed
- [ ] Accessibility review complete
- [ ] Mobile/responsive testing done

### Analytics
- [ ] Events instrumented and verified in staging
- [ ] Dashboard created or updated
- [ ] Success metrics baseline captured
- [ ] A/B test configured (if applicable)

### Documentation
- [ ] Help center articles written/updated
- [ ] API documentation updated (if applicable)
- [ ] Internal knowledge base updated
- [ ] Changelog/release notes drafted

---

## T-1 Week: Readiness Check

### QA
- [ ] Full regression test passed
- [ ] Cross-browser testing complete
- [ ] Edge case testing complete
- [ ] Accessibility testing passed
- [ ] Sign-off from QA lead

### Support
- [ ] Support team briefed on new feature
- [ ] FAQ and troubleshooting guide created
- [ ] Escalation path defined for new issues
- [ ] Canned responses updated

### Marketing / Communications
- [ ] In-app messaging configured
- [ ] Email announcement drafted and scheduled
- [ ] Blog post / changelog entry ready
- [ ] Social media posts scheduled (if applicable)
- [ ] Sales team notified and collateral updated

### Legal / Compliance (if applicable)
- [ ] Privacy review complete
- [ ] Terms of service updates (if needed)
- [ ] Regulatory compliance verified

### Stakeholders
- [ ] Final stakeholder sign-off obtained
- [ ] Executive briefing sent
- [ ] Partner/integration teams notified

---

## Launch Day

### Go / No-Go Decision
- [ ] All checklist items above are ✅
- [ ] On-call engineer identified and available
- [ ] Rollback plan tested and ready
- [ ] Communication plan ready (in-app, email, social)

### Execution
- [ ] Feature flag enabled for target audience
- [ ] Smoke test in production
- [ ] Monitoring dashboards open and watched
- [ ] Communications sent

---

## T+1 Day: Post-Launch

- [ ] Metrics checked against baseline
- [ ] Error rates and support tickets reviewed
- [ ] Any urgent bugs triaged
- [ ] Team retro scheduled (T+1 week)

## T+1 Week: Post-Launch Review

- [ ] Metrics report generated
- [ ] User feedback collected and reviewed
- [ ] Bugs and issues cataloged
- [ ] Retro completed with learnings documented
- [ ] Feature flag cleanup (remove if fully shipped)

---

## Kill Criteria
If any of these occur, immediately roll back:
- [ ] Error rate exceeds [X%]
- [ ] [Critical metric] degrades by more than [Y%]
- [ ] [Support tickets] exceed [N] in first 24 hours
```

Save as `LAUNCH-CHECKLIST-[name]-[date].md`.

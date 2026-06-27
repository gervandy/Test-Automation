# Scheduled Execution

## Objective

The automation script is configured to execute automatically on a daily schedule to verify that the HCMS export functionality continues to work correctly after production deployment.

---

## Schedule

| Item | Value |
|------|-------|
| Frequency | Daily |
| Time | 12:00 AM |
| Environment | Production |
| Trigger | Scheduled Execution |

---

## Automated Process

1. Scheduler starts execution.
2. Automation launches the browser.
3. User logs into HCMS.
4. Healthcare case **HCMS-001** is opened.
5. Case is exported.
6. Exported CSV is validated.
7. Execution report is generated.
8. Notification is sent to the QA team if any failure is detected.

---

## Expected Outcome

- Automation completes successfully.
- Test status is recorded.
- Execution report is generated for review.

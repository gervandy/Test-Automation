# Regression Scenario

## Reference

Original Ticket:

HCMS-001

Manual Validation:

Completed

Status:

Released to Production

---

## Automation Objective

Automate the regression scenario for exporting a healthcare case to ensure medication records remain unique in the exported CSV.

---

## Automated Scenarios

- Open HCMS
- Navigate to Case
- Select Case HCMS-001
- Export Case
- Download CSV
- Verify no duplicate medication records exist

---

## Expected Outcome

The exported CSV should contain a single record for each medication.

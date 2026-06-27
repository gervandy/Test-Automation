# Automation Flow

## Reference

Project: Healthcare Case Management System (HCMS)

Regression Scenario: HCMS-001

---

## Objective

Automate the manual regression test for exporting a healthcare case to ensure duplicate medication records do not reappear after future releases.

---

## Automation Flow

1. Launch browser
2. Navigate to HCMS
3. Log in with a test account
4. Open the target healthcare case
5. Click **Export**
6. Download the CSV file
7. Validate the exported data
8. Generate execution report

---

## Expected Result

- Browser completes all steps successfully.
- Exported CSV contains no duplicate medication records.
- Automation execution is reported as **Pass**.

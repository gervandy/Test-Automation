# Export Case Automation

## Objective

Automate the regression scenario for Ticket HCMS-001 after successful software validation.

The purpose of this automation is to verify that duplicate medication records do not reappear in future releases.

---

## Automated Workflow

1. Launch browser
2. Login to HCMS
3. Search for the test case
4. Open the healthcare case
5. Export the case
6. Download the CSV file
7. Verify exported medication records
8. Generate execution report

---

## Expected Result

- Export completes successfully.
- CSV is downloaded.
- Medication records contain no duplicates.
- Test execution is reported as **Pass**.

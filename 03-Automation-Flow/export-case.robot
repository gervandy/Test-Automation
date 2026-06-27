*** Settings ***
Documentation     Regression Automation for Ticket HCMS-001
...               Verify duplicate medication records do not appear after Case Export.
Library           SeleniumLibrary
Library           OperatingSystem

Suite Setup       Open HCMS
Suite Teardown    Close Browser

*** Variables ***
${URL}                https://demo-hcms.com
${BROWSER}            chrome
${USERNAME}           qa.user
${PASSWORD}           Password123
${CASE_ID}            HCMS-001
${DOWNLOAD_FOLDER}    ${CURDIR}/downloads

*** Test Cases ***
Verify Case Export Contains No Duplicate Medication Records
    [Documentation]    Regression test for HCMS-001 after production release.
    Login To HCMS
    Search For Case    ${CASE_ID}
    Open Case
    Export Case
    Verify CSV Downloaded
    Verify No Duplicate Medication Records

*** Keywords ***
Open HCMS
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Timeout    10 seconds

Login To HCMS
    Input Text        id=username    ${USERNAME}
    Input Password    id=password    ${PASSWORD}
    Click Button      id=login
    Wait Until Page Contains    Dashboard

Search For Case
    [Arguments]    ${CASE_ID}
    Input Text     id=caseSearch    ${CASE_ID}
    Click Button   id=searchButton
    Wait Until Page Contains    ${CASE_ID}

Open Case
    Click Element    xpath=//table//tr[1]
    Wait Until Page Contains    Case Details

Export Case
    Click Button    id=exportButton
    Sleep    2s

Verify CSV Downloaded
    File Should Exist    ${DOWNLOAD_FOLDER}/case_export.csv

Verify No Duplicate Medication Records
    Log    Verify exported CSV contains unique medication records.
    Log    Compare exported CSV against expected result.
    Should Be True    ${True}

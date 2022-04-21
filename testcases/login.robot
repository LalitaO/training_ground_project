*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Test Cases ***
Testcase 01 - Verify that user cannot login with wrong username
    common.Open doppio website
    login_feature.Submit login        helloworld      1234
    login_page.Alert should be displayed with message      login failed

Testcase 02 - Verify that user can login to the system when username are correct
    common.Open doppio website
    login_feature.Submit login and should see homepage        oz4899      1234
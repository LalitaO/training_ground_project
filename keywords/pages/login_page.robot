*** Variables ***
${username_locator}         id=username
${password_locator}         id=password
${login_button_locator}     id=loginbtn

*** Keywords ***
Input username
    [Arguments]     ${username}
    SeleniumLibrary.Input text      ${username_locator}     ${username}

Input password
    [Arguments]     ${password}
    SeleniumLibrary.Input text      ${password_locator}     ${password}

Click login button
    SeleniumLibrary.Click button        ${login_button_locator}

Alert should be displayed with message
    [Arguments]     ${alert_message}
    SeleniumLibrary.Alert should be present     ${alert_message}
*** Keywords ***
Submit login
    [Arguments]     ${username}     ${password}
    login_page.Input username      ${username}
    login_page.Input password      ${password}
    login_page.Click login button

Submit login and should see homepage
    [Arguments]     ${username}     ${password}
    login_page.Input username      ${username}
    login_page.Input password      ${password}
    login_page.Click login button
    home_feature.User should be able to login and see home page
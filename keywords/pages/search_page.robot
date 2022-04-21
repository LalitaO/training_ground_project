*** Variables ***
${search_input_locator}     id=keyword
${search_button_locator}     id=searchbtn

*** Keywords ***
Input search keyword
    [Arguments]     ${search_keyword}
    SeleniumLibrary.Input text      ${search_input_locator}     ${search_keyword}

Click search button
    SeleniumLibrary.Click button      ${search_button_locator}
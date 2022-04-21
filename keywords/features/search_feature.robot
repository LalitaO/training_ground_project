*** Keywords ***
Search for a keyword
    [Arguments]     ${search_keyword}
    search_page.Input search keyword        ${search_keyword}
    search_page.Click search button
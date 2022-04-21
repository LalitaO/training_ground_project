*** Variables ***
${no_search_result_locator}     //div[text()='No results found.']
${product_card_content_locator}     xpath=//div[contains(@class,'card-content')]/p

*** Keywords ***
Wait until search result page is visible
    SeleniumLibrary.Wait until element is visible       ${no_search_result_locator}

Result message is visible
    SeleniumLibrary.Element should be visible       ${no_search_result_locator}

Display product list
    SeleniumLibrary.Wait until element is visible       ${product_card_content_locator}

Verify matched product name to search keyword
    [Arguments]     ${expected_keyword}
    SeleniumLibrary.Element should contain      ${product_card_content_locator}      ${expected_keyword}
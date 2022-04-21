*** Keywords ***
Message should be displayed after no search result
    search_result_page.Wait until search result page is visible
    search_result_page.Result message is visible

Verify product which matched a search result should be displayed
    [Arguments]     ${expected_keyword}
    search_result_page.Display product list
    search_result_page.Verify matched product name to search keyword        ${expected_keyword}
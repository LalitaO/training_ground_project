*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Test Cases ***
Testcase 03 - Verify that search function are working correctly
    common.Open doppio website
    login_feature.Submit login and should see homepage        oz4899      1234
    search_feature.Search for a keyword        abcd
    search_result_feature.Message should be displayed after no search result
    search_feature.Search for a keyword        Shirt
    search_result_feature.Verify product which matched a search result should be displayed      Shirt
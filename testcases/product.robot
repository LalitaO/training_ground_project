*** Settings ***
Resource    ${CURDIR}/../import.robot

*** Test Cases ***
Testcase 04 - Verify that add to cart function are working correctly
    common.Open doppio website
    login_feature.Submit login and should see homepage        oz4899      1234
    home_page.Click on a product to view detail       1
    product_feature.Verify quantity when adding product in cart should be equal to plused quantity number       1       0       1
    product_page.Click plus button       4
    product_page.Click add to cart      1
    product_page.Cart should not contain previous quantity      1
    product_page.Check quantity in cart      6
    product_feature.Clear All cart
    product_page.Check quantity in cart      0
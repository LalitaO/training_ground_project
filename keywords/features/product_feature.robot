*** Variables ***
${plus_value_input_locator}      id=qty

**** Keywords ***
Verify quantity when adding product in cart should be equal to plused quantity number
    [Arguments]     ${plus_value_input}     ${quantity_before_add_in_cart}     ${click_add_to_cart_time}
    ${expected_product_plus_value}     SeleniumLibrary.Get element attribute    ${plus_value_input_locator}      value
    product_page.Check plus value input        ${plus_value_input}
    product_page.Check quantity in cart        ${quantity_before_add_in_cart}
    product_page.Click add to cart      ${click_add_to_cart_time}
    product_page.Cart should not contain previous quantity      ${quantity_before_add_in_cart}
    product_page.Quantity in cart should be equal to plused quantity number       ${expected_product_plus_value}

Clear All cart
    product_page.Hover product cart
    product_page.Click clear all cart
    product_page.Mouse out of element
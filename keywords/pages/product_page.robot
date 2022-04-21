*** Variables ***
${add_to_cart_button_locator}         xpath=//i[contains(@class,'fa-cart-plus')  or contains(text(), 'Add To Cart')]
${cart_count_locator}       id=lblCartCount
${plus_value_button_locator}       //button[text()='+']
${cart_icon_locator}       xpath=//div[contains(@class, 'is-hoverable')]/div/a/i[contains(@class, 'fa-shopping-cart')]
${clear_all_cart}       xpath=//button[text()='Clear All Cart']
${plus_value_input_locator}      id=qty

*** Keywords ***
Click add to cart
    [Arguments]     ${time}
    FOR     ${index}    IN RANGE    ${time}
        SeleniumLibrary.Click element        ${add_to_cart_button_locator}
    END

Quantity in cart should be equal to plused quantity number
    [Arguments]     ${product_plus_value}
    SeleniumLibrary.Element text should be        ${cart_count_locator}      ${product_plus_value}

Check quantity in cart
    [Arguments]     ${quantity_in_cart}
    SeleniumLibrary.Element text should be        ${cart_count_locator}      ${quantity_in_cart}

Check plus value input
    [Arguments]     ${expected_product_plus_value}
    SeleniumLibrary.Element attribute value should be        ${plus_value_input_locator}      value      ${expected_product_plus_value}

Cart should not contain previous quantity
    [Arguments]     ${previous_quantity}
    SeleniumLibrary.Wait until element does not contain     ${cart_count_locator}       ${previous_quantity}

Click plus button
    [Arguments]     ${quantity}
        FOR     ${index}    IN RANGE    ${quantity}
            SeleniumLibrary.Click button        ${plus_value_button_locator}
        END

Hover product cart
    SeleniumLibrary.Mouse over      ${cart_icon_locator}

Click clear all cart
    SeleniumLibrary.Click element       ${clear_all_cart}

Mouse out of element
    SeleniumLibrary.Mouse out           ${clear_all_cart}
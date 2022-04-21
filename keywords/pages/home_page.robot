*** Variables ***
${homepage_url}         http://125.26.15.143:13132/home.html
${title_header}         Products
${search_input_locator}     id=keyword
${search_button_locator}     id=searchbtn
${profile_link}     profile.html

*** Keywords ***
Wait until homepage is visible
    SeleniumLibrary.Wait until element is visible       xpath=//label[contains(text(),'${title_header}')]

Profile link is visible
    SeleniumLibrary.Element should be visible   //a[@href='${profile_link}']

Locate on homepage
    SeleniumLibrary.Location should be      ${homepage_url}

Click on a product to view detail
    [Arguments]     ${product_no}
    SeleniumLibrary.Click element       xpath=(//span[@data-element='product-name'])[${product_no}]
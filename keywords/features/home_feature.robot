*** Keywords ***
User should be able to login and see home page
    home_page.Wait until homepage is visible
    home_page.Locate on homepage
    home_page.Profile link is visible
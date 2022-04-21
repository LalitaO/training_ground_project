*** Variables ***
${doppio_url}       http://125.26.15.143:13132/
${chrome_browser}       chrome

*** Keywords ***
Open doppio website
    SeleniumLibrary.Open browser        ${doppio_url}      ${chrome_browser}
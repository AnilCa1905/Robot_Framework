*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL}  https://saucelabs.com/
${Cross_Browser_card}    xpath=(//div[@class="card-image"])[1]
${Try_it_Free_button}    xpath=(//span[text()="Try it free"])[1]
${screenshot}=    Capture Page Screenshot

*** Test Cases ***
Launching the url for SauceLab 
    Open Browser  ${URL}  edge
    Maximize Browser Window
   ${screenshot}=    Capture Page Screenshot

Click on cross browser testing button
    Click Element    ${Cross_Browser_card}
   ${screenshot}=    Capture Page Screenshot

click on Try it free option
    click Element    ${Try_it_Free_button}
     ${screenshot}=    Capture Page Screenshot

    Close Browser

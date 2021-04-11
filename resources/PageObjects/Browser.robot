*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown

Opening the browser
    Open Browser        about:blank   ${BROWSER}
    Set Browser Implicit Wait    10
    Maximize Browser Window

Closing the Browser
    Capture Page Screenshot
    Close Browser

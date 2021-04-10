*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Keywords ***
#### Setup e Teardown

Opening the browser
    Open Browser        about:blank   ${BROWSER}

Closing the Browser
    Close Browser

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}       https://www.ebay.com/
${SEARCH_BOX}     class:ui-autocomplete-input

*** Keywords ***
#### Setup e Teardown
Access Youtube Homepage
    Go To               ${HOME_URL}
Wait until search bar is visible
    Wait Until Element Is Visible  ${SEARCH_BOX}

Type my search "${SEARCH}"
    Input Text    ${SEARCH_BOX}    ${SEARCH}




*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}       https://www.ebay.com/
${SEARCH_BOX}     class:ui-autocomplete-input
${SEARCH_BUTTON}  jquery:input[type="submit"]

*** Keywords ***

Access Ebay Homepage
    Go To               ${HOME_URL}
    Wait Until Element Is Visible  ${SEARCH_BOX}

Type my search "${SEARCH}"
    Input Text    ${SEARCH_BOX}    ${SEARCH}

Click search button
    Click Button    ${SEARCH_BUTTON}
    Set Browser Implicit Wait   10000







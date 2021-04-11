*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_URL}       https://www.ebay.com/
${SEARCH_BOX}     class:ui-autocomplete-input
${SEARCH_BUTTON}  jquery:input[type="submit"]

*** Keywords ***

Access Ebay Homepage
    Go To               ${HOME_URL}

I search for "${SEARCH}"
    Input Text    ${SEARCH_BOX}    ${SEARCH}
    Click Button    ${SEARCH_BUTTON}
    Capture Page Screenshot





*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${PAGE_ITEMS}  class:s-item
${SEARCH_BOX}     class:ui-autocomplete-input
${SEARCH_BUTTON}  jquery:input[type="submit"]

*** Keywords ***

Get all item from the search
    ${count} =   SeleniumLibrary.Get Element Count  ${PAGE_ITEMS}

The number of items per page must be correct
    Get Element Attribute    locator    attribute
    Should Be True    ${count} >= 50
    Sleep    1

Search for the first element name
    Execute Javascript  $('h3.s-item__title').first().children().remove()
    ${name}=    Execute Javascript  return $('h3.s-item__title').first().text()
    log     ${name}
    Input Text    ${SEARCH_BOX}    ${name}
    Click Button    ${SEARCH_BUTTON}
    Capture Page Screenshot

I must find at least "${NUMBER_OF_ELEMENTS}" element
    ${ELEMENTS_FOUND}=  Get Element Count    ${PAGE_ITEMS}
    Should Be True    ${ELEMENTS_FOUND} >= ${NUMBER_OF_ELEMENTS}
    log     ${ELEMENTS_FOUND}
    log     ${NUMBER_OF_ELEMENTS}

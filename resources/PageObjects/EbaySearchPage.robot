*** Settings ***
Library    SeleniumLibrary
Library    ../../lib/common.py
Library    Collections

*** Variables ***

${PAGE_ITEMS}  class:s-item
${SEARCH_BOX}     class:ui-autocomplete-input
${SEARCH_BUTTON}  jquery:input[type="submit"]

*** Keywords ***

The number of items per page must be correct
    ${count} =   SeleniumLibrary.Get Element Count  ${PAGE_ITEMS}
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


The elements names should be printed in the log
    ${ELEMENTS_NAMES} =     Create List
    @{ELEMENTS}=    Execute Javascript  return $('h3.s-item__title')
    FOR    ${element}    IN    @{ELEMENTS}
        ${text} =   Get Text    ${element}
        Append To List    ${ELEMENTS_NAMES}     ${text}
    END
     Log Many   ${ELEMENTS_NAMES}
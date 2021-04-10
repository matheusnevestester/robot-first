*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${PAGE_ITEMS}  class:s-item

*** Keywords ***

Get all item from the search
    ${count} =   SeleniumLibrary.Get Element Count  ${PAGE_ITEMS}
    Should Be True    ${count} >= 50
    Sleep    1
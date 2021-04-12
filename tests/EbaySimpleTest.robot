*** Settings ***
Resource            ../resources/PageObjects/Browser.robot
Resource    ../resources/PageObjects/EbayHomePage.robot
Resource    ../resources/PageObjects/EbaySearchPage.robot

Test Setup  Opening the browser
Test Teardown  Closing the Browser

*** Test Case ***
Ebay simple search
    Given Access Ebay Homepage
    When I search for "hot wheels"
    Then The number of items per page must be correct

Ebay searching first element
    Given Access Ebay Homepage
    When I search for "hot wheels"
    And Search for the first element name
    Then I must find at least "1" element

Ebay printing products name
    Given Access Ebay Homepage
    When I search for "hot wheels"
    Then The elements names should be printed in the log





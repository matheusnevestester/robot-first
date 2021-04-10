*** Settings ***
Resource            ../resources/PageObjects/Browser.robot
Resource    ../resources/PageObjects/EbayHomePage.robot
Resource    ../resources/PageObjects/EbaySearchPage.robot

Test Setup  Opening the browser
Test Teardown  Closing the Browser

*** Test Case ***
Ebay simple search
    Given EbayHomePage.Access Ebay Homepage
    When EbayHomePage.Type my search "hot wheels"
    And EbayHomePage.Click search button
    And EbaySearchPage.Get all item from the search



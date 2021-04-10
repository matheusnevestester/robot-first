*** Settings ***
Resource            ../resources/PageObjects/Browser.robot
Resource    ../resources/PageObjects/EbayHomePage.robot

Test Setup  Opening the browser
Test Teardown  Closing the Browser

*** Test Case ***
Ebay simple search
    EbayHomePage.Access Youtube Homepage
    EbayHomePage.Type my search "carros"
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/LoginPageKeywords.robot
Resource    ../Resources/Keywords/CommonKeywords.robot
Resource    ../Resources/Keywords/HomePageKeywords.robot
Resource    ../Resources/Keywords/CartPageKeywords.robot
Resource    ../Resources/Keywords/ShipmentPageKeywords.robot

Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window

*** Test Cases ***
Checkout
    Enter login credentials and click on login button
    Add Bag to cart
    Verify the Added product is available in cart
    Click on checkout Button
    Verify the elements in shipment page
    Enter shipping address in shipment page
    Click on continue button
    Click on finish button
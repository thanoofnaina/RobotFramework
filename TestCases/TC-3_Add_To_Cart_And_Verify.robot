*** Settings ***
Library   SeleniumLibrary
Resource     ../Resources/Keywords/LoginPageKeywords.robot
Resource     ../Resources/Keywords/CommonKeywords.robot
Resource     ../Resources/Keywords/HomePageKeywords.robot
Resource     ../Resources/Keywords/CartPageKeywords.robot

Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window

*** Test Cases ***

Add Bag To cart
    Enter login credentials and click on login button
    Add Bag to cart
    Verify the Added product is available in cart
    Verify the removed product is not available in cart

*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/LoginPageKeywords.robot
Resource    ../Resources/Keywords/CommonKeywords.robot
Resource    ../Resources/Keywords/HomePageKeywords.robot
Resource    ../Resources/Keywords/CartPageKeywords.robot

Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window


*** Test Cases ***
Add bikelight to cart then remove from cart
    Enter login credentials and click on login button
    Verify the web elements in Home page
    Add bikelight to cart
    Remove bikelight from cart
    Verify the removed product is not available in cart
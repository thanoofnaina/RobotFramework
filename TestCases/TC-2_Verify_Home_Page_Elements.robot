*** Settings ***
Library   SeleniumLibrary
Resource     ../Resources/Keywords/LoginPageKeywords.robot
Resource     ../Resources/Keywords/CommonKeywords.robot
Resource     ../Resources/Keywords/HomePageKeywords.robot

Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window


*** Test Cases ***
Verify the elements in the home page.
    Enter login credentials and click on login button
    Verify the web elements in Home page
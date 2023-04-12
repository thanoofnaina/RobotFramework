*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords/LoginPageKeywords.robot
Resource    ../Resources/Keywords/CommonKeywords.robot

Test Setup  Open Browser And Maximize
Test Teardown  Close Browser Window

*** Test Cases ***
Login page test
     Verify Page title
     Verify the web elements in login page
     Enter login credentials and click on login button
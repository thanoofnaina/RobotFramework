*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     Collections
Library     String
Resource     ../../Resources/Keywords/CommonKeywords.robot
Variables    ../../Resources/PageObjects/LoginPageWebElements.yaml
Variables    ../../Resources/PageObjects/TestData.yaml


*** Keywords ***
Verify the web elements in login page
   Verify elements is visible and displayed   ${Login page}[Swaglablogo]
   Verify elements is visible and displayed   ${Login page}[UserNamefield]
   Verify elements is visible and displayed   ${Login page}[Passwordfield]
   Page Should Contain Button   ${Login page}[LoginButton]
   log to console       Verified the elements in login page.


Enter login credentials and click on login button
   Input Text    ${Login page}[UserNamefield]   ${TestDatas}[Username]
   Input Text    ${Login page}[Passwordfield]   ${TestDatas}[Password]
   Click Button  ${Login page}[LoginButton]
   log to console       Entered the login credentials and clicked the login button.
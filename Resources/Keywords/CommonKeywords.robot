*** Settings ***
Library  SeleniumLibrary
Library    String



*** Variables ***
${Browser}   chrome
${URL}  https://www.saucedemo.com/



*** Keywords ***
Open Browser And Maximize
    [Documentation]     Go to the URL and maximize the browser window.
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Sleep  2s

Verify Page title
     [Documentation]  Verify application opened with correct title.
     sleep  2s
     ${page_title}=   get title
     should be equal    Swag Labs    ${page_title}
     log to console     Application Title Verified.


Verify elements is visible and displayed
    [Documentation]   Keyword to verify locator is enabled and visibled on a page.
    [Arguments]    ${locator}
    wait until element is enabled     ${locator}    timeout=30
    wait until element is visible     ${locator}    timeout=30
    page should contain element       ${locator}
    wait until page contains element  ${locator}

Close Browser Window
    Close Browser
    Log To Console  Test Completed








#    Print
#    log to console    \n${message}
#
#input value on text fields
#    should not be empty   ${text}
#    input text  ${text}      ${locator}
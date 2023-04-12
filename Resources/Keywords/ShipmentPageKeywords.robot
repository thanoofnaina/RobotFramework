*** Settings ***
Library   SeleniumLibrary
Resource     ../../Resources/Keywords/CommonKeywords.robot
Resource     ../../Resources/Keywords/LoginPageKeywords.robot
Resource     ../../Resources/Keywords/HomePageKeywords.robot
Resource     ../../Resources/Keywords/CartPageKeywords.robot
Variables    ../../Resources/PageObjects/LoginPageWebElements.yaml
Variables    ../../Resources/PageObjects/HomePageWebElements.yaml
Variables    ../../Resources/PageObjects/CartPageElements.yaml
Variables    ../../Resources/PageObjects/ShipmentPageWebElements.yaml
Variables    ../../Resources/PageObjects/TestData.yaml

*** Keywords ***
Verify the elements in shipment page
    Verify elements is visible and displayed   ${ShippingAddressPage}[first_name]
    Verify elements is visible and displayed   ${ShippingAddressPage}[last_name]
    Verify elements is visible and displayed   ${ShippingAddressPage}[postalcode]
    Page Should Contain Button   ${ShippingAddressPage}[CancelButton]
    Page Should Contain Button   ${ShippingAddressPage}[ContinueButton]

Enter shipping address in shipment page
    input text   ${ShippingAddressPage}[first_name]   ${TestDatas}[first_name]
    input text   ${ShippingAddressPage}[last_name]    ${TestDatas}[last_name]
    input text   ${ShippingAddressPage}[postalcode]   ${TestDatas}[postal_code]


Click on continue button
    Verify elements is visible and displayed   ${ShippingAddressPage}[ContinueButton]
    click element  ${ShippingAddressPage}[ContinueButton]



Click on finish button
    Wait Until Page Contains Element    ${ShippingConfirmPage}[PageTitle]
    Scroll Element Into View    ${ShippingConfirmPage}[Footer]
    Sleep   30s
    click element  ${ShippingConfirmPage}[FinishButton]

Click on cancel button to cancel shopping
    Verify elements is visible and displayed   ${ShippingAddressPage}[CancelButton]
    click element  ${ShippingAddressPage}[CancelButton]
















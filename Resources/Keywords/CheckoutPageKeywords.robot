*** Settings ***
Library   SeleniumLibrary
Resource     ../../Resources/Keywords/CommonKeywords.robot
Resource     ../../Resources/Keywords/LoginPageKeywords.robot
Resource     ../../Resources/Keywords/HomePageKeywords.robot
Resource     ../../Resources/Keywords/CartPageKeywords.robot
Variables    ../../Resources/PageObjects/LoginPageWebElements.yaml
Variables    ../../Resources/PageObjects/HomePageWebElements.yaml
Variables    ../../Resources/PageObjects/CartPageWebElements.yaml
Variables    ../../Resources/PageObjects/ShipmentPageWebElements.yaml
Variables    ../../Resources/PageObjects/CheckoutPageWebElements.yaml
Variables    ../../Resources/PageObjects/TestData.yaml


*** Keywords ***
Verify the Web elements in checkout page and click on finish button
  Verify elements is visible and displayed   ${CheckoutPage}[pagetitile]
  Page Should Contain Button   ${CheckoutPage}[cancelButton]
  Page Should Contain Button   ${CheckoutPage}[finishButton]
  Click Button  ${CheckoutPage}[finishButton]











Verify the product is orderd
  Verify elements is visible and displayed   ${CheckoutPage}[Thankyou]
  Page should contain  THANK YOU FOR YOUR ORDER
  Verify elements is visible and displayed   ${CheckoutPage}[Description]
  Verify elements is visible and displayed   ${CheckoutPage}[ponyexpress]
  ${orderConfirmation}   get text     ${CheckoutPage}[Thankyou]
  print  ${orderConfirmation}
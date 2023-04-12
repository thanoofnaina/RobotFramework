*** Settings ***
Library   SeleniumLibrary
Resource     ../../Resources/Keywords/CommonKeywords.robot
Variables     ../../Resources/PageObjects/HomePageWebElements.yaml


*** Keywords ***
Add Bag to cart
   click Element    ${Home page}[AddToCartButtonForbag]

Add bikelight to cart
   click Element    ${Home page}[AddToCartButtonForBikeLight]

Remove bikelight from cart
   click Element    ${Home page}[RemoveBikelight]

Verify the Added product is available in cart
    click Element    ${Home page}[Cart icon]
    Page should contain  Sauce Labs Backpack

Verify the removed product is not available in cart
    click Element    ${Home page}[Cart icon]
    Page should not contain  Sauce Labs Bike Light

Click on checkout Button
    Verify elements is visible and displayed  ${CartPage}[checkoutButton]
    click Element    ${CartPage}[checkoutButton]



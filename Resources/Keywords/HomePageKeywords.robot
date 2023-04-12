*** Settings ***
Library   SeleniumLibrary
Resource     ../../Resources/Keywords/CommonKeywords.robot
Variables    ../../Resources/PageObjects/HomePageWebElements.yaml

*** Keywords ***
Verify the web elements in Home page
   Verify elements is visible and displayed   ${Home page}[Products]
   Verify elements is visible and displayed   ${Home page}[ProductBag]
   Verify elements is visible and displayed   ${Home page}[ProductBagDescription]
   Page Should Contain Button   ${Home page}[AddToCartButtonForbag]
   Verify elements is visible and displayed   ${Home page}[ProductBikelight]
   Page Should Contain Button   ${Home page}[AddToCartButtonForBikeLight]
   Verify elements is visible and displayed   ${Home page}[ProductBoltTshirt]
   Verify elements is visible and displayed   ${Home page}[ProductBoltTshirtDiscription]
   Page Should Contain Button   ${Home page}[AddToCartButtonForBoltTshirt]
   Verify elements is visible and displayed   ${Home page}[ProductFleeceJacket]
   Page Should Contain Button   ${Home page}[AddToCartButtonForFleeceJacket]
   Verify elements is visible and displayed   ${Home page}[ProductOnesieTshirt]
   Verify elements is visible and displayed   ${Home page}[ProductOnesieTshirtDescription]
   Page Should Contain Button   ${Home page}[AddToCartButtonForOnesieTshirt]
   Verify elements is visible and displayed   ${Home page}[ProductRedTshirt]
   Verify elements is visible and displayed   ${Home page}[ProductOnesieTshirtDescription]
   Verify elements is visible and displayed   ${Home page}[ProductRedTshirtDescription]





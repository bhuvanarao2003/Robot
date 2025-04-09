*** Settings ***
Documentation  Automation Testing of an Online Pizza Shop
Library             SeleniumLibrary
Test Teardown   Close Browser
*** Keywords ***
Open Website
    OpenBrowser     https://dineshvelhal.github.io/testautomation-playground/login.html    chrome
Login
    Click Element   id:user
    Input Text      id:user     admin
    sleep           0.5
    Click Element   id:password
    Input Text      id:password     admin
    sleep           0.5
    Click Button    id:login

Select Medium pizza,Veggie Delight,Buffalo Sauce and Greenolive+Tomatoes Toppings
    Wait until element is visible   css:h3
    Click Element       id:rad_medium
    Select from list by label       id:select_flavor        Veggie Delight
    Click Element       id:rad_buffalo
    Click Element       id:green_olive

Set Quality to 5 and add to cart
    Click Element       id:quantity
    Input Text       id:quantity        5
    Click Button     id:submit_button

Verify Success Message
    Sleep       0.5
    Wait until element is visible   id:added_message
    Element text should be      id:added_message    Pizza added to the cart!

Print Success Message
    ${SuccessMessage}       get text    id:added_message
    log to console          ${SuccessMessage}
    log                     ${SuccessMessage}
    Sleep                   0.5


*** Test Cases ***
Order 5 Pizza
    Open Website
    Login
    Select Medium pizza,Veggie Delight,Buffalo Sauce and Greenolive+Tomatoes Toppings
    Set Quality to 5 and add to cart
    Verify Success Message
    Print Success Message
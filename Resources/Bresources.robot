*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${URL}      https://admin-demo.nopcommerce.com/
${BROWSER}  chrome
*** Keywords ***
Opening my browser
    open browser ${URL}     ${BROWSER}
    maximize browser window
Closeing my browsers
    close all browsers
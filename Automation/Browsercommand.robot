*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
browsercommand
    open browser        https://www.google.com      chrome
    maximize browser window
    sleep   3
    go to       https://www.yahoo.com/
    sleep   3
    go back
    sleep   3
    close browser
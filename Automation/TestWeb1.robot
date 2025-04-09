*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
AmazonWebsite
    Open Browser    https://www.amazon.com/      Chrome
    Sleep   5
    Close Browser
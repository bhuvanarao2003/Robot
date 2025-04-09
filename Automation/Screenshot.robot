*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
screenbot
    OpenBrowser     https://websitesetup.org/website-planning/best-designed-websites/        chrome
    maximize browser window

    capture element screenshot     xpath://*[@id="post-35810"]/section/img[1]      cup.png
    capture page screenshot     website.png
    close browser

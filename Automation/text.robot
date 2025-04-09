*** Settings ***
Library    RPA.Desktop
Library    OperatingSystem

*** Variables ***
${CONTACT_NAME}    Bhuuu (You)
${MESSAGE}         Hello from Robot Framework!
${COUNT}           100

*** Test Cases ***
Send WhatsApp Messages to Contact

    Open WhatsApp Desktop
    Search and Open Contact    ${CONTACT_NAME}
    Send Messages    ${MESSAGE}    ${COUNT}

*** Keywords ***
Open WhatsApp Desktop
    Run Process    cmd /c start "" "C:\\Users\\bhuva\\OneDrive\\Desktop\\WhatsApp.lnk"
    Sleep    5s

Search and Open Contact
    [Arguments]    ${contact}
    Type Text    ${contact}
    Sleep    1s
    Press Keys    ENTER
    Sleep    1s

Send Messages
    [Arguments]    ${text}    ${times}
    : FOR    ${i}    IN RANGE    ${times}
    \   Type Text    ${text} ${i+1}
    \   Press Keys   ENTER
    \   Sleep        0.2s

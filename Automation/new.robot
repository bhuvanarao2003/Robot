*** Settings ***
Library     OperatingSystem
Library     RPA.Desktop
Library     RPA.Screenshot

*** Variables ***
${FILENAME}      C:\\Users\\bhuva\\OneDrive\\Desktop\\notepad.txt
${CONTENT}      "This is a test written by Robot Framework!"

*** Keywords ***
Open Notepad
    Open Application    C:\\Windows\\System32\\notepad.exe
    Sleep    1s

Type Text In Notepad
    Type Text           ${CONTENT}
    Sleep               0.5s

Save File
    [Arguments]     ${file}
    Press Keys      ctrl    s
    Sleep           1s
    Type Text       ${file}
    sleep           1s
    Press Keys      enter
    Sleep           1s

Close Notepad
    Press Keys      alt    f4
    Sleep           1s

Reopen Notepad
    [Arguments]  ${file}
    Open Application    C:\\Windows\\System32\\notepad.exe  ${file}
    Sleep   1s

*** Test Cases ***
Opening
    Open Notepad
    sleep       0.5s
    Type Text In Notepad
    sleep       0.5s
    Save File   ${FILENAME}
    sleep       0.5s
    Close Notepad
Reopening
    Reopen Notepad      ${FILENAME}
    sleep       0.5s
    take screenshot      notepad.png
    sleep       0.5s
    Close Notepad

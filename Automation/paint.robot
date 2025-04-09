*** Settings ***
Library    RPA.Desktop
Library    RPA.Windows
Library    OperatingSystem

*** Variables ***
${PAINT_PATH}    mspaint.exe
${FILENAME}      C:/Users/bhuva/Desktop/robot_doodle.png

*** Test Cases ***
Draw In MS Paint
    Open Paint
    Maximize Window
    Sleep    1s
    Draw Rectangle
    Save Drawing
    Close Paint

*** Keywords ***
Open Paint
    Open Application    ${PAINT_PATH}
    Sleep    2s

Maximize Window
    Press Keys    alt    SPACE
    Sleep         0.5s
    Press Keys    x
    Sleep         0.5s

Draw Rectangle
    Move Mouse    300    300
    Mouse Down
    Move Mouse    500    500
    Mouse Up
    Sleep         1s

Save Drawing
    Press Keys    ctrl    s
    Sleep         1s
    Type Text     ${FILENAME}
    Press Keys    ENTER
    Sleep         1s

Close Paint
    Press Keys    alt    f4
    Sleep         1s

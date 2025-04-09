*** Settings ***
Library           Calculator.py

*** Keywords ***
AddNum
    [Arguments]    ${a}    ${b}
    ${result}=     Add    ${a}    ${b}
    [Return]       ${result}

SubNum
    [Arguments]    ${a}    ${b}
    ${result}=     Subtract    ${a}    ${b}
    [Return]       ${result}

MulNum
    [Arguments]    ${a}    ${b}
    ${result}=     Multiply    ${a}    ${b}
    [Return]       ${result}

DivNum
    [Arguments]    ${a}    ${b}
    ${result}=     Divide    ${a}    ${b}
    [Return]       ${result}

*** Test Cases ***
Test Add
    ${result}=     AddNum   2    3
    Should Be Equal As Numbers    ${result}    5

Test Subtract
    ${result}=     SubNum    3    3
    Should Be Equal As Numbers    ${result}    0

Test Multiply
    ${result}=     MulNum    2    3
    Should Be Equal As Numbers    ${result}    6

Test Divide
    ${result}=     DivNum     3    3
    Should Be Equal As Numbers    ${result}    1

*** Settings ***
Documentation   This is my test case
Library         OperatingSystem
Resource        ../Resources/resource.robot

*** Test Cases ***
TEST4
    [Tags]  demo
    Log     ${myvar}
    Log     ${LIST}[2]
    Log     ${DICTONARY}[identity]
    Log My Username
    Log My Password
    Log My Usename and Password1
    Log My Usename and Password2
    Log my specific username    ${DICTONARY}[username]
    Log my specific username and password   ${DICTONARY}[username]      ${DICTONARY}[password]
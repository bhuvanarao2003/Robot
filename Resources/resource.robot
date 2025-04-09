*** Settings ***
Library  OperatingSystem

*** Keywords ***
Log My Username
    Log         ${DICTONARY}[username]

Log My Password
    Log         ${DICTONARY}[password]

Log My Usename and Password1
    Log         ${DICTONARY}[username]
    Log         ${DICTONARY}[password]

Log My Usename and Password2
    Log My Password
    Log My Username

Log my specific username
    [Arguments]     ${username}
    Log             ${username}

Log my specific username and password
    [Arguments]     ${username1}     ${password}
    Log             ${username1}
    Log             ${password}
*** Variables ***
${myvar}        my test variable
@{LIST}         test1   test2   test3
&{DICTONARY}       username=bhuvana    password=99      identity=billonare

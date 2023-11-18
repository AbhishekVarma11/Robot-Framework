*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Library        DataDriver    TestData/td1.xlsx    sheet=td
Suite Setup    Open my Browser
Suite Teardown    close Browsers
Test Template    Invalid login
*** Test Cases ***
LoginTestWithExcel using ${username}     and    ${password}
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login Button
    error message should be visible
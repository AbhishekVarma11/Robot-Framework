*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Login_resources.robot
Suite Setup        Open my browser
Suite Teardown        close Browsers
Test Template        Valid login
#Test Template        Invalid login
*** Test Cases ***            username                      password
# Right user empty pass        admin@yourstore.com            ${EMPTY}
# Right user wrong pass        admin@yourstore.com              xyz
# wrong user right pass        admi@yourstore.com             admin
# Wrong user empty pass        admi@yourstore.com              ${EMPTY}
# Wrong user wrong pass        admi@yourstore.com              xyz
Right password right pass      admin@yourstore.com             admin
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login Button
    error message should be visible

Valid login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login Button
    dashboard should be visible
    sleep     3
    click logout button
    close Browsers





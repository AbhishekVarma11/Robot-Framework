*** Settings ***
Library      SeleniumLibrary

***Variables***
${login_url}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}    chrome
*** Keywords ***
Open my Browser
    Open Browser    ${login_url}    ${browser}
    Maximize Browser Window

close Browsers
    Close All Browsers

open login Page
    go to ${login_url}

Input username
    [Arguments]    ${username}
    input text     id:Email    ${username}
Input pwd  
    [Arguments]    ${password}
    Input Text    id:Password     ${password}
click login Button
    click button    xpath://button[contains(text(),'Log in')]

click logout button
    Click Link    xpath://a[@href='/logout']

error message should be visible
    Page Should Contain    Login was unsuccessful

dashboard should be visible
    Page Should Contain    Dashboard

*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window
Open SigninPage
    Click Element    ${btn_signPage}

    
Enter UserName
    [Arguments]    ${username}
    Input Text     ${txt_loginPassword}    ${username}
Enter password 
    [Arguments]    ${password}
    Input Text      ${txt_loginPassword}    ${password}

click singin
    Click Button    ${btn_signIn}

verify successful login 
    Page Should Contain    Login Successfully

close Tabs
    Close All Browsers
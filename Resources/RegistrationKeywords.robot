*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/locators.py

*** Keywords ***
Open my browser
    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window

click registerLink
    click link    ${link_reg}

Enter FirstName
    [Arguments]    ${firstName}
    Input Text    ${txt_firstname}    ${firstName}

Enter LastName
    [Arguments]    ${lastname}
    Input Text    ${txt_lastName}    ${lastname}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${txt_phone}    ${phone}

Enter Email
    [Arguments]    ${email}
    Input Text    ${txt_email}    ${email}
Enter Address
    [Arguments]    ${address}
    Input Text    ${txt_address}    ${address}
Enter city
    [Arguments]    ${city}
    Input Text    ${txt_city}    ${city}
Enter State
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Enter Country
    [Arguments]    ${country}
    Select From List By Value  ${txt_country}    ${country}    

Enter UserName
    [Arguments]    ${username}
    Input Text    ${txt_userName}    ${username}

Enter password
    [Arguments]    ${password}
    Input Text    ${txt_password}    ${password}

Enter confirm_password
    [Arguments]    ${cpassword}
    Input Text    ${txt_confirmedPassword}    ${cpassword}

click submit
    Click Button    ${btn_submit}

verify Successful Registration
    Page Should Contain    Thank you for registering

close currentTabs
    Close All Browsers


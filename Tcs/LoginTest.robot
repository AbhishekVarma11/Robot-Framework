*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot
*** Variables ***
${browser}    chrome
${siteurl}    https://demo.guru99.com/test/newtours/index.php
${user}       test 
${pwd}        password 
*** Test Cases ***
LoginTest
    Open my browser    ${siteurl}    ${browser}
    Open SigninPage
    Enter UserName    ${user}
    Enter password    ${pwd}
    click singin
    Sleep    3
    verify successful login
    close Tabs

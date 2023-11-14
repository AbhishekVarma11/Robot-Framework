*** Settings ***
Resource    ../Resources/RegistrationKeywords.robot
Library    SeleniumLibrary
***Variables***
${browser}    chrome
${siteurl}    https://demo.guru99.com/test/newtours/index.php   
*** Test Cases ***
RegistrationTest
    Open my browser      ${siteurl}    ${browser}
    click registerLink
    Enter FirstName    X
    Enter LastName    XX
    Enter Phone    9090909090
    Enter Email    x@gmail.com 
    Enter Address    xaddress
    Enter city    xcity
    Enter State    xstate
    Enter Country    INDIA
    Enter UserName    x@gmail.com 
    Enter password    xxxxx
    Enter confirm_password    xxxxx
    click submit
    close currentTabs



















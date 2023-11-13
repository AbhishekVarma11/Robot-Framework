*** Settings ***
Library  SeleniumLibrary
Library    ../../pytest_venv/lib/site-packages/robot/libraries/XML.py

*** Variables ***
${browser}  chrome
${url}  http://demo.nopcommerce.com

*** Test Cases ***
TestingInputBox
    Open Browser   ${url}      ${browser}
    Maximize Browser Window
    Title Should Be   nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email_txt"}  Set Variable  id:Email
    Element Should Be Visible    ${"email_txt"}
    Element Should Be Enabled    ${"email_txt"}

    Input Text    ${"email_txt"}    x@gmail.com
    Sleep    5
    Clear Element Text    ${"email_txt"}
    Sleep    3
    Close Browser
*** Keywords ***
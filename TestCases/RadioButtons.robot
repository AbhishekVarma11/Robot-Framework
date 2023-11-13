*** Settings ***
Library  SeleniumLibrary
Library    ../../pytest_venv/lib/site-packages/robot/libraries/XML.py

*** Variables ***
${browser}  chrome
${url}   https://demo.nopcommerce.com/register?returnUrl=%2F

*** Test Cases ***
TestingInputBox
    Open Browser   ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed    3
    Select Radio Button    Gender    M 

    Unselect Checkbox    Newsletter
   
    Close Browser
*** Keywords ***
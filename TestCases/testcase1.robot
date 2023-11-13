***Settings***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        Chrome
${URL}            http://demo.nopcommerce.com

***Test Cases***
Login Test
    #create webdriver chrome executable_path="D:/Robot/RobotFrameworkPython/drivers/chrome.exe"
    Open Browser    http://demo.nopcommerce.com    ${BROWSER}
    loginToApplication
    click element  xpath://button[contains(text(),'Log in')]
    close browser

***keywords***
loginToApplication
     click link     xpath://a[@class='ico-login']
     input text     id:Email        x@gmail.com
     input text     id:Password     x@1234
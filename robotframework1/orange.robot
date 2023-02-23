*** Settings ***
#Library     SeleniumLibrary
Library    RPA.Browser.Selenium   auto_close=${False}
*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}  chrome
*** Test Cases ***
Login_Test
     Open Browser   ${url}   ${browser}
     Maximize Browser Window
     Login_to_application
*** Keywords ***
Login_to_application
     Sleep    5
     Input Text    //body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[1]/div[1]/div[2]/input[1]    Admin
     Input Text    //body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[2]/div[1]/div[2]/input[1]    admin123
     Sleep    3
     Click Element    //body/div[@id='app']/div[1]/div[1]/div[1]/div[1]/div[2]/div[2]/form[1]/div[3]/button[1]
     Sleep    3
     Click Element    //header/div[1]/div[2]/ul[1]/li[1]/span[1]
     Sleep    3
     Click Element    //a[contains(text(),'Logout')]
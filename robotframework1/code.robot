*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library    Telnet
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome
*** Test Cases ***
Login_Test
     Open Browser   ${url}   ${browser}
     Maximize Browser Window
     Login_to_application
*** Keywords ***
Login_to_application
     Click Link    Xpath://a[contains(text(),'Log in')]
     Input Text    Xpath://input[@id='Email']    nishanarayanan685@gmail.com
     Input Text    Xpath://input[@id='Password']    ammu@14
     Sleep    5
     Click Element  Xpath://button[contains(text(),'Log i')]




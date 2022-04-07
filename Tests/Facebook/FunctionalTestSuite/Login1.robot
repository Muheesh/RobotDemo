*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in

*** Test Cases ***
Login Screen Test
    [Documentation]  This is a login screen for users
    [Tags]  users
    Log  Hello

Registrarion Screen Test
    [Documentation]  This is the registration screen for users
    [Tags]  users
    Log  Success

Admin Login Test
    [Documentation]  This page is for Admins
    [Tags]  Admin
    Log  Admin

Google Test
    [Documentation]  Google search test
    [Tags]  Internet
    Open Browser    ${web_url}     chrome
    Maximize Browser Window
    Enter Search Data
    Submit Form
    sleep  5s
    Close Browser
*** Keywords ***
Enter Search Data
    Input Text  name:q  ${search_p}
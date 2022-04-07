*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${google_search}  https://www.google.com/
${search_query}  flipkart
${product_search}  Iphone
*** Test Cases ***
Google Search Test
    [Documentation]  This test is to open Google
    [Tags]  google
    Open Browser  ${google_search}  chrome
    Maximize Browser Window
    Search Data
    Submit Form
    Click Element  class:LC20lb

Flipkart Search Test
    [Documentation]  This test is to check Flipkart app
    [Tags]  Shopping App
    sleep  3s
    Click Button  class:_2KpZ6l
    Search Flip Data
    sleep  3s
    Click Button  class:L0Z3Pu


*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}
Search Flip Data
    Input Text  name:q  ${product_search}
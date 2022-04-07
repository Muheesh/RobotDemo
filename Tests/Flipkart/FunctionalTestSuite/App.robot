*** Settings ***
Library  SeleniumLibrary
Suite Setup     Log     Inside Test Suite Setup
Suite Teardown   Log     Inside Test Suite Teardown

Test Setup  Log     Inside Test Case Setup
Test Teardown    Log     Inside Test Case Teardown

*** Variables ***
${google_search}  https://www.google.com/
${search_query}  flipkart
${product_search}  Iphone
${email_id}  abcd@gmail
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

Purchase Iteam Test
    sleep  2s
    Click Element  class:_4rR01T
    sleep  1s
    Click Button  class:_2KpZ6l
    sleep  1s
    Email Address
    sleep   1s


*** Keywords ***
Search Data
    Input Text  name:q  ${search_query}
Search Flip Data
    Input Text  name:q  ${product_search}
Email Address
    Input Text  class:_17N0em  ${email_id}
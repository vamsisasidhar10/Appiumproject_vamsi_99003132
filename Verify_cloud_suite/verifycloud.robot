


*** Settings ***
Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***
TC1_ValidCredentialTest
    Log To Console    ${OUTPUT_DIR}${/}driver  
    Append To Environment Variable    Path     ${OUTPUT_DIR}${/}driver
    Open Browser    url=https://www.amazon.in   browser=ff    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
   
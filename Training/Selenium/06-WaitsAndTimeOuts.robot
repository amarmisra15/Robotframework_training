
#Agenda
#Selenium Speed
#Selenium Timeout
#Implicit Wait
#Sleep


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url}    http://demowebshop.tricentis.com/register



*** Test Cases ***
Test1
    Open Browser      ${url}    ${browser}  
    Maximize Browser Window
    
     ${orig_timeout}=    Set Selenium Timeout    8s
    Log     ${orig_timeout}    
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email   abcd@gmail.com
    Input Text    name:Password    12345
    Input Text    name:ConfirmPassword    12345
        
        
Test2
    Open Browser      ${url}    ${browser}  
    Maximize Browser Window
    
    ${orig_timeout}=    Set Selenium Implicit Wait    10
    Log     ${orig_timeout} 
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    name:FirstName1    David
    Input Text    name:LastName    John
    Input Text    name:Email   abcd@gmail.com
    Input Text    name:Password    12345
    Input Text    name:ConfirmPassword    12345
    
    
Test3
    Open Browser      ${url}    ${browser}  
    Maximize Browser Window
    
    Set Selenium Speed    2s
    Wait Until Page Contains    Register
    Select Radio Button    Gender    M
    Input Text    name:FirstName    David
    Input Text    name:LastName    John
    Input Text    name:Email   abcd@gmail.com
    Input Text    name:Password    12345
    Input Text    name:ConfirmPassword    12345
    
             
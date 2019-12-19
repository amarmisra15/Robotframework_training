
#Agenda
#How to close single and multiple browsers


*** Settings ***
Library    SeleniumLibrary  
Library    BuiltIn 

#Wait Until Keyword Succeeds     10x    200ms         

*** Variables ***

${browser}    firefox
${url1}    http://demowebshop.tricentis.com/register
${url2}    http://automationpractice.com/index.php



*** Test Cases ***
Test1
    Open Browser     ${url1}    ${browser}  
    Maximize Browser Window
    
    Open Browser      ${url2}    ${browser}  
    Maximize Browser Window
    
    # Close Browser
    
    Close All Browsers
    
    
    
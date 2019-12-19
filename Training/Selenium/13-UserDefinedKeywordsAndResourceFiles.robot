#Agenda
#User Defined Keywords without Arguments
#User Defined Keywords with Arguments
#User Defined Keywords with Arguments and Return Value


*** Settings ***
Library    SeleniumLibrary   
Resource   Resources/13-Resource.robot 

*** Variables ***

${browser}    firefox
${url1}    http://www.newtours.demoaut.com/


*** Test Cases ***
Test
    # Right Click
    # LaunchBrowser
    # LaunchBrowserWithArgs    ${url1}    ${browser} 
    ${pageTitle}=    LaunchBrowserWithArgsRet    ${url1}    ${browser} 
    Log    ${pageTitle}    
    Input Text    name:userName    mercury
    Input Text    name:password    mercury
    
*** Keywords ***
LaunchBrowser
    Open Browser      ${url1}    ${browser} 
    Maximize Browser Window 
    
LaunchBrowserWithArgs
    [Arguments]    ${app_url1}    ${app_browser} 
    Open Browser      ${app_url1}    ${app_browser} 
    Maximize Browser Window    
    
    
    

    
        
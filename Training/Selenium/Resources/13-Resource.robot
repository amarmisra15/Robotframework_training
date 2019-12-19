*** Settings ***
Library    SeleniumLibrary    

*** Keywords ***

LaunchBrowserWithArgsRet
    [Arguments]    ${app_url1}    ${app_browser} 
    Open Browser      ${app_url1}    ${app_browser} 
    Maximize Browser Window    
    ${title}=    Get Title
    [Return]    ${title}
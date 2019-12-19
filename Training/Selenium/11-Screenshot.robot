#Agenda
#Capture Element Screenshor
#Capture Page Screenshot


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    https://opensource-demo.orangehrmlive.com/


*** Test Cases ***
Test
    Open Browser      ${url1}    ${browser} 
    Input Text    id:txtUsername    Admin
    Input Text    id:txtPassword    admin123
    
    Capture Element Screenshot    id:txtPassword      
    Capture Page Screenshot    
    Capture Page Screenshot
    
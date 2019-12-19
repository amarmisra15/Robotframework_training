#Agenda
#Browser Related Keywords
#Go To
#Go Back
#Get Location


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    http://demo.automationtesting.in/Windows.html
${url2}    https://www.google.co.in/?gws_rd=ssl
${url3}    https://www.bing.com/

*** Test Cases ***
Test
    Open Browser      ${url2}    ${browser} 
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    Sleep    2
    
    Go To    ${url3}    
    ${loc}=    Get Location
    Log To Console    ${loc}
    
    Sleep    3
    
    Go Back 
     ${loc}=    Get Location
    Log To Console    ${loc}
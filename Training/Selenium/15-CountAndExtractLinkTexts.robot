#Agenda
#Count Number of Links on WebPages
#Extract All the links from WebPage


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    http://www.newtours.demoaut.com/

*** Test Cases ***
Test
    
    Open Browser      ${url1}    ${browser} 
    Maximize Browser Window
    ${AllLinksCount}=    Get Element Count    xpath://a
    Log To Console    ${AllLinksCount}
    
    @{linkItems}    Create List    
    : For    ${i}    IN RANGE    1    ${AllLinksCount}+1
      \  ${link_text}=    Get Text    xpath:(//a)[${i}]
      \  Log To Console    ${link_text}    
           
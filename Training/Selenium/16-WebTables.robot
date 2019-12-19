
#Agenda
#Count Number of Links on WebPages
#Extract All the links from WebPage


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    headlessfirefox
${url1}    http://testautomationpractice.blogspot.com/

*** Test Cases ***
Test
    
    Open Browser      ${url1}    ${browser} 
    Maximize Browser Window
    ${rows}=    Get Element Count    //table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    //table[@name='BookTable']/tbody/tr[1]/th
    
    Log To Console    ${rows}
    Log To Console    ${cols}
    
    ${data}    Get Text    //table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${data}
    
    
    Table Should Contain    //table[@name='BookTable']    Animesh
    Table Column Should Contain    //table[@name='BookTable']    2    Mukesh
    Table Row Should Contain    //table[@name='BookTable']    4    Learn JS
    Table Cell Should Contain    //table[@name='BookTable']    5    2    Mukesh    
    Table Header Should Contain    //table[@name='BookTable']    Author            
                    
    
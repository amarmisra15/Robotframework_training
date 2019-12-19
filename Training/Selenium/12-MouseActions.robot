#Agenda
#Right Click
#Double Click
#Drag and Drop


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    http://swisnl.github.io/jQuery-contextMenu/demo.html


*** Test Cases ***
Test
    # Right Click
    Open Browser      ${url1}    ${browser} 
    Maximize Browser Window
    Open Context Menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    3
    
    #Double Click
    Go To    http://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    sleep    3
    
    #Drag and drop
    Go To    http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    Maximize Browser Window
    Drag And Drop    id:box6    id:box106
    sleep    5
    
    Close Browser
    
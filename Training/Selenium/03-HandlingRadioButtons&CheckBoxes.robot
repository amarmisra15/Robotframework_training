#Agenda
#Working with RadioButtons and Check boxes


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url}    http://www.practiceselenium.com/practice-form.html



*** Test Cases ***
Test1
    Open Browser      ${url}    ${browser} 
    Maximize Browser Window
    
    #Selecting Radio Button
    Select Radio Button    sex    Female
    Select Radio Button    exp    5

    #Selecting Check Box
    Select Checkbox    BlackTea
    Select Checkbox    RedTea
    
    Unselect Checkbox    BlackTea
    
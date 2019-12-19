#Agenda
#Selecting values from DropDownAndListBox


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url}    http://www.practiceselenium.com/practice-form.html



*** Test Cases ***
Test1
    Open Browser      ${url}    ${browser} 
    Maximize Browser Window
    
    Select From List By Label    continents    Asia
    sleep    3
    Select From List By Index    continents    5
    
    
    Select From List By Label    selenium_commands   Switch Commands
    Select From List By Label    selenium_commands   WebElement Commands
    sleep    3
    Unselect From List By Label    selenium_commands     Switch Commands   
    
         
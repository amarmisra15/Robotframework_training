#Agenda
#Scrolling page till it reaches a pixel number
#Scrolling page till it finds  a specific element in a page
#Scroll page till bottom


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    https://www.countries-ofthe-world.com/flags-of-the-world.html


*** Test Cases ***
Test
    
    Open Browser      ${url1}    ${browser} 
    Maximize Browser Window
    # Execute Javascript    window.scrollTo(0,2500)
    
    sleep    3
    Scroll Element Into View    //*[text()='Japan']
    
    # sleep    3
    # Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
    # sleep    2
    # Execute Javascript      window.scrollTo(0,-document.body.scrollHeight)
    
    
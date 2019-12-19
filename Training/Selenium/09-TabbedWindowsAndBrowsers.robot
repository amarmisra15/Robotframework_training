#Agenda
#How to handle tabbed windows
#How to handle browser windows


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    http://demo.automationtesting.in/Windows.html
${url2}    https://www.google.co.in/?gws_rd=ssl
${url3}    https://www.bing.com/

*** Test Cases ***
MultipleTabsTest
    Open Browser      ${url1}    ${browser} 
    Wait Until Page Contains Element    //*[@id="Tabbed"]/a/button     
    Click Button    //*[@id="Tabbed"]/a/button  
    Maximize Browser Window
    sleep    4
    Switch Window    Sakinalium | Home
    Wait Until Page Contains Element    //*[@id="container"]/header/div/div/div[2]/ul/li[2]/a    
    Click Element    //*[@id="container"]/header/div/div/div[2]/ul/li[2]/a
    sleep    3
    Close All Browsers   
    # @{list1}    Get Window Handles    
    # :FOR    ${win}    IN     ${list1}
    # \   Switch Window     ${win}
    # \    sleep    2
    # \    ${url}=    Get Location
    # \    Log To Console    ${url}          
    
MultipleBrowserTest
    Open Browser      ${url2}    ${browser} 
    Maximize Browser Window
    
    sleep    2
    
    Open Browser      ${url3}    ${browser} 
    Maximize Browser Window
    
    sleep    2
    Switch Browser    1
    ${title1}=    Get Title
    Log To Console    ${title1} 
    Input Text    //*[@name="q"]    Google testing
    Press Keys    //*[@name="q"]    ENTER    
    sleep    2   
    
    Switch Browser    2
    ${title2}=    Get Title
    Log To Console    ${title2} 
    Input Text    //*[@name="q"]    Bing testing  
    Press Keys    //*[@name="q"]    ENTER    
    
    sleep    3
    Close All Browsers
    
          
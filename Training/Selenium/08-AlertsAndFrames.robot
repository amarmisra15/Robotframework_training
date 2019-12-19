
#Agenda
#How to Handle Alerts
#How to handle Iframes


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url1}    http://testautomationpractice.blogspot.com/
${url2}    https://javadoc.io/static/org.seleniumhq.selenium/selenium-api/2.50.1/index.html?org/openqa/selenium/WebDriver.html

*** Test Cases ***
TestAlert
    Open Browser      ${url1}    ${browser} 
    Click Button    //*[@id="HTML9"]/div[1]/button
    sleep    3
    # Handle Alert    action=ACCEPT
    # Handle Alert    action=DISMISS
    Alert Should Be Present    Press a button!
    # Alert Should Not Be Present 
    
TestFrames
    Open Browser      ${url2}    ${browser} 
    
    Select Frame    packageListFrame   
    Click Link    org.openqa.selenium    
    Unselect Frame
    
    sleep    3
    
    Select Frame    packageFrame
    Click Link    WebDriver
    Unselect Frame
    sleep    3
    
    Select Frame    classFrame
    Click Link    Index
    Unselect Frame
    sleep    3
        
    
       
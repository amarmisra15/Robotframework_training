
#Agenda
#Suite Setup and teardown
#Test Setup and Teardown
#grouping of test cases
#robot -i sanity -e regression 19-SetupTeardown.robot

*** Settings ***
# Library    SeleniumLibrary 
Suite Setup    Log To Console    Opening browser    
Suite Teardown      Log To Console    Closing Browser  
Test Setup    login
Test Teardown    logout 

*** Variables ***

${browser}    firefox
${url1}    http://testautomationpractice.blogspot.com/


*** Keywords ***

login
    log    Login
    
logout
    log     out


*** Test Cases ***
TC1
    [Tags]    sanity    smoke
    login
    Log To Console    This is test case 1
    logout

TC2
    [Tags]    regression
    Log To Console    This is test case 2    
    
TC3
    [Tags]    sanity
    Log To Console    This is test case 3        


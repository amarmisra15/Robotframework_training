
*** Settings ***
Library    SeleniumLibrary 
Resource   Resources/17-Login_resources.robot
Suite Setup    Open my Browser
Suite Teardown    Close Browsers

Test Template    Invalid Login
*** Variables ***

${browser}    firefox
${url1}    http://testautomationpractice.blogspot.com/

*** Test Cases ***         username                 password
Right user empty pwd        admin@yourstore.com       ${EMPTY}
Right user wrong pwd         admin@yourstore.com        xyz
Wrong user right pass        adm@yourstore.com        admin
Wrong user empty pass        adm@yourstore.com        ${EMPTY}
Wrong user wrong pass        adm@yourstore.com        xyz
        
    
    


*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Error message should be visible
    
*** Settings ***
Library    SeleniumLibrary    


*** Variables ***
${Login_URL}    https://admin-demo.nopcommerce.com/
${Browser}    firefox


*** Keywords ***
Open my Browser
    Open Browser    ${Login_URL}    ${Browser}
    Maximize Browser Window
    
Close Browsers
    Close All Browsers
    
Open Login Page
    Go To    ${Login_URL} 
    
Input username
    [Arguments]    ${username}
    Input Text    id:Email    ${username}
    
Input pwd
    [Arguments]    ${password}
    Input Password    id:Password    ${password}
    
Click login button
    Click Element    //input[@class='button-1 login-button']    
    
Click logout link
    Click Link    Logout 
    
Error message should be visible
    Page Should Contain    Login was unsuccessful   
    
Dashboard page should be visible
    Page Should Contain    Dashboard                 
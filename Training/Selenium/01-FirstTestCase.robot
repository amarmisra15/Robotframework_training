#Agenda
#Project folder structure
#Multiple Sections in Robot file
#Writing test case
#Report


*** Settings ***
Library    SeleniumLibrary        

*** Variables ***


*** Test Cases ***

LoginTest
       
    Open Browser   https://demo.nopcommerce.com/    firefox
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    sounak95@gmail.com
    Input Password    id:Password    Test@123
    Click Element    xpath://input[@class='button-1 login-button']
    # sleep    2
    Wait Until Element Is Visible    //li[contains(text(),'No customer account found')]    2s
    # Element Should Be Visible      
    Close Browser                 
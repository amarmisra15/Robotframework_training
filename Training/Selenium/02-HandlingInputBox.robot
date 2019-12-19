#Agenda
#Working with WebElements
#TextBox/InputBox
#-Visibility Status
#-Enabled Status
#-Provide Value
#-Clearing Value
#-Verify title of page


*** Settings ***
Library    SeleniumLibrary    

*** Variables ***

${browser}    firefox
${url}    https://demo.nopcommerce.com/



*** Test Cases ***

Test1
    Open Browser      ${url}    ${browser} 
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']       
    ${email_txt}    Set Variable    id:Email
    Element Should Be Visible    ${email_txt}
    Element Should Be Enabled    ${email_txt}
    Input Text    id:Email    sounak95@gmail.com
    sleep    3
    Clear Element Text    ${email_txt}
    sleep    3
    Element Should Be Visible    //li[contains(text(),'No customer account found')]    
    Close Browser
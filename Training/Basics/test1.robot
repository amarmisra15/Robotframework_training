*** Settings ***
Library    BuiltIn        

*** Variables ***
@{ListName}    arg0    arg1    arg2    arg3    arg4    arg5    arg6
*** Keywords ***
Addition
    [Arguments]    ${a}    ${b}
    ${output}    Evaluate    ${a}+${b}
    Set Global Variable    ${output}
    [Return]    ${output}    

*** Test Cases ***

Hello 
    Log    hello World
    Log To Console    Hello world
    Should Be Equal    hello UTF!    hello UTF!
    Should Not Be Equal    hello UTF!    robotUTF!   
    Should Be Equal As Numbers    ${8000}    ${8000}
    Should Be Equal As Integers    ${8000}    ${8000}
    Should Be Equal As Numbers    ${2+2}    ${1*4}
	${output}    Evaluate    2+2
	    
     
 DemoTestCase
    sleep    2
    ${status}    Run Keyword And Return Status    Addition    5    4
    Run Keyword If    ${status}==True    Log To Console    keyword is successful    ELSE    Log To Console    Failed:(
    # Log To Console    ${output}
    
FlowControl
    ${txt}    Set Variable    UTF
    ${length}    Get Length    ${txt}
    Run Keyword If    ${length}>5    Log    length of ${txt} is greater than 5
    ...    ELSE IF    ${length}<5    Log    Length of ${txt} is lesser than 5
    ...    ELSE    FAIL    Invalid input

For loop - Type1
    : FOR    ${i}    IN RANGE    0    5
    \    Log To Console    ${ListName[${i}]}    

For loop - Type2
    @{ListName}    Create List    arg0    arg1    arg2    arg3    arg4    arg5    arg6
    :FOR    ${i}   IN   @{ListName}
    \    Log To Console    ${i}

For loop - Type3
    @{ListName}    Create List    arg0    arg1    arg2    arg3    arg4    arg5    arg6
    ${list_length}    Get Length    ${ListName}
    :FOR    ${i}   IN RANGE    0    ${list_length}
    \    Log To Console    ${ListName[${i}]} 
    

    



    
                    
    
    
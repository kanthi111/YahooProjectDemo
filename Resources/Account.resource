*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#variables for sign in
&{SIGNIN}
...    BTN_SIGN_IN=//*[contains(text(),'Sign in')]
...    LBL_YAHOO=//*[text()="Yahoo Finance"]

#variables for account details
&{ACCOUNT}
...    BTN_CREATE_ACCOUNT=//*[@id='createacc']
...    TXT_FIRST_NAME=//*[@id='usernamereg-firstName']
...    TXT_LAST_NAME=//*[@id='usernamereg-lastName']
...    TXT_USER_ID=//*[@name='userId']
...    TXT_PASSWORD=//*[@id='usernamereg-password']
...    LST_MONTH=//*[@id='usernamereg-month']
...    TXT_DATE=//*[@id='usernamereg-day']
...    TXT_YEAR=//*[@id='usernamereg-year']
...    BTN_NEXT=//*[text()='Next']

#variables for phone details
&{PHONE}
...    TXT_PHONE_NO=//*[@id='usernamereg-phone']


*** Keywords ***
Sign In To Yahoo Account
    [Documentation]    keyword to sign in yahoo account
    Wait Until Element Is Enabled    ${SIGNIN}[BTN_SIGN_IN] 
    Click Element    ${SIGNIN}[BTN_SIGN_IN]

Validate Home page
    [Documentation]    validate the home page    
    Page Should Contain    Yahoo Finance

Click On Create Account
    [Documentation]    keyword to create yahoo account
    Wait Until Element Is Enabled    ${ACCOUNT}[BTN_CREATE_ACCOUNT]
    Click Element    ${ACCOUNT}[BTN_CREATE_ACCOUNT]

Account Details Should Be Provided
    [Documentation]    Keyword to provide details
    Wait Until Element Is Visible    ${ACCOUNT}[TXT_FIRST_NAME]
    Click Element    ${ACCOUNT}[TXT_FIRST_NAME]
    Input Text    ${ACCOUNT}[TXT_FIRST_NAME]    Jenni
    Input Text    ${ACCOUNT}[TXT_LAST_NAME]    Marlin
    Input Text   ${ACCOUNT}[TXT_USER_ID]     marlinjenni
    Input Password    ${ACCOUNT}[TXT_PASSWORD]    jenniMAR@1234576
    Select From List By Label    ${ACCOUNT}[LST_MONTH]   April
    Input Text   ${ACCOUNT}[TXT_DATE]     12
    Input Text    ${ACCOUNT}[TXT_YEAR]    1997
    Click Button    ${ACCOUNT}[BTN_NEXT]

Phone Verification Details Should Be validated
    [Documentation]    keyword to validate phone verification details
    ${element_present}=    Run Keyword And Return Status    Element Should Be Visible    ${PHONE}[TXT_PHONE_NO]
    Log To Console    Element present status: ${element_present}
    Run Keyword If    '${element_present}' == 'True'    Log To Console    Need to provide OTP,Security reasons stopping the test.            
    
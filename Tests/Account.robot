*** Settings ***
Library    SeleniumLibrary

Resource    ../Configurations/Environment.resource  
Resource    ../Resources/Account.resource

Test Setup    Open Browser    ${url}    ${Browser} 
Test Teardown    Close Browser  

*** Test Cases ***
QAA-001 Create Yahoo Account
    [Documentation]    User need to create an account.
    [Tags]    QAA-001    Smoke
    Maximize Browser Window
    Validate Home page
    Sign In To Yahoo Account
    Click On Create Account
    Account Details Should Be Provided
    Phone Verification Details Should Be validated
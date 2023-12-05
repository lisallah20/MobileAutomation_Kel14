*** Settings ***
Resource    ../pageObjects/homePageObject//homePage.robot
Resource    ../pageObjects//loginPageObject//loginPage.robot
Test Setup    Open Flight Application
Test Teardown    Close Flight Application

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123
${INVALID_USERNAME}     invalid
${INVALID_PASSWORD}     invalid


*** Test Cases ***
Login Valid Credential
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page

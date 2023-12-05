*** Settings ***
Resource    ../pageObjects/homePageObject//homePage.robot
Resource    ../pageObjects//loginPageObject/loginPage.robot
Resource    ../pageObjects/searchSuites/searchPage.robot
Test Setup     Open Flight Application
Test Teardown  Close Flight Application

*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123

*** Test Cases ***
Search Flight Invalid Number
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Search On Login Page
    Input Number Search On Search Page
    Click Button Search On Search Page
    Verify Search Result On Search Page
    Close Flight Application

    

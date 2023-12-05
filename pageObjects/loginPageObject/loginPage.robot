*** Settings ***
Resource        ../base/base.robot
Variables       login-locators.yaml


*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text    ${username-input}    ${username}

Input Password On Login Page
    [Arguments]    ${pasword}
    Wait Until Element Is Visible    ${password-input}
    Input Text    ${password-input}    ${pasword}

Click Sign In Button On Login Page
    Click Element    ${sign-in-button}

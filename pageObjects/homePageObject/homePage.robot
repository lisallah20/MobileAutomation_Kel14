*** Settings ***
Resource        ../base/base.robot
Variables       home-locators.yaml


*** Keywords ***
Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${log-in-button}
    Click Element    ${log-in-button}

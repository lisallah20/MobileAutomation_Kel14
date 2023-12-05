*** Settings ***
Resource         ../base/base.robot
Variables        search-locators.yaml

*** Keywords ***
Click Button Search On Login Page
    Wait Until Element Is Visible    ${button-search}
    Click Element                    ${button-search}

Input Number Search On Search Page
    Wait Until Element Is Visible    ${input-search}
    Input Text                       ${input-search}    ${number-flight}

Click Button Search On Search Page
    Wait Until Element Is Visible    ${button-search-page}
    Click Element                    ${button-search-page}

Verify Search Result On Search Page
    Wait Until Element Is Visible    ${result-invalid-search}
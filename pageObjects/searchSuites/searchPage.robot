*** Settings ***
Resource         ../base/base.robot
Variables        search-locators.yaml

*** Keywords ***
Click Button Search On Login Page
    Wait Until Element Is Visible    ${button-search}
    Click Element                    ${button-search}

Input Invalid Number Search On Search Page
    Wait Until Element Is Visible    ${input-search}
    Input Text                       ${input-search}    ${number-invlid-flight}

Input Valid Number Search On Search Page
    Wait Until Element Is Visible    ${input-search}
    Input Text                       ${input-search}    ${number-valid-flight}

Click Button Search On Search Page
    Wait Until Element Is Visible    ${button-search-page}
    Click Element                    ${button-search-page}

Verify Search Invalid Result On Result Search Page
    Wait Until Element Is Visible    ${result-invalid-search}

Verify Search Valid Result On Result Search Page
    Wait Until Element Is Visible    ${result-valid-search}
*** Settings ***
Resource        ../base/base.robot
Variables       book-locators.yaml


*** Keywords ***
Click Button Book
    Wait Until Element Is Visible    ${home-page}
    Click Element    ${button-book}

Select Bar Tab One Way
    Wait Until Element Is Visible    ${bar-tab-one-way}
    Click Element    ${bar-tab-one-way}

Select Bar Tab Round Trip
    Wait Until Element Is Visible    ${bar-tab-round-trip}
    Click Element    ${bar-tab-round-trip}

Select From City
    Wait Until Element Is Visible    ${from-city}
    Click Element    ${from-city}
    Wait Until Element Is Visible    ${from-city-1}
    Click Element    ${from-city-1}

Select To City
    Click Element    ${to-city}
    Wait Until Element Is Visible    ${to-city-1}
    Click Element    ${to-city-1}

Select Class
    Click Element    ${class}
    Wait Until Element Is Visible    ${class-1}
    Click Element    ${class-1}

Select Start Date
    Click Element    ${start-date}
    Wait Until Element Is Visible    ${choose-start-date}
    Click Element    ${choose-start-date}
    Click Element    ${button-ok-date}

Select End Date
    Click Element    ${end-date}
    Wait Until Element Is Visible    ${choose-end-date}
    Click Element    ${choose-end-date}
    Click Element    ${button-ok-date}

Select Radio Button Flight
    Click Element    ${radio-button-flight}

Select Checkbox Day
    Click Element    ${checkbox-day}

Click Button Book Flight
    Click Element    ${button-book-flight}

Confirm Your Booking
    Wait Until Element Is Visible    ${textview-click-price}
    Click Element    ${button-price-1}
    Click Element    ${button-confirm}
    Wait Until Element Is Visible    ${textview-flight-is-booked}

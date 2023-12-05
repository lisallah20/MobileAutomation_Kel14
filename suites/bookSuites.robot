*** Settings ***
Resource    ../pageObjects/homePageObject//homePage.robot
Resource    ../pageObjects//loginPageObject/loginPage.robot
Resource    ../pageObjects/bookPageObject/bookPage.robot


*** Variables ***
${VALID_USERNAME}       support@ngendigital.com
${VALID_PASSWORD}       abc123


*** Test Cases ***
Verify That User Is Able To See Form Book Flight
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Wait Until Element Is Visible    ${bar-tab-one-way}
    Close Application

Book Flight Valid On The Bar Tab One Way
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab One Way
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select End Date
    Select Radio Button Flight
    Select Checkbox Day
    Click Button Book Flight
    Confirm Your Booking
    Close Application

Book Flight Valid On The Bar Tab Round Trip
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab Round Trip
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select End Date
    Select Radio Button Flight
    Select Checkbox Day
    Click Button Book Flight
    Confirm Your Booking
    Close Application

Book Flight And Hotel Valid On The Bar Tab One Way
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab One Way
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select End Date
    Select Radio Button Flight And Hotel
    Select Checkbox Day
    Click Button Book Flight
    Confirm Your Booking
    Close Application

Book Flight And Hotel Valid On The Bar Tab Round Trip
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab Round Trip
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select End Date
    Select Radio Button Flight And Hotel
    Select Checkbox Day
    Click Button Book Flight
    Confirm Your Booking
    Close Application

Verify Flight Booking With More Than 1 Day On The Bar Tab One Way
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab One Way
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select an End Date that is more than 1 day
    Select Radio Button Flight
    Click Button Book Flight
    Confirm Your Booking
    Close Application

Verify Flight Booking With More Than 1 Day On The Bar Tab Round Trip
    Open Flight Application
    Click Sign In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Sign In Button On Login Page
    Click Button Book
    Select Bar Tab Round Trip
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select an End Date that is more than 1 day
    Select Radio Button Flight
    Click Button Book Flight
    Confirm Your Booking
    Close Application

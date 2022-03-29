*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime
Library    OperatingSystem

*** Variables ***
${URL}    https://www.amazon.com/
${BROWSER}    headlesschrome
${SSDIR}    ./screenshot

*** Keywords ***
Open URL
    Open Browser    ${URL}    ${BROWSER}


*** Test Cases ***
AmazonSignInTest
    [Documentation]    Amazon Sign In Test Case
    [Tags]    Positive Case
    # [Setup]    Remove Directory    ${SSDIR}
    ${datestamp}=    Get Current Date
    Log    This is should be amazon sign in testcase
    Open URL
    Maximize Browser Window
    Sleep    2s
    Set Screenshot Directory    ${SSDIR}
    Capture Page Screenshot 
    Close Browser



*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime
Library    OperatingSystem


# Suite Setup    Log    Test Suite Setup
# Suite Teardown    Log    Test Suite Teardown
# Test Setup    Log    Test Case Setup
# Test Teardown    Log    Test Case Teardown

*** Variables ***
${BROWSER}    chrome
${URL}    https://opensource-demo.orangehrmlive.com/
&{LOGINDATA}    username=Admin    password=admin123

*** Keywords ***
LoginKey
    Input Text    id=txtUsername    ${LOGINDATA}[username]
    Input Password    id=txtPassword    ${LOGINDATA}[password]
    Click Button    id=btnLogin


*** Test Cases ***
HelloWorldTest
    [Tags]    Hello
    Log    Hello world!

TestCase
    [Tags]    Positive
    Log    Start!
    # Create Webdriver    Chrome    executable_path=driver\chromedriver.exe
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Capture Page Screenshot    
    Input Text    name=q    robot framework testing
    Sleep    2s
    # Press Keys    name=q    ENTER
    Click Button    name=btnK
    Sleep    3s
    Close Browser
    Log    Stop!

SampeLoginTest
    [Tags]    Positive
    [Documentation]    Sample Login Test
    Open Browser    ${URL}    ${BROWSER}
    Set Browser Implicit Wait    3
    Maximize Browser Window
    LoginKey
    Sleep    2s
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser
    Log    Test completed!
    Log    This test was executed by %{username} on %{os}
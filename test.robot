*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TestCase
    Log    Start!
    # Create Webdriver    Chrome    executable_path=driver\chromedriver.exe
    Open Browser    https://google.com    chrome
    Set Browser Implicit Wait    5
    Maximize Browser Window
    Input Text    name=q    robot framework testing
    Sleep    2s
    # Press Keys    name=q    ENTER
    Click Button    name=btnK
    Sleep    3s
    Close Browser
    Log    Stop!

SampeLoginTest
    # Set Test Documentation    This is sampe login test
    Open Browser    https://opensource-demo.orangehrmlive.com/     chrome
    Set Browser Implicit Wait    3
    Maximize Browser Window
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Button    id=btnLogin
    Sleep    2s
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser
    Log    Test completed!
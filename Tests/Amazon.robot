*** Settings ***
Documentation   This is some basic info about the whole suite
Library         SeleniumLibrary

# Copy/paste the line below (without #) into the terminal tab below to execute:
# robot -d results tests/amazon.robot

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Open Browser            http://www.amazon.com       chrome
    Close Browser

*** Keywords ***

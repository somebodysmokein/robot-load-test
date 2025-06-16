*** Settings ***
Library           ./resources/data_reader.py
Library           Collections
Library           SeleniumLibrary
Library           OperatingSystem

Suite Setup       Open Browser To Login Page
Suite Teardown    Close Browser


*** Variables ***
${DATA_FILE}      ./data.csv
${URL}            https://the-internet.herokuapp.com/login
${BROWSER}        chrome


*** Test Cases ***
Loop Through Data
    ${records}=    Read Test Data    ${DATA_FILE}
    FOR    ${record}    IN    @{records}
        Log    Logging in as ${record['username']}
        Input Text    id=username    ${record['username']}
        Input Text    id=password    ${record['password']}
        Click Button    tag:button
        Sleep    60s
        Go To    ${URL}
    END

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}    executable_path=/Users/venky.webhook/Downloads/chromedriver-mac-arm64-v2/chromedriver
    Maximize Browser Window
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://example.com
${BROWSER}    chrome

*** Test Cases ***
Open Example Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Title Should Be    Example Domain
    Close Browser
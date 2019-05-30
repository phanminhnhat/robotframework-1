*** Settings ***
Test Teardown     Close Browser
Library           SeleniumLibrary

*** Test Cases ***
Open_page_with_chrome
    [Tags]    Open_page_with_chrome
    Log To Console    Open page https://www.google.com/ with browser chrome
    Open Browser    https://www.google.com/    chrome    remote_url=http://localhost:4444/wd/hub
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    xpath=//div[@id='rso']/div/div/div/div/div/div/a/h3    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page
	
Open_page_with_firefox
    [Tags]    Open_page_with_firefox
    Log To Console    Open page https://www.google.com/ with browser firefox
    Open Browser    https://www.google.com/    firefox    remote_url=http://localhost:4444/wd/hub
    Input Text    name=q    robot framework
    Press Keys    None    ENTER
    Wait Until Page Contains Element    link=Robot Framework    10s
    Click Link    Robot Framework
    Log To Console    Successfully opened page
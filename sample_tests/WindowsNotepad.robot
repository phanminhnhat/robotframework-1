*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
open_notepad
    [Documentation]    Open notepad on Window
    [Tags]    open_notepad
    Open Application    http://localhost:4723/wd/hub    platformName=Windows    deviceName='tbd'    app=C:\\Windows\\System32\\notepad.exe
    Input Text    name=Text Editor    sample test
    Element Text Should Be    name=Text Editor    sample test
    Sleep    4s
    Comment    Log To Console    Verification passed
    Click Element    name=Close
    Click Element    name=Don't Save
    Close Application

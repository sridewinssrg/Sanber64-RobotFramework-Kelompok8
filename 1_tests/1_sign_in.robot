*** Settings ***
Library  AppiumLibrary
Resource  ../resources/login_page.robot

*** Test Cases ***
Sign In Successfully
    Open Application  http://localhost:4723/wd/hub  platformName=Android  deviceName=emulator  app=path/to/app.apk
    Enter Email  user@example.com
    Enter Password  password123
    Click Login Button
    Sleep  2s
    Capture Page Screenshot
    Close Application
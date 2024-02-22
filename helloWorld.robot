*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
Hello world
    Log    I'm Bartek
    Log    Helo World!!

Browser puppeter
    Open Browser  https://google.com  firefox
    Sleep  5s
    Close Browser


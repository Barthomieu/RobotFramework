*** Settings ***
Library  SeleniumLibrary
Resource  ../data/ENV_${ENV}.robot



*** Keywords ***
Open ToDoMVC app
    Open Browser    ${TODOMVC_URL}    ${BROWSER}

Close ToDoMVC app
    Close Browser

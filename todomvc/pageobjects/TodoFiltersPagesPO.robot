*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${ACTIVE_FILTER} =  css:[href='#/active']
${COMPLETED_FILTER} =  css:[href='#/completed']

*** Keywords ***
Go to Completed filter
    Click Element  ${COMPLETED_FILTER}


Go to Active filter
    Click Element  ${ACTIVE_FILTER}
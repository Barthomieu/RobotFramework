*** Settings ***
Resource   steps/UserSteps.robot
Test Teardown  User close TodoMVP app


*** Test Cases ***
User can compleete a todo
    User opens TodoMVP app
    User creates new TODO
    User checks if todo is created
    User complete todo
    User check if todo is completed

User can filter out completed todos using Acitive filter
    User opens TodoMVP app
    User creates new TODO
    User checks if todo is created
    User complete todo
    Chceck if todo is not on active list

User can filter out completed todos on Completed filter 
    User opens TodoMVP app
    User creates new TODO
    User checks if todo is created
    User complete todo
    Check if element is on completed list 
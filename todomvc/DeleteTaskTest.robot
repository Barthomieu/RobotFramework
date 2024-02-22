*** Settings ***
Resource   steps/UserSteps.robot 
Test Teardown  User close TodoMVP app

*** Test Cases ***
User can create and delete todo from list 
    User opens TodoMVP app
    User creates new TODO
    User deletes todo from lists
    User checks if list is empty


User can delete THE ONE
    User opens TodoMVP app
    User creates few new todos
    User creates THE ONE
    User creates few new todos
    Delete THE ONE todo

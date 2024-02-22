*** Settings ***
Resource   steps/UserSteps.robot 
Test Teardown  User close TodoMVP app


*** Test Cases ***
User can creates new TODO task
    User opens TodoMVP app
    User creates new TODO
    User checks if todo is created
 

User can create a few new todos
    User opens TodoMVP app
    User creates few new todos
    User check if few todos has been created
    

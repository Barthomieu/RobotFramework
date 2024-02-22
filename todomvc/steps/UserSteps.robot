*** Settings ***
Resource  ../pageobjects/NewTodoImputsPO.robot
Resource  ../pageobjects/TodoFiltersPagesPO.robot
Resource  ../pageobjects/TodoListPO.robot
Resource  ../pageobjects/ToDOMVCPO.robot
Resource  ../data/DATA_${DATA}.robot

*** Variables ***
#${New_task_name} =  Nowe zadanie 
#@{todos_list} =  todo1   todo2  todo3  todo3  todo4


*** Keywords ***
User opens TodoMVP app
    Open ToDoMVC app

User close TodoMVP app
    Close ToDoMVC app

User creates new TODO
    Setup todoName test Variable
    Enter todo name  ${New_task_name}
    Submit todo
    
User checks if todo is created
    Check if todo is on the list    ${New_task_name} 

User complete todo
    Complete todo

Chceck if todo is not on active list
    Go to Active filter
    Check if element is not on the list   ${New_task_name} 

Check if element is on completed list 
    Go to Completed filter
    Check if todo is on the list    ${New_task_name} 

User check if todo is completed
    Check if todo has status completed  


User creates few new todos
    Setup random todos list variable
    FOR  ${todo}  IN  @{todos_list}
        Enter todo name  ${todo}
        Submit todo
    END
    
    
User check if few todos has been created
    #FOR  ${todo}  IN  ${todos_list}
    #    Check if one of todos is on the list    ${todo}
    #END
    Check id all todos are on the list  @{todos_list}
    

User deletes todo from lists
    Delete todo from list


User checks if list is empty
    Check if list is empty

User creates THE ONE
    Enter todo name   THE ONE
    Submit todo
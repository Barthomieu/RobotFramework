*** Keywords ***

Setup todoName test Variable
    Set Test Variable   $New_task_name   Jestem tekstem statycznym 


Setup random todos list variable

    @{TodoList} =  Create List  todo1   todo2  todo3  todo3  todo4
    Set Test Variable  @todos_list  @{TodoList}
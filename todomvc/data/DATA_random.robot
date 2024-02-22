*** Settings ***
Library  FakerLibrary

*** Keywords ***

Setup todoName test Variable
    ${randomName} =   Catch Phrase
    Set Test Variable   $New_task_name   ${randomName}


Setup random todos list variable
    ${listElementCount} =  Random Int  min=1  max=5
    @{randomTodoList} =  Sentences  ${ListElementCount}
    Set Test Variable  @todos_list  @{randomTodoList}
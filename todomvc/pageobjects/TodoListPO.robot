*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String


*** Variables ***
${TODO_LIST} =  css:.todo-list
${TODO} =  css:#todo-list li
${FIRST_ELEM_ON_LIST}=  css:#todo-list li
${class_value} =  \ completed
${CLICK_TOOGLE} =  css:.toggle
${DELETE_BUTTON} =  css:.destroy
${DELETE_BUTTON_INDEX} =  css:#todo-list li:nth-child(<INDEX>) .destroy
${TODO_BY_INDEX} =  css:#todo-list li:nth-child(<INDEX>)


*** Keywords ***
Complete todo
    Click Element  ${CLICK_TOOGLE}

Check if todo is on the list 
    [Arguments]  ${name}
    Element Text Should Be  ${TODO_LIST}   ${name} 

Check if one of todos is on the list
    [Arguments]  ${name}
    Element Should Contain  ${TODO_LIST}   ${name} 

Check if element is not on the list 
    [Arguments]  ${name}
    Element Should Not Contain  ${TODO_LIST}   ${name} 

Check if todo has status completed
    Element Attribute Value Should Be  ${FIRST_ELEM_ON_LIST}  class  ${class_value}

Check id all todos are on the list
    [Arguments]  @{excpectedTodos}
    @{todosFromApp} =   Get list of all displayed todos
  
    Lists Should Be Equal  ${todosFromApp}   ${excpectedTodos}  ignore_order=True


Get list of all displayed todos
    @{todosFromApp} =   Create list
    #pobierz wsztstkie elementy z listy
    @{todos} =  Get WebElements   ${TODO} 
    #Przejdz przez te elementy i zapisz ich teskt na liście
    FOR  ${todo}  IN  @{todos}
        ${name} =  Get Text  ${todo}
        Append To List  ${todosFromApp}   ${name}
    END
    Return From Keyword  @{todosFromApp}




Delete todo from list 
    Mouse Over  ${TODO}
    Click Element  ${DELETE_BUTTON}
    

Delete THE ONE todo
    ${index} =  Find todo index by name  THE ONE
    Log   Dlete todo with index: ${index}   console=True
    ${index_str} =  Convert To String  ${index}
    ${todo} =  Replace String  ${TODO_BY_INDEX}   <INDEX>  ${index_str}
    ${delete} =  Replace String  ${DELETE_BUTTON_INDEX}   <INDEX>  ${index_str}

    Mouse Over  ${todo}
    Click Element  ${delete}


Find todo index by name
    [Arguments]  ${name}
    @{allTodos} =  Get list of all displayed todos
    ${index} =  Get Index From List  ${allTodos}  ${name}
    ${index} =  Evaluate  ${index} + 1 
    Return From Keyword  ${index}


Check if list is empty
    Element Should Not Be Visible  ${TODO_LIST} 

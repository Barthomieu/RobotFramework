*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Exercise 1
 
    Open Browser  https://qbek.github.io/selenium-exercises/pl/basic_form.html  firefox
    Input Text  css:#firstname  Bartlomiej
    Input Text  css:#lastname   Plata
    Input Text  css:#email  test@test.pl
    Click Element  css:.btn-success
    Element Text Should Be  css:#firstname-check  Bartlomiej
    Element Text Should Be  css:#lastname-check  Plata
    #Element Text Should Be  [value=email@example.com]   'test@test.pl'
    Element Attribute Value Should Be  css:.form-control-plaintext  value  test@test.pl
    Sleep  2s 
    Close Browser
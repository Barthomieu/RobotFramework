*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Exercise 2

    Open Browser  https://qbek.github.io/selenium-exercises/pl/check_boxes.html  firefox
    Click Element  css:[name="red"]
    Click Element  css:[name="blue"]
    Element Attribute Value Should Be   css:#light  data-color  \#FF00FF
    Sleep   2s
    Close Browser



Exercise 2b
    Open Browser  https://qbek.github.io/selenium-exercises/pl/check_boxes.html  firefox
    Click Element   css:.custom-control-label
    Element Should Be Enabled  css:#text
    sleep  2s
    Close Browser


Exercise 3
    Open Browser  https://qbek.github.io/selenium-exercises/pl/radio_buttons.html
    #Click Element  css:[value="rmffm"]  
    Select Radio Button  radio-select  rmffm
    Page Should Contain Link  css:#rmffm-details a  href  https://www.rmf.fm/
    Sleep  2s
    Close Browser

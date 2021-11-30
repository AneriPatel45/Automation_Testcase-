*** Settings ***
Documentation  Suite description 
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${Browser_Url}  https://www.phptravels.net/hotels


*** Keywords ***
Open My Browser
     Open Browser  ${Browser_Url}  ${Browser}
     Maximize Browser Window 

Close Browser
    sleep  5s
    Close All Browsers

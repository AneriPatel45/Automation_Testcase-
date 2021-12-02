*** Settings ***
Library  SeleniumLibrary
Library  Collections 
Suite Setup  Open My Browser
Suite Teardown  Close Browser
Resource  ../common_file/r1.robot

*** Variables ***
${Browser}
${Browser_Url}

*** Test Cases ***

Select city name
    Click Element  ${city_search}
    Input Text    ${input_name}  ${name}
    sleep  3s
    Click Element  ${name_click}

Select checkin date
    Click Element  ${calender_checkin}
    Execute Javascript  document.getElementById('checkin').value = '${checkin_date}'
    sleep  3s

Select checkout date
    Click Element  ${calender_checkout}
    Execute Javascript  document.getElementById('checkout').value = '${checkout_date}'
    sleep  3s

Select Travellers
    Click Element  ${travellers}

decrease rooms count
    Wait Until Page Contains Element  ${decrement_rooms}
    Click Element  ${decrement_rooms}

decrease adults count
    Wait Until Page Contains Element  ${dec_adults}
    double Click Element  ${dec_adults}
    
Select nationality
    Click Element  ${nationality}
    sleep  3s
    Click Element  ${nation_select}
    sleep  3s

Search results
    Click Element  ${search}

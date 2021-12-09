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

rooms count
    Execute Javascript  document.getElementById('rooms').value = '${rooms_count}'
    sleep  3s

adults count
    Execute Javascript  document.getElementById('adults').value = '${adults_count}'
    sleep  3s

childs count
    Execute Javascript  document.getElementById('childs').value = '${childs_count}'
    sleep  3s
    
Select nationality
    Click Element  ${nationality}
    sleep  3s
    Click Element  ${nation_select}
    sleep  3s
    
Search results
    Click Button  ${search}
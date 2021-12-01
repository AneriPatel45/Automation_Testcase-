*** Settings ***
Library  SeleniumLibrary
Library  Collections 
Suite Setup  Open My Browser
Suite Teardown  Close Browser
Resource  ../Resources/r1.robot
Variables  variables.py

*** Test Cases ***

Select city name 
    Wait Until Element Is Visible  id=select2-hotels_city-container
    Click Element  id=select2-hotels_city-container
    Input Text    ${input_name}  ${name}                # select city name as given (with three or more characters)
    sleep  3s
    Click Element  ${name_click}

Select checkin date 
    Click Element  id=checkin
    Execute Javascript  document.getElementById('checkin').value = '${checkin_date}'   # select valid checkin date
    sleep  3s

Select checkout date 
    Click Element  id=checkout 
    Execute Javascript  document.getElementById('checkout').value = '${checkout_date}'     # select valid checkout date
    sleep  3s


Select Travellers
    Wait Until Element Is Visible  ${travellers}
    Click Element  ${travellers}  # Click on travellers field 
    sleep  3s
    Click Element  ${inc_rooms}  # room count increment by one
    sleep  3s

    Click Element  ${inc_adults}   # adult count decrement 
    sleep  3s  
    
    Click Element  ${nationality}  # select nationality 
    sleep  3s 
    Click Element  ${nation_select} 
    sleep  3s

    Click Element  ${search}


    
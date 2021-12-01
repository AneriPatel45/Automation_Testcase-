*** Settings ***
Library  SeleniumLibrary
Library  Collections 
Suite Setup  Open My Browser
Suite Teardown  Close Browser
Resource  ../Resources/r1.robot
Variables  variables.py


*** Test Cases ***

Select city name 
    Click Element  id=select2-hotels_city-container
    Input Text    ${input_name}  ${two_char_name}            # select city name as given (with only two characters)
    sleep  3s
    Click Element  ${name_click}


Select checkin date 
    Click Element  id=checkin
    Execute Javascript  document.getElementById('checkin').value = '${checkin_date}'     # select valid checkin date 
    sleep  3s

Select checkout date 
    Click Element  id=checkout 
    Execute Javascript  document.getElementById('checkout').value = '${checkout_date}'    # select valid checkout date 
    sleep  3s


Select Travellers
    Click Element  //*[@id="hotels-search"]/div/div/div[3]/div/div/div/a  # Click on travellers field 
    sleep  3s
    Click Element  ${dec_rooms}  # room count 
    sleep  3s

    double Click Element  ${adults}   # adult count 
    sleep  3s  
    
    Click Element  ${nationality}  # select nationality 
    sleep  3s 
    Click Element  ${nation_select} 
    sleep  3s

    Click Element  ${search}
    
    
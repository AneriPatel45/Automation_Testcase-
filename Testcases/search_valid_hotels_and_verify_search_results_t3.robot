*** Settings ***
Library  SeleniumLibrary
Library  Collections 
Suite Setup  Open My Browser
Suite Teardown  Close Browser
Resource  ../Resources/r1.robot

*** Variables ***
${name}  Ahmedabad 
${input_name}  xpath://body/span[1]/span[1]/span[1]/input[1]
${name_click}  xpath://body/span[1]/span[1]/span[2]/ul[1]/li[1]
${cal}  xpath:/html[1]/body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[5]/td[7] 
${cal_click}  xpath://body[1]/div[2]/div[1]/table[1]/tbody[1]/tr[5]/td[5]
${checkin_date}  08/01/2022
${checkout_date}  04/05/2022
${rooms}  xpath=//*[@id="hotels-search"]/div/div/div[3]/div/div/div/div/div[1]/div/div/div[3]

${adults}  xpath://*[@id="hotels-search"]/div/div/div[3]/div/div/div/div/div[2]/div/div/div[1]
${nationality}  xpath://*[@id="nationality"]

${nation_select}  xpath=//select[@id="nationality"]/option[text()="Iraq"]
${search}  xpath=//button[@id='submit']

*** Test Cases ***

Select city name 
    Click Element  id=select2-hotels_city-container
    Input Text    ${input_name}  ${name}            # select city name as given (with three or more characters)
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
    Click Element  ${rooms}  # room count increament by one  
    sleep  3s

    double Click Element  ${adults}   # adult count 
    sleep  3s  
    
    Click Element  ${nationality}  # select nationality 
    sleep  3s 
    Click Element  ${nation_select} 
    sleep  3s

    Click Element  ${search}
    
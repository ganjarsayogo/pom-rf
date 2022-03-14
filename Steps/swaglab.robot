*** Settings ***
Resource        ../Resources/login_page_keywords.robot
Suite Setup     Open Browser Chrome
Suite Teardown  Close Browser

*** Test Cases ***
Login with invalid username and invalid password
    Go To SwagLab Page
    Input Invalid Username
    Input Invalid Password
    Click Login Button
    Show Error Not Found User Message

Login with valid username and valid password
    Go To SwagLab Page
    Input Valid Username
    Input Valid Password
    Click Login Button
    Show Dashboard

Login with valid username and invalid password
    Go To SwagLab Page
    Input Valid Username
    Input Invalid Password
    Click Login Button
    Show Error Not Found User Message 

Login with invalid username and valid password
    Go To SwagLab Page
    Input Invalid Username
    Input Valid Password
    Click Login Button
    Show Error Not Found User Message 

Login without fill in username and password
    Go To SwagLab Page
    Click Login Button
    Show Error Username Message 

Login with valid username but without password
    Go To SwagLab Page
    Input Valid Username
    Click Login Button
    Show Error Password Message 
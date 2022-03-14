*** Settings ***
Library                             SeleniumLibrary
Variables                           ../Resources/swag_locator.yml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go To SwagLab Page
    Go To                           https://saucedemo.com/

Input Valid Username
    Input Text                      //input[@id="user-name"]    standard_user

Input Invalid Username
    Input Text                      //input[@id="user-name"]    ganjar

Input Valid Password
    Input Text                      //input[@id="password"]     secret_sauce

Input Invalid Password
    Input Text                      //input[@id="password"]     ganjar

Click Login Button
    Click Element                   //input[@id="login-button"]

Show Dashboard
    Element Text Should Be          //span[@class="title"]      PRODUCTS

Show Error Not Found User Message
    Element Text Should Be          //div[@class="error-message-container error"]        Epic sadface: Username and password do not match any user in this service

Show Error Username Message 
    Element Text Should Be          //div[@class="error-message-container error"]        Epic sadface: Username is required

Show Error Password Message 
    Element Text Should Be          //div[@class="error-message-container error"]        Epic sadface: Password is required
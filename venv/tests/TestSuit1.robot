*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     os

*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}  Admin   admin123
&{LOGINDATA}    username=Admin  password=admin123
*** Test Cases ***
#MyFirstTest
    #Open Browser   https:google.com     chrome
    #Input Text     name = "csi"         Automation step-by-step
    #Close Browser

SampleLoginTest
    [Documentation]   This is a sample loging test
    Open Browser        ${URL}      chrome
    Set Browser Implicit Wait   5
    LoginKW
    Click Element       id=welcome
    Click Element       link=Logout
    Close Browser
    Log                 Test completed
    Log                 Test done by %{USER}

*** Keywords ***
LoginKW
    Input Text          id=txtUsername      &{LOGINDATA}[username]
    Input Password      id=txtPassword      &{LOGINDATA}[password]
    Click Button        id=btnLogin
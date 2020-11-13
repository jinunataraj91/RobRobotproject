*** Settings ***
Documentation    Suite description
Library     SeleniumLibrary
Library     os
Default Tags    sanity
*** Variables ***
${URL}      https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}  Admin   admin123
&{LOGINDATA}    username=Admin  password=admin123
*** Test Cases ***
MyFirstTest
    [Tags]    smoke
    Log   This is my first test
MySecondTest
    Log   This is my second test
    Set Tags     regression1
    Remove Tags     regression1
MyThirdTest
    Log    This is my third test



*** Keywords ***
LoginKW
    Input Text          id=txtUsername      &{LOGINDATA}[username]
    Input Password      id=txtPassword      &{LOGINDATA}[password]
    Click Button        id=btnLogin
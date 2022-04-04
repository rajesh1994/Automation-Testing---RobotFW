*** Settings ***
Documentation   Simple example using SeleniumLibrary.
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
This is sample test case
    [documentation]     Google test
    [tags]  Regression
    Open Browser    https://google.com  ff
    close browser

*** Keywords ***
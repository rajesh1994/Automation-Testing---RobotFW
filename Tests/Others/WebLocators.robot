*** Settings ***
Documentation    Test suite to check web elements
Library     SeleniumLibrary
#Suite Teardown  close all browsers
Test Setup      open browser    https://www.ebay.com/   gc
Test Teardown   close all browsers

*** Test Cases ***
Test case to check "id" based web elements in robot framework
    [Tags]    Webelements
    [Documentation]     This sample test case to demonstrate "id" web element in robot framework
    maximize browser window
    input text  id:gh-ac   mobile  clear=True
    click element   id:gh-btn
    page should contain     results for mobile      loglevel='WARN

Test case to check "name" based web elements in robot framework
    [Tags]    Webelements
    [Documentation]     This sample test case to demonstrate "name" web element in robot framework
    maximize browser window
    input text  name:_nkw   books  clear=True
    click element   id:gh-btn
    page should contain     results for books      loglevel='WARN

Test case to check "link" based web elements in robot framework
    [Tags]    Webelements
    [Documentation]     This sample test case to demonstrate "link" web element in robot framework
    maximize browser window
    mouse over  link:Sell
    sleep   3s
    click link  link:Sell
    sleep   3s

Test case to check "partial link" based web elements in robot framework
    [Tags]    Webelements
    [Documentation]     This sample test case to demonstrate "partial link" web element in robot framework
    maximize browser window
    mouse over  partial link:Security
    sleep   3s
    click link  partial link:Security
    sleep   3s
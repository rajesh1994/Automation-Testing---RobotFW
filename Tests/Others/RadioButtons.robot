*** Settings ***
Documentation    Test suite to demonstrate radio button elements keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***
${BMWRadioButton}=     //input[@id="bmwradio"]
${BenzRadioButton}=     //input[@id="benzradio" and @name="cars"]
${HondaRadioButton}=     //input[@id="hondaradio"]
${InvalidRadioButton}=     //input[@id="audiradio"]

*** Test Cases ***
Test case to demonstrate radio button elements keywords in robot framework
    [Tags]    radio_button
    [Documentation]     Test case to demonstrate radio button elements keywords in robot framework
    open browser    https://courses.letskodeit.com/practice   chrome  alias=b1
	maximize browser window
	Sleep   2s

	page should contain radio button    xpath:${BMWRadioButton}
	radio button should not be selected     cars
	select radio button     cars    bmw
	radio button should be set to   cars    bmw
	Sleep   5s

	page should contain radio button    xpath:${BenzRadioButton}
	select radio button      cars    benz
	radio button should be set to   cars    benz
	Sleep   5s

	page should contain radio button    xpath:${BenzRadioButton}
	select radio button      cars    honda
	radio button should be set to   cars    honda
	Sleep   5s
	close window
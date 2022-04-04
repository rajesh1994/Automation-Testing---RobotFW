*** Settings ***
Documentation    Test suite to demonstrate radio button elements keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***
${BMWCheckBox}=     //input[@id='bmwcheck']
${BenzCheckBox}=     //input[@id='benzcheck']
${HondaCheckBox}=     //input[@id='hondacheck']

*** Test Cases ***
Test case to demonstrate radio button elements keywords in robot framework
    [Tags]    radio_button
    [Documentation]     Test case to demonstrate radio button elements keywords in robot framework
    open browser    https://courses.letskodeit.com/practice   chrome  alias=b1
	maximize browser window
	Sleep   2s

	page should contain checkbox    ${BMWCheckBox}
	checkbox should not be selected     ${BMWCheckBox}
	select checkbox     ${BMWCheckBox}
	Sleep   3s
	checkbox should be selected     ${BMWCheckBox}
	unselect checkbox   ${BMWCheckBox}
	Sleep   3s
	checkbox should not be selected     ${BMWCheckBox}
	
	page should contain checkbox    ${BenzCheckBox}
	checkbox should not be selected     ${BenzCheckBox}
	select checkbox     ${BenzCheckBox}
	Sleep   3s
	checkbox should be selected     ${BenzCheckBox}
	unselect checkbox   ${BenzCheckBox}
	Sleep   3s
	checkbox should not be selected     ${BenzCheckBox}
	
	page should contain checkbox    ${HondaCheckBox}
	checkbox should not be selected     ${HondaCheckBox}
	select checkbox     ${HondaCheckBox}
	Sleep   3s
	checkbox should be selected     ${HondaCheckBox}
	unselect checkbox   ${HondaCheckBox}
	Sleep   3s
	checkbox should not be selected     ${HondaCheckBox}
	close window
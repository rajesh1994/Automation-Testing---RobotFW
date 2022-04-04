*** Settings ***
Documentation    Test suite to demonstrate iframe keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***
${Frame}=     //iframe[@id='courses-iframe']

*** Test Cases ***
Test case to demonstrate iframe keywords in robot framework
    [Tags]    iframe
    [Documentation]     Test case to demonstrate iframe keywords in robot framework
    open browser    https://courses.letskodeit.com/practice   chrome  alias=b1
	maximize browser window
	Sleep   2s

	scroll element into view    ${Frame}
	select frame    ${Frame}
	current frame should contain    JavaScript for beginners
	current frame should not contain    Chemical
	unselect frame
	frame should contain    ${Frame}    JavaScript for beginners
	close window
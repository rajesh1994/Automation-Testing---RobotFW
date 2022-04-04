*** Settings ***
Documentation    Test suite to demonstrate window operation keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***

*** Test Cases ***
Test case to demonstrate window operation keywords in robot framework
    [Tags]    Window_operations
    [Documentation]     Test case to demonstrate window operation keywords in robot framework
	open browser    https://testersdock.com/switch-between-browser-windows-robot-framework/   chrome  alias=b1
	maximize browser window
	Sleep   4s
	wait until page contains   All Robot Framework Articles
	click element   xpath://a[contains(text(),'https://testersdock.com/robot-framework-tutorial/')]

	@{WindowHandles}=   get window handles
	Sleep   4s

	@{WindowIdentifier}=    get window identifiers
	Sleep   4s

	@{WindowNames}=     get window names
	Sleep   4s

	@{WindowTitles}=    get window titles
	Sleep   4s

	set window position     100     200
	${x}    ${y}=   get window position
	Log     ${x}
	Log     ${y}
	Sleep   4s

	set window size     800     600
	${width}    ${height}=  get window size
	log     ${width}
	log     ${height}
	Sleep   4s

	switch window   ${WindowHandles}[0]
	log     ${WindowHandles}[0]
	Sleep   4s

	switch window   ${WindowHandles}[0]
	log     ${WindowHandles}[0]
	close window
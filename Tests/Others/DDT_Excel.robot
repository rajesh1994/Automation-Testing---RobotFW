*** Settings ***
Documentation  DDT approach using builtin keywords
Library  SeleniumLibrary
Resource  ../../Resources/DDT/common.robot
Library  DataDriver  file=/home/stsch0219/PycharmProjects/Automation-Testing-With-Robot-Framew/TestData/TestData.xlsx   sheet_name=TestData

Suite Setup     common.Start testcase
Suite Teardown  common.Finish testcase
Test Template   Various login scenarios

*** Test Cases ***
Verify login with invalid scenarios     ${username}     ${password}     ${actual_error_msg}

*** Keywords ***
Various login scenarios
	[Arguments]  ${username}    ${password}     ${expected_error_msg}
	input text  ${textbox_username}     ${username}     clear:True
	input text  ${txtbox_password}      ${username}     clear:True
	click button    ${login_button}
	wait until page contains element    ${actual_error_msg}
	element should contain  ${actual_error_msg}    ${expected_error_msg}
	Sleep  5s
	reload page
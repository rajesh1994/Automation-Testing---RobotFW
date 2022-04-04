*** Settings ***
Documentation  DDT approach using builtin keywords
Library  SeleniumLibrary
Resource  ../../Resources/DDT/common.robot

Suite Setup     common.Start testcase
Suite Teardown  common.Finish testcase
Test Template   Various login scenarios

*** Test Cases ***                      USERNAME          PASSWORD        ERROR MESSAGE
Empty User Name and Password            ${EMPTY}          ${EMPTY}        Epic sadface: Username is required
Empty User Name and Valid Password      ${EMPTY}          secret_sauce    Epic sadface: Username is required
Valid Username and Empty Password       standard_user     ${EMPTY}        Epic sadface: Username and password do not match any user in this service
Invalid User Name and Valid Password    standard_u        secret_sauce    Epic sadface: Username and password do not match any user in this service
Valid Username and Invalid Password     standard_user     secret_sas      Epic sadface: Username and password do not match any user in this service
Invalid Username and Invalid User Name  standard_us       secret_sas      Epic sadface: Username and password do not match any user in this service

*** Keywords ***
Various login scenarios
	[Arguments]  ${username}    ${password}     ${text_error}
	input text  ${textbox_username}     ${username}     clear:True
	input text  ${txtbox_password}      ${username}     clear:True
	click button    ${login_button}
	wait until page contains element    ${error_msg}
	element should contain  ${error_msg}    ${text_error}
	Sleep  5s
	reload page
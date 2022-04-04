*** Settings ***
Documentation    Test suite to demonstrate alerts keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***
${InputText}=   xpath://input[@name="enter-name"]
${AlertButton}=     xpath://input[@id='alertbtn']
${ConfirmButton}=   xpath://input[@id='confirmbtn']

*** Test Cases ***
Test case to demonstrate alerts keywords in robot framework
    [Tags]    alerts
    [Documentation]     Test case to demonstrate alerts keywords in robot framework
    open browser    https://courses.letskodeit.com/practice   chrome  alias=b1
	maximize browser window
	Sleep   3s

	input text  ${InputText}    Vikram  clear=True
	Sleep   5s
	click button    ${AlertButton}
	alert should be present     Hello Vikram, share this practice page and share your knowledge
	Sleep   5s
	alert should not be present

	input text  ${InputText}    Vijay  clear=True
	Sleep   5s
	click button    ${ConfirmButton}
	alert should be present     Hello Vijay, Are you sure you want to confirm?  DISMISS
	Sleep   5s

	input text  ${InputText}    Vignesh  clear=True
	Sleep   5s
	click button    ${ConfirmButton}
	alert should be present     Hello Vignesh, Are you sure you want to confirm?  LEAVE
	Sleep   5s
	alert should be present     Hello Vignesh, Are you sure you want to confirm?  ACCEPT
	Sleep   5s

	input text  ${InputText}    Vikram  clear=True
	Sleep   5s
	click button    ${ConfirmButton}
	handle alert    ACCEPT
	Sleep   5s

	input text  ${InputText}    Vijay  clear=True
	Sleep   5s
	click button    ${ConfirmButton}
	handle alert    DISMISS
	Sleep   5s

	input text  ${InputText}    Dev  clear=True
	Sleep   5s
	click button    ${ConfirmButton}
	handle alert    LEAVE
	Sleep   5s
	handle alert    ACCEPT
	Sleep   5s
	close window
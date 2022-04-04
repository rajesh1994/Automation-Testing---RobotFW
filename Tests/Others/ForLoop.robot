*** Settings ***
Documentation    Test suite to demonstrate alerts keywords in robot framework
Library     SeleniumLibrary
Library    Collections
Test Teardown   close all browsers

*** Variables ***
${LoginPanel}=   xpath://div[@id='logInPanelHeading']
${Login}=     xpath://input[@id='txtUsername']
${Password}=   xpath://input[@id='txtPassword']
${LoginButton}=     xpath://input[@id='btnLogin']
${welcome}=     xpath://a[@id='welcome']
${quicklaunch}=     css:div.quickLaunge
@{quickLaunchList}  Assign Leave  Leave List  Timesheets  Apply Leave  My Leave  My Timesheet

*** Test Cases ***
Test case to demonstrate alerts keywords in robot framework
    [Tags]    for loop
    [Documentation]     Test case to demonstrate for loop keywords in robot framework
    open browser     https://opensource-demo.orangehrmlive.com/   chrome  alias=b1
	maximize browser window
	wait until page contains element    ${LoginPanel}
	input text      ${Login}    Admin
	input text      ${Password}    admin123
	click button    ${LoginButton}
	page should contain element     ${welcome}
	@{ElementList}  get webelements     ${quicklaunch}
	@{TextList}     create list
	FOR     ${Element}  IN  @{ElementList}
			${Text}  get text  ${Element}
			append to list      ${TextList}     ${Text}
	END
	log to console  \n  list from webpage:
	log to console  ${TextList}
	log to console  Our List:
	log to console  ${QuickLaunchList}
	lists should be equal    ${QuickLaunchList}  ${TextList}
	close window
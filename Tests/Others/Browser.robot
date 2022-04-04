*** Settings ***
Documentation    Test suite to demonstrate browser operation keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***

*** Test Cases ***
Test case to demonstrate browser operation keywords in robot framework
    [Tags]    Brower operations
    [Documentation]     Test case to demonstrate browser operation keywords in robot framework
	open browser    http://google.com   chrome  alias=b1
	maximize browser window
	open browser    about:blank     ff  alias=b2
	&{alias}    get browser aliases
	log     ${alias}[b1]
	@{browser_ids}      get browser ids
	log     ${browser_ids}[1]
	switch browser  1
	Sleep       5s
	input text  name:q  Sun flower  clear=True
	Sleep       5s
	switch browser  ${browser_ids}[1]
	go to   https://www.salesforce.com/in/
	Sleep       5s
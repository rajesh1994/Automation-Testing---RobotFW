*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Search Funtionality
	input text  xpath://input[@id='gh-ac']    mobile  clear=True
	click button  xpath://input[@type='submit']
	page should contain  results for mobile     debug

Filter Results By Brand
	click element   xpath://input[@class='checkbox__control' and @aria-label='Samsung']
	click element   xpath://input[@class='checkbox__control' and @aria-label='Apple']
	sleep   3
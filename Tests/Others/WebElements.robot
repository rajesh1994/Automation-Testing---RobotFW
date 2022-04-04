*** Settings ***
Documentation    Test suite to demonstrate browser window elements keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***

*** Test Cases ***
Test case to demonstrate browser window elements keywords in robot framework
    [Tags]    Window_operations
    [Documentation]     Test case to demonstrate browser window elements keywords in robot framework
    open browser    https://testersdock.com/switch-between-browser-windows-robot-framework/   chrome  alias=b1
	maximize browser window
	Sleep   4s

	${Attribute}=   get element attribute   xpath://h1[contains(text(),'How to switch between')]  class
	${Count}=   get element count   xpath://h1[contains(text(),'How to switch between')]
	${Width}    ${Height}=  get element size  xpath://h1[contains(text(),'How to switch between')]
	@{WebElements}=     get webelements     xpath://a[contains(text(),'https://testersdock.com/robot-framework-tutorial/')]

	capture element screenshot  xpath://h1[contains(text(),'How to switch between multiple Browser Windows')]   filename=webpage_title.png

	assign id to element    xpath://h1[contains(text(),'How to switch between')]  title
	page should contain element     title
	element should be visible   xpath://h1[contains(text(),'How to switch between')]

	go to   https://www.google.com/
	input text  name:q  cypress     clear=True
	clear element text  name:q
	cover element   name:q
	element attribute value should be   name:btnK   value   Google Search
	element should be enabled   name:btnK
	element should contain  class:pHiOh     Abo
	element should not contain  class:pHiOh     Cypress
	element text should be  class:pHiOh  About
	element text should not be  class:pHiOh     Google
	double click element    class:pHiOh
	close window
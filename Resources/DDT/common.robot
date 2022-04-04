*** Settings ***
Documentation    Common test suite setup and suite teardown
Library     SeleniumLibrary
Resource  ../../TestData/ConfigData.robot

*** Keywords ***
Start testcase
	open browser    ${url}      ${browser}
	maximize browser window
	Sleep  2s

Finish testcase
	close browser
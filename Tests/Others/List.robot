*** Settings ***
Documentation    Test suite to demonstrate list elements keywords in robot framework
Library     SeleniumLibrary
Test Teardown   close all browsers

*** Variables ***
${List}=     //select[@id='carselect']
${MultipleSelectionList}=    //select[@id='multiple-select-example']

*** Test Cases ***
Test case to demonstrate list elements keywords in robot framework
    [Tags]    list
    [Documentation]     Test case to demonstrate list elements keywords in robot framework
    open browser    https://courses.letskodeit.com/practice   chrome  alias=b1
	maximize browser window
	Sleep   2s

	page should contain list    ${MultipleSelectionList}
	list should have no selections  ${MultipleSelectionList}
	select all from list    ${MultipleSelectionList}
	get list items  ${MultipleSelectionList}
	get selected list label     ${MultipleSelectionList}
	get selected list value     ${MultipleSelectionList}
	get selected list labels    ${MultipleSelectionList}
	get selected list values    ${MultipleSelectionList}
	Sleep   3s
	unselect all from list  ${MultipleSelectionList}
	
	page should contain list    ${MultipleSelectionList}
	select from list by value   ${MultipleSelectionList}     apple
	list selection should be    ${MultipleSelectionList}     Apple
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	unselect from list by value     ${MultipleSelectionList}     apple
	Sleep   3s
	select from list by value   ${MultipleSelectionList}     orange
	list selection should be    ${MultipleSelectionList}     Orange
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	unselect from list by value     ${MultipleSelectionList}     orange
	Sleep   3s
	select from list by value   ${MultipleSelectionList}     peach
	list selection should be    ${MultipleSelectionList}     Peach
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	unselect from list by value     ${MultipleSelectionList}     peach
	Sleep   3s

	select from list by label   ${MultipleSelectionList}     Apple
	list selection should be    ${MultipleSelectionList}     Apple
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	Sleep   3s
	select from list by label   ${MultipleSelectionList}     Orange
	list selection should be    ${MultipleSelectionList}     Apple  Orange
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	Sleep   3s
	select from list by label   ${MultipleSelectionList}     Peach
	list selection should be    ${MultipleSelectionList}     Apple  Orange  Peach
	get selected list value     ${MultipleSelectionList}
	get selected list label    ${MultipleSelectionList}
	unselect from list by value     ${MultipleSelectionList}     peach  orange  apple
	Sleep   3s

	page should contain list    ${List}
	select from list by value   ${List}    bmw
	list selection should be    ${List}    BMW
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s
	select from list by value   ${List}    benz
	list selection should be    ${List}    Benz
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s
	select from list by value   ${List}    honda
	list selection should be    ${List}    Honda
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s

	select from list by label   ${List}    BMW
	list selection should be    ${List}    BMW
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s
	select from list by label   ${List}    Benz
	list selection should be    ${List}    Benz
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s
	select from list by label   ${List}    Honda
	list selection should be    ${List}    Honda
	get selected list value     ${List}
	get selected list label    ${List}
	Sleep   3s
	close window
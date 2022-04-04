*** Settings ***
Library     SeleniumLibrary
Variables   ../Webelements.py

*** Variables ***

*** Keywords ***
Select the shopping categories as "Fitness Tech" from "Sports"
	mouse over      ${sports_category}
	sleep           3
	click element   ${fitness_tech}
	sleep           3
	element should contain  ${fitness_gadget_text}    Fitness Gadgets
	sleep           3

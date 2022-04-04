*** Settings ***
Library     SeleniumLibrary
Resource    ./HeaderPage.robot
Variables   ../Webelements.py

*** Variables ***
${search_result}    results for

*** Keywords ***
Select a product condition
	click element   ${product_condition_button}
	sleep           3
	click element   ${product_condition_new}

Select a brand
	sleep           3
	click element      ${brand}

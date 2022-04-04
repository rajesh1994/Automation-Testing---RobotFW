*** Settings ***
Library     SeleniumLibrary
Variables   ../Webelements.py
*** Variables ***
#${search_text}    mobile
@{search_texts}     mobile  robot   books   tablet  laptop
*** Keywords ***
Input Search Text and Click Search
	input text  ${search_box}   ${search_texts}[2]  clear=True
	click element   ${submit_button}
	page should contain     ${search_result} ${search_texts}[2]

Verify "Advanced Search" functionality
	click element   ${advanced_search_button}

Search for another text
	input text  ${search_box}   ${search_texts}[4]  clear=True
	click element   ${submit_button}
	page should contain     ${search_result} ${search_texts}[4]
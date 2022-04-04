*** Settings ***
Documentation   eBay Website Functionality Testing
Library     AutoRecorder   mode=suite,test  name=testing   fps=24  monitor=0
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot
Resource  ../../Resources/PageObject/HeaderPage.robot
Resource  ../../Resources/PageObject/LandingPage.robot
Resource  ../../Resources/PageObject/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start Testcase
Test Teardown   CommonFunctionality.Finish Testcase
*** Variables ***

*** Test Cases ***
Verify the basic search functionality
	[documentation]  This test case to verifies basic search functionality
	[tags]  Functional

	HeaderPage.Input Search Text and Click Search
	SearchResultsPage.Select a product condition
	SearchResultsPage.Select a brand

Verify "Advanced Search" functionality
	[documentation]  This test case to verifies advanced search functionality
	[tags]  Functional
	HeaderPage.Verify "Advanced Search" functionality

Select the particular shopping category
	[documentation]  This test case verifies shopping category functionality
	[tags]  Functional
	LandingPage.Select the shopping categories as "Fitness Tech" from "Sports"

Verify the basic search functionality with another query
	[documentation]  This test case verifies basic search functionality
	[tags]  Functional
	HeaderPage.Search For Another Text

Search for another text
	[documentation]  This test case verifies basic search functionality for another query
	[tags]  Functional
	HeaderPage.Search for another text


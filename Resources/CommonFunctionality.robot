*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${env}  ebay
&{url}      ebay=https://www.ebay.com/  flipkart=https://www.flipkart.com/  amazon=https://www.amazon.in/

*** Keywords ***
Start Testcase
	open browser    ${url.${env}}     ff
	maximize browser window

Finish Testcase
	close browser
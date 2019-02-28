*** Settings ***
Library  Selenium2Library

*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate to
    go to  ${URL}
Validate page loading
    wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

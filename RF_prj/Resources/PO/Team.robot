*** Settings ***
Library  Selenium2Library

*** Variables ***
${TEAM_LABEL} =  xpath:(//h2[@class='section-heading'])[4]

*** Keywords ***
Navigate to
    go to  ${URL}

Validate page is loaded
    wait until page contains element  ${TEAM_LABEL}

Validate page content matching
    ${TeamText} =  get text  ${TEAM_LABEL}
    should be equal as strings  ${TeamText}  Our Amazing Team  ignore_case=true

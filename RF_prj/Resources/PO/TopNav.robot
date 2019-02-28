*** Settings ***
Library  Selenium2Selenium

*** Keywords ***
Select "Team" page
    click element  xpath://a[@href='#team']

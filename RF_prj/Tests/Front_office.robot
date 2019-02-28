*** Settings ***
Documentation  Documentation text
Resource  ../Resources/CommonWeb po.robot
Resource  ../Resources/FrontOfficeApp po.robot

Test Setup  Begin test
#Test Teardown  End test

# robot -d results tests/Front_office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  Test1 documentation
    [Tags]  test1
    FrontOfficeApp po.Go to landing page
    FrontOfficeApp po.Go to Team page


"Team" page should be match
    [Documentation]  Test2 documentation
    [Tags]  test2
    FrontOfficeApp po.Go to landing page
    FrontOfficeApp po.Go to Team page
    FrontOfficeApp po.Validate Team page content loaded


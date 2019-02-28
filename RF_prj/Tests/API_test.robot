*** Settings ***
Resource  ../Resources/API/API po.robot

*** Variables ***



*** Test Cases ***
Make REST API call
    [Tags]  API
    Check github name


Display emodji from github
    [Tags]   API
    Display emodji


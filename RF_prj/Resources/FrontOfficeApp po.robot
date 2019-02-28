*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot

*** Variables ***


*** Keywords ***
Go to landing page
    Landing.Navigate to
    Landing.Validate page loading
Go to Team page
    TopNav.Select "Team" page
    Team.Validate page is loaded

Validate Team page content loaded
    Team.Validate page content matching

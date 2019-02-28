*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin test
    open browser  about:blank  ${BROWSER}
    maximize browser window

End test
    close all browsers
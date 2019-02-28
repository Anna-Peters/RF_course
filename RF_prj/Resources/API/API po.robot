*** Settings ***
Library  Selenium2Library
Library  RequestsLibrary
Library  Collections


*** Keywords ***
Check github name
    create session  github_session  http://api.github.com
    ${response} =  get request  github_session  /users/robotframework
    should be equal as strings  ${response.status_code}  200

    ${json}  set variable  ${response.json()}
    should be equal as strings  ${json['login']}  robotframework
    log  ${response}
    log  ${response.json()}
    log  ${response.status_code}



Display emodji
    create session  github_session  http://api.github.com
    ${response} =  get request  github_session  emojis
    log  ${response}
    should be equal as strings  ${response.status_code}  200

    ${json} =  set variable  ${response.json()}
    ${emoji_url} =  set variable  ${json['aerial_tramway']}
    open browser  ${emoji_url}  chrome
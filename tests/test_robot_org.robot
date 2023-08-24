
*** Settings ***
Library  RequestsLibrary

*** Test Cases ***

Test API Should Be Available
    ${response}=  GET  https://robotframework.org
    Status Should Be  200  ${response}
    Should Be Equal As Strings  OK  ${response.reason}

#Test Checking Availability When Submitting tab
#    ${response}=  GET  https://robotframework.org/?tab=0
#    Status Should Be  200  ${response}
#    Should Be Equal As Strings  OK  ${response.reason}


Test RunRobot.py Availability
    ${response}=  GET  https://robotframework.org/pyworker/runRobot.py
    Status Should Be  200  ${response}
    Should Be Equal As Strings  OK  ${response.reason}


Test PyWorker.js Availability
    ${response}=  GET  https://robotframework.org/pyworker/py_worker.js
    Status Should Be  200  ${response}
    Should Be Equal As Strings  OK  ${response.reason}







#Test robot.run Entry Point
#    ${status}=  Run Keyword And Return Status  Import Library  robot.api  WITH NAME  api
#    Should Be True  ${status}
#
#Test robot.rebot Entry Point
#    ${status}=  Run Keyword And Return Status  Import Library  robot.api  WITH NAME  api
#    Should Be True  ${status}
#
#Test robot.libdoc Entry Point
#    ${status}=  Run Keyword And Return Status  Import Library  robot.api  WITH NAME  api
#    Should Be True  ${status}





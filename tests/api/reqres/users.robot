*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

*** Test Cases ***
reqres.in/api/users?page=2 total pages should be 2
    ${response}=    GET    https://reqres.in/api/users    params=page=2
    Should Be Equal As Strings    2      ${response.json()}[total_pages]
    
reqres.in/api/users?page=2 status should be 200
    ${response}=    GET    https://reqres.in/api/users    params=page=2    expected_status=200    

 
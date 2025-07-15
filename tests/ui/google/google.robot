*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Url}    https://www.bing.com 
${BROWSER}    chrome

*** Test Cases ***
ค้นหา คำค้น และตรวจสอบผลการค้นหา
    เข้า Google
    ใส่คำค้นหา ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา ต้องพบ ข้าวหมูทอดเฮียวงศ์

*** Keywords ***
เข้า Google
    Open Browser   url=${Url}   browser=${BROWSER}

ใส่คำค้นหา ข้าวหมูทอด เฮียวงศ์วงเวียนใหญ่
    Input Text    name=q    ข้าวหมูทอด เฮียวงศ์วงเวียนใหญ่

กดปุ่ม Enter
    Press Keys    None    RETURN

ตรวจสอบผลการค้นหา ต้องพบ ข้าวหมูทอด เฮียวงศ์ 
    Wait Until Page Contains    ข้าวหมูทอด เฮียวงศ์

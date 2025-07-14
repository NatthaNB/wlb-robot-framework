*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Testcases ***
ค้นหา คำค้น และตรวจสอบผลการค้นหา
    เข้า Google
    ใส่คำค้นหา ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่
    กดปุ่ม Enter 
    ตรวจสอบผลการค้นหา ต้องพบ ข้าวหมูทอด เฮียวงศ์ วงเวียนใหญ่
*** Keywords ***
เข้า Google
    Open Browser   url = https://www.google.com    browser=chrome

ใส่คำค้นหา ข้าวหมูทอดเฮียวงศ์วงเวียนใหญ่


กดปุ่ม Enter


ตรวจสอบผลการค้นหา ต้องพบ ข้าวหมูทอด เฮียวงศ์ วงเวียนใหญ่

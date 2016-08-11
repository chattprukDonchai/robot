*** setting ***
Library    Selenium2Library

Resource    UI/google.robot
#กรอกข้อมูลที่จะค้นหาวิธีปราบเมีย
#${keyword-Searching} ใครมีวิธีปรามเมียมั่งครับ
    # [Arguments]    ${keyword-Search}
    # Input text    lst-ib    ${keyword-Search}
    # Press key    lst-ib    \\13
*** Testcase ***
I want to Search วิธีปราบเมีย
    Search google    วิธีปราบเมีย    ใครมีวิธีปราบเมียมั่งครับ
I want to Search ปันปัน
    Search google    ปันปัน    น้ำชา
#    เปิดบราว์เซอร์ เข้าระบบERP
#    กรอกusername
#    กรอกpassword
#    เลือกตำแหน่ง
#    คลิกปุ่มlogin

    # Open Browser https://www.google.com gc
    # Search mthai
*** keyword ***
Search google
    [Arguments]    ${keywordToSearch}    ${expecResultText}
    Open Browser    ${URL}
    Input text    ${textboxSearchGoogle}    ${keywordToSearch}
    click button    ${buttonSearchGoogle}
    wait until page contains    ${expecResultText}
    close browser
#เปิดบราว์เซอร์ เข้าระบบERP
#    Open Browser    http://127.0.0.1
#กรอกusername
#    Input text    myusername    บัญญัติ
#กรอกpassword
#    Input text    mypassword    1
#เลือกตำแหน่ง
#    Select From List By Value   s_position_code    SSV304201
#คลิกปุ่มlogin

#เปิดบราว์เซอร์ google
#    Open Browser    S{URL}

    #Searching    ใครมีวิธีปรามเมียมั่งครับ
#กรอกข้อมูลที่จะค้นหาวิธีปราบเมีย
#    Input text    ${textboxSearchGoogle}    ใครมีวิธีปรามเมียมั่งครับ
#กดปุ่มค้นหา
#    click button    ${buttonSearchGoogle}
#แสดงข้อมูลที่ต้องการค้นหา "ใครมีวิธีปรามเมียมั่งครับ"
#    wait until page contains    ใครมีวิธีปรามเมียมั่งครับ
#เปิดบราว์เซอร์
#    close browser

# Searching
#      [Arguments]    ${keyword-Searching}
#      Input text    lst-ib    ${keyword-Searching}
#      Press key    lst-ib    \\13
# testdb -> book 테이블

import sqlite3

def getconn():
    conn = sqlite3.connect("C:/coding/pydb/testbd")
    return conn

# 


print(getconn(), "연결 객체 생성")
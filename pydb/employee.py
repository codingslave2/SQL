# import sqlite3
import sqlite3

def getconn():
    conn = sqlite3.connect("c:/coding/pydb/mydb.sql")
    return conn


def select():
    conn = sqlite3.connect("c:/coding/pydb/mydb.sql")
    # print(conn)
    cursor = conn.cursor() # 모든 조작(삽입, 검색, 수정, 삭제)을 수행하는 함수
    sql = "SELECT * FROM employee"
    cursor.execute(sql)
    # 전체 검색 - fetchall(), 특정 1개 검색 - fetchone()
    rs - cursor.fetchall() # 자료 구조가 리스트임
    for i in rs:
        print(i)
    conn.close()

def insert():
    conn = sqlite3.connect("c:/coding/pydb/mydb.db")
    cursor = conn.cursor()
    sql = "INSERT INTO employee VALUES ('e103', '안산', 22, 10000)" # 삽입, 수정, 삭제 시에 반드시 커밋 해줌
    cursor.execute(sql)

def update():
    conn = sqlite3.connect("c:/coding/pydb/mydb.db")
    cursor = conn.cursor()
    sql = "UPDATE employee SET age = 40 WHERE empid = 'e101'"
    cursor.execute(sql)
    conn.commit() # 삽입, 수정, 삭제 시에 반드시 커밋 해줌
    conn.close()

def select_one(): # 특정 요소 검색
    conn = getconn()
    cursor = conn.cursor()
    sql = "SELECT * FROM employee WHERE empid = 'e103'"
    cursor.execute(sql)
    rs = cursor.fetchone()
    print(rs)
    conn.close()

# 메인 영역 호출에서 사용
# update()
# insert()
# select()

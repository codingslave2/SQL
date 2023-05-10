import oracledb

def getconn():
    conn = oracledb.connect(user='c##mydb', password='mydb',
                             dsn='localhost:1521/xe') # dsn = date source name
    return conn

def select():
    conn = getconn()
    cursor = conn.cursor()
    sql = "SELECT * FROM pytest"
    cursor.execute(sql)
    rs = cursor.fetchall()
    print(rs)
    for i in rs:
        print(i)
    conn.close()

def insert():
    conn = getconn()
    cursor = conn.cursor()
    sql = "INSERT INTO pytest VALUES (?)"
    cursor.execute(sql, ("행운을 빌어요, "))
    conn.commit()

# insert()
select()
--��¥ �ڷ���
CREATE TABLE ex2(
    col_date DATE,
    col_timestamp TIMESTAMP
);

--�ڷ� ����
INSERT INTO ex2 VALUES (SYSDATE, SYSTIMESTAMP);

--�ڷ� �˻�
SELECT * FROM ex2;
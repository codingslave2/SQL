--���� �ڷ��� ��
CREATE TABLE ex1(
    culumn1 CHAR(10),
    culumn2 VARCHAR(10)
);

--�ڷ� �߰�

INSERT INTO ex1(culumn1, culumn2) VALUES ('abc', 'abc');
INSERT INTO ex1 VALUES ('����', '����');

--�ڷ� ��ȸ
SELECT column1, LENGTH(column1) len1, column2, LENGTH(column2) len2 FROM ex1;
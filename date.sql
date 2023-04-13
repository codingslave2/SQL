--���� Ÿ�� �Լ�
SELECT LOWER('ABCD') RESULT FROM DUAL;

-- SUBSTR(����, �ε���, ���ڼ�)
SELECT SUBSTR('ABC', 1, 2) RESULT FROM DUAL;

-- REPLACE(����, ��������, ���ο��)
SELECT REPLACE('ABC', 'A', 'E') RESULT FROM DUAL;

-- CONCAT(����1, ����2) - ���� ����
SELECT CONCAT('A', 'B') RESULT FROM DUAL;
-- ���� ������ - '||'
SELECT '�ȳ�' || '�ϼ���' RESULT FROM DUAL;

-- LPAD(����, ���ڼ�, ��ȣ) - ��ȣ�� ���ʺ��� ä��
SELECT LPAD('cloud', 10, '*') RESULT FROM DUAL;
-- RPAD(����, ���ڼ�, ��ȣ) - ��ȣ�� �����ʺ��� ä��
SELECT RPAD('cloud', 10, '*') RESULT FROM DUAL;

-- �μ��̸����� ó������ �����ؼ� 2���� ���� ���
SELECT SUBSTR(deptname, 1, 2) �μ���
SELECT * FROM DUAL;

--���� ���� �߱��� ���Ե� ������ �󱸷� �����Ͽ� �˻�
SELECT REPLACE(bookname, '�߱�', '��')
FROM book;

--�½��������� ������ ������ ����� ������ ���� ��, ����Ʈ ���� �˻�
-- �ѱ� 3Byte, ����, Ư����ȣ - 1Byte
SELECT bookname,
    LENGTH(bookname)���ڼ�,
    LENGTHB(bookname) ����Ʈ��
FROM book
WHERE publisher = '�½�����';

--��¥ �Լ�
-- 20�� ���� ��¥ ���
SELECT SYSDATE - 20 FROM DUAL;

-- 3���� ���� ��¥ ���
SELECT ADD_MONTHS (SYSDATE, 3)���
FROM DUAL;


SELECT SYSTIMESTAMP FROM DUAL;

--�ֹ���ȣ�� 6���� 10 ������ ������ �ֹ��Ͽ� 3������ ���Ѱ��� ���Ͻÿ�
-- 1. �ֹ���ȣ�� 6~10�� ���� �˻�
-- 2. �ֹ��Ͽ� 3���� ���ϱ�
SELECT orderid �ֹ���ȣ,
    ADD_MONTHS(orderdate, 3) ���ϱ� ���
    FROM orders
    WHERE orderid >=6 AND orderid <=10;
    
--�ֹ���ȣ�� 10�� ������ �ֹ��Ϸκ��� ���ñ����� �� �������� ���Ͻÿ�
-- MONTHS_BETWEEN (���ĳ�¥, ������¥)
SELECT orderid �ֹ���ȣ, orderdate �ֹ���,
TRUNC(MONTHS_BETWEEN(SYSDATE, orderdate), 0) �Ѱ�����
FROM orders
WHERE orderid = 10;

-- �ڵ� Ÿ�� ��ȯ
SELECT 1+ '2' FROM DUAL;

--���� Ÿ�� ��ȯ
--���ڸ� ���� �������� ��ȯ
SELECT TO_NUMBER('120') FROM DUAL;

--��¥ �Լ�
SELECT TO_DATE('2022-06-30', 'yy-mm-dd') FROM dual;

--��¥ ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'YY-MM-DD') ��¥,
TO_CHAR(SYSDATE, 'YYYY') ����,
TO_CHAR(SYSDATE, 'MM') ��,
TO_CHAR(SYSDATE, 'DD') ��
FROM DUAL;

--�ð� ���� ��ȯ
SELECT TO_CHAR(SYSDATE, 'HH:MI:SS AM') �ð�����,
TO_CHAR(SYSDATE, 'YYYY/MM/DD HH:MI:SS AM') ��¥�ͽð�
FROM DUAL;
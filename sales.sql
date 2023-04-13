-- order ���̺�(�ֹ���ȣ, ����ȣ, ������ȣ, �ǸŰ���, �ֹ���)
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
-- �ܷ�Ű ����    
    CONSTRAINT cus_fk FOREIGN KEY(custid)
    REFERENCES customer(custid),
    CONSTRAINT book_fk FOREIGN KEY(bookid)
    REFERENCES book(bookid)
    );
    
-- orders �ڷ� �Է�
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-05', 'YYYY-MM-DD'));

SELECT * FROM orders;

-- 2�� ���� �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT SUM(saleprice) �Ѹ���
FROM orders
WHERE custid = 2;

-- ���� (1�� ���̺� �̻� �����ϴ� ���)
SELECT ord.*, cus.*
FROM orders ord, customer cus
WHERE ord.custid = cus.custid;

--������ �ֹ��� ������ �� �Ǹž��� ���Ͻÿ�
--���踦 ���Ҷ��� GROUP BY�� ���, ������ HAVING�� ���
SELECT cus.name, SUM(ord.saleprice)
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
AND cus.name = '�迬��'
GROUP BY cus.name;

--������ 8000�� �̻��� ������ ���� ���� �ֹ������� �� ������ ���Ͻÿ�
--��, 2�� �̻� ������ ���� ã���ÿ�.
-- HAVING ���� GROUP BY�� ���� ����� ��Ÿ���� �׷��� �����ϴ� ����
SELECT COUNT(*) �Ѽ���
FROM orders
WHERE saleprice >=8000;
GROUP BY custid
HAVING cus.name = '������';
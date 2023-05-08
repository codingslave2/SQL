-- bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- 3���� ���̺� ����
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid;

-- JOIN(��������-EQUI JOIN) -������ �κ�(������, AND)
-- ���� �̸��� ���� �ֹ��� ������ �ǸŰ����� ���Ͻÿ�
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
    AND cus.name - '������';

-- ������ �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�

--ǥ�� SQL - INNER JOIN ON~
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid;
    ORDER BY cus.name;
    
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
-- �ܺ� ���� ('+' ������ ���) : JOIN ���ǿ� �����ϴ� �����Ͱ� �ƴϾ �˻��ϴ� ���
-- WHERE ������ ��� �࿡ ��µǴ� ���̺��� �ݴ��� ���̺� '+'�� ����
-- �ֹ��� ���� ���� �����Ͽ� ���� �̸��� �ֹ��� ������ �Ǹ� ������ ã���ÿ�

SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);
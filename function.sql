-- ���� Ÿ�� �Լ�
-- ������ ���̺� : dual
SELECT ABS(-10), ABS(10) FROM dual;

--�ݿø� : ROUND(��, �ڸ���)
SELECT ROUND(3.875, 3) FROM dual;

SELECT sal �޿�,
        sal/30 �ϱ�,
        TRUNK(sal/30, 1) ���1,
        TRUNK(sal/30, 0) ���2,
        TRUNK(sal/30, -1) ���3
FROM employee;

-- ���� ��� �ֹ� �ݾ��� ��� ������ �ݿø��� ���� ���Ͻÿ�
SELECT custid ����ȣ, ROUND(AVG(saleprice), -2) ����ֹ��ݾ�
FROM orders
GROUP BY custid;

SELECT custid ����ȣ, COUNT(*) �ֹ���, SUM(saleprice) �Ѿ�
FROM orders
GROUP BY custid;

SELECT custid ����ȣ, ROUND(SUM(saleprice)/COUNT(*) -2) ����ֹ��ݾ�
FROM orders
GROUP BY custid;

select * from customer;
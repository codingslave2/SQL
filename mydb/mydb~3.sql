-- ���ѹα��� �����ϴ� ���� �̸��� ������ �ֹ��� ���� �̸� �˻�
-- union�� ���
SELECT * FROM customer;

--������ �ֹ��� ���� �̸� �˻�
SELECT name
FROM customer cus, oders ord
WHERE cus.custid = ord.custid;
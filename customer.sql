--customer ���̺�(����ȣ, �̸�, �ּ�, ��ȭ��ȣ)
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(50)
);

--customer �ڷ��߰�
INSERT INTO customer VALUES (1, '������', '���� ��ü����', '000-5000-0001');
INSERT INTO customer VALUES (2, '�迬��', '���ѹα� ����', '000-5000-0002');
INSERT INTO customer VALUES (3, '�����', '���� ����', '000-5000-0003');
INSERT INTO customer VALUES (4, '������', 'ĳ���� �����', NULL);
INSERT INTO customer VALUES (5, '�����', '��Ż���� ������', '000-5000-0005');

SELECT * FROM customer;

-- ��ȭ��ȣ�� ���� ���� ã���ÿ�
SELECT *
FROM customer
WHERE phone IS NULL;

--�ּҰ� ���ѹα��� ���� ã���ÿ�
SELECT *
FROM customer
WHERE address LIKE '%���ѹα�%';

-- ���� �̸������� �����Ͻÿ� (��������(ASC)/��������(DESC))
SELECT *
FROM customer
ORDER BY name ASC;
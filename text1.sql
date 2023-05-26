SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- ���ǻ簡 "�� ������" �Ǵ� "���ѹ̵��" �� ������ �˻��Ͻÿ�

SELECT * FROM book
WHERE publisher = '�½�����' or publisher = '���ѹ̵��';

SELECT * FROM book
WHERE publisher NOT IN('�½�����', '���ѹ̵��');

-- ���� �̸��� �౸�� ���Ե� ����
SELECT * FROM book
WHERE bookname LIKE '�౸';

-- �౸�� ���Ե� ���� �� ������ 2���� �̻�
SELECT * FROM book
WHERE bookname LIKE '�౸' AND price >= 20000;

-- ������ �̸������� �˻��Ͻÿ�(�������� ����)
SELECT * FROM book
ORDER BY bookname;

-- ������ ���ݼ����� �˻��ϰ�, ������ ������ �̸������� �˻��Ͻÿ�
SELECT * FROM book
ORDER BY price DESC, bookname;

-- �ڷ� �߰�(11, 'ȥ�� �����ϴ� �ڹ�', '�Ѻ��̵��', 24000)
INSERT INTO book VALUES (11, 'ȥ�� �����ϴ� �ڹ�', '�Ѻ��̵��', 24000);

-- bookname�� 'ȥ�� �����ϴ� ���̽�'���� �����Ͻÿ�

SELECT * FROM book
WHERE bookname LIKE 'ȥ�� �����ϴ� �ڹ�',



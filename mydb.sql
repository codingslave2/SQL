-- borad ���̺�
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY, --�۹�ȣ
    title VARCHAR2(200), --������
    writer VARCHAR2(20), --�ۼ���
    content VARCHAR2(2000), --�۳���
    regdate DATE DEFAULT SYSDATE --�����
);

--������(�Ϸù�ȣ, �ڵ�����)
CREATE SEQUENCE seq;

--��õ�� Į���� �߰��Ͻÿ�(Į���� : cnt, �ڷ���: NUMBER DEFAULT 0)
-- ALTER TABLE ���̺� �̸� ADD Į���� �ڷ���
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;

--�Խñ� �߰�
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL, '�����λ�', '������', '�ȳ��ϼ���. ���� �λ�����');

INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL, '���������Դϴ�', '������', '���� �λ縦 �����ּ���.');

--�Խñ� �˻�
SELECT *
FROM board;
ORDER BY regdate DESC;

-- �ۼ��ڰ� �������� �Խñ��� �˻��Ͻÿ�
SELECT * FROM board
WHERE bno = 2;

-- �Խñ��� �ۼ��ڸ� �����ڿ��� admin���� �����ϼ���
-- UPDATE ���̺� �̸� SET Į�� = ���氪 WHERE ��
UPDATE board SET writer = 'admin'
WHERE bno = 2;

-- ������ ����
DROP SEQUENCE seq;

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
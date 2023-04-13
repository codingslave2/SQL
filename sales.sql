-- order 테이블(주문번호, 고객번호, 도서번호, 판매가격, 주문일)
CREATE TABLE orders(
    orderid NUMBER PRIMARY KEY,
    custid NUMBER NOT NULL,
    bookid NUMBER NOT NULL,
    saleprice NUMBER,
    orderdate DATE,
-- 외래키 설정    
    CONSTRAINT cus_fk FOREIGN KEY(custid)
    REFERENCES customer(custid),
    CONSTRAINT book_fk FOREIGN KEY(bookid)
    REFERENCES book(bookid)
    );
    
-- orders 자료 입력
INSERT INTO orders VALUES (1, 1, 1, 6000, TO_DATE('2018-07-01', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (2, 1, 3, 21000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (3, 2, 5, 8000, TO_DATE('2018-07-03', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (4, 3, 6, 6000, TO_DATE('2018-07-04', 'YYYY-MM-DD'));
INSERT INTO orders VALUES (5, 4, 7, 20000, TO_DATE('2018-07-05', 'YYYY-MM-DD'));

SELECT * FROM orders;

-- 2번 고객이 주문한 도서의 총 판매애을 구하시오
SELECT SUM(saleprice) 총매출
FROM orders
WHERE custid = 2;

-- 조인 (1개 테이블 이상 연결하는 기법)
SELECT ord.*, cus.*
FROM orders ord, customer cus
WHERE ord.custid = cus.custid;

--고객별로 주문한 도서의 총 판매액을 구하시오
--집계를 구할때는 GROUP BY절 사용, 조건은 HAVING절 사용
SELECT cus.name, SUM(ord.saleprice)
FROM orders ord, customer cus
WHERE ord.custid = cus.custid
AND cus.name = '김연아'
GROUP BY cus.name;

--가격이 8000원 이상인 도서를 구한 고객별 주문도서의 총 수량을 구하시오
--단, 2권 이상 구매한 고객만 찾으시오.
-- HAVING 절은 GROUP BY의 질의 결과를 나타내는 그룹을 제한하는 역할
SELECT COUNT(*) 총수량
FROM orders
WHERE saleprice >=8000;
GROUP BY custid
HAVING cus.name = '박지성';
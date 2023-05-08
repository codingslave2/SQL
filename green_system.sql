-- bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- 3개의 테이블 조인
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord, book bk
WHERE cus.custid = ord.custid
    AND bk.bookid = ord.bookid;

-- JOIN(동등조인-EQUI JOIN) -공동된 부분(교집합, AND)
-- 고객의 이름과 고객이 주문에 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid;
    AND cus.name - '박지성';

-- 고객별로 주문한 모든 도서의 총 판매액을 구하시오

--표준 SQL - INNER JOIN ON~
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid;
    ORDER BY cus.name;
    
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;
    
-- 외부 조인 ('+' 연산자 사용) : JOIN 조건에 충족하는 데이터가 아니어도 검색하는 방식
-- WHERE 절에서 모든 행에 출력되는 테이블의 반대편 테이블에 '+'를 붙임
-- 주문이 없는 고객을 포함하여 고객의 이름과 주문한 도서의 판매 가격을 찾으시오

SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid(+);
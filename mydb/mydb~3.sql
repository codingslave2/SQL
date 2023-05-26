-- 대한민국에 거주하는 고객의 이름과 도서를 주문한 고객의 이름 검색
-- union을 사용
SELECT * FROM customer;

--도서를 주문한 고객의 이름 검색
SELECT name
FROM customer cus, oders ord
WHERE cus.custid = ord.custid;
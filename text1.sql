SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- 출판사가 "굿 스포츠" 또는 "더한미디어" 인 도서를 검색하시오

SELECT * FROM book
WHERE publisher = '굿스포츠' or publisher = '더한미디어';

SELECT * FROM book
WHERE publisher NOT IN('굿스포츠', '대한미디어');

-- 도서 이름에 축구가 포함된 도서
SELECT * FROM book
WHERE bookname LIKE '축구';

-- 축구가 포함된 도서 중 가격이 2만원 이상
SELECT * FROM book
WHERE bookname LIKE '축구' AND price >= 20000;

-- 도서를 이름순으로 검색하시오(오름차순 정렬)
SELECT * FROM book
ORDER BY bookname;

-- 도서를 가격순으로 검색하고, 가격이 같으면 이름순으로 검색하시오
SELECT * FROM book
ORDER BY price DESC, bookname;

-- 자료 추가(11, '혼자 공부하는 자바', '한빛미디어', 24000)
INSERT INTO book VALUES (11, '혼자 공부하는 자바', '한빛미디어', 24000);

-- bookname을 '혼자 공부하는 파이썬'으로 변경하시오

SELECT * FROM book
WHERE bookname LIKE '혼자 공부하는 자바',



--customer 테이블(고객변호, 이름, 주소, 전화번호)
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(50)
);

--customer 자료추가
INSERT INTO customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO customer VALUES (2, '김연아', '대한민국 서울', '000-5000-0002');
INSERT INTO customer VALUES (3, '손흥민', '영국 런던', '000-5000-0003');
INSERT INTO customer VALUES (4, '류현진', '캐나다 토론토', NULL);
INSERT INTO customer VALUES (5, '김민재', '이탈리아 나폴리', '000-5000-0005');

SELECT * FROM customer;

-- 전화번호가 없는 고객을 찾으시오
SELECT *
FROM customer
WHERE phone IS NULL;

--주소가 대한민국인 고객을 찾으시오
SELECT *
FROM customer
WHERE address LIKE '%대한민국%';

-- 고객을 이름순으로 정렬하시오 (오름차순(ASC)/내림차순(DESC))
SELECT *
FROM customer
ORDER BY name ASC;
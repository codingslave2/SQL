--문자 자료형 비교
CREATE TABLE ex1(
    culumn1 CHAR(10),
    culumn2 VARCHAR(10)
);

--자료 추가

INSERT INTO ex1(culumn1, culumn2) VALUES ('abc', 'abc');

--자료 조회
SELECT column1, LENGTH(column1), column2 FROM ex1;
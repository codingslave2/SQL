-- borad 테이블
CREATE TABLE board(
    bno NUMBER(5) PRIMARY KEY, --글번호
    title VARCHAR2(200), --글제목
    writer VARCHAR2(20), --작성자
    content VARCHAR2(2000), --글내용
    regdate DATE DEFAULT SYSDATE --등록일
);

--시퀀스(일련번호, 자동순번)
CREATE SEQUENCE seq;

--추천수 칼럼을 추가하시오(칼럼명 : cnt, 자료형: NUMBER DEFAULT 0)
-- ALTER TABLE 테이블 이름 ADD 칼럼명 자료형
ALTER TABLE board ADD cnt NUMBER DEFAULT 0;

--게시글 추가
INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL, '가입인사', '강남역', '안녕하세요. 가입 인사드려요');

INSERT INTO board(bno, title, writer, content)
VALUES(seq.NEXTVAL, '공지사항입니다', '관리자', '가입 인사를 남겨주세요.');

--게시글 검색
SELECT *
FROM board;
ORDER BY regdate DESC;

-- 작성자가 관리자인 게시글을 검색하시오
SELECT * FROM board
WHERE bno = 2;

-- 게시글의 작성자를 관리자에서 admin으로 변경하세요
-- UPDATE 테이블 이름 SET 칼럼 = 변경값 WHERE 절
UPDATE board SET writer = 'admin'
WHERE bno = 2;

-- 시퀀스 삭제
DROP SEQUENCE seq;

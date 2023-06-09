-- 중첩 쿼리 - 괄호안을 먼저 실행함, FROM절 - 인라인뷰
SELECT ROWNUM, NAME, SCORE FROM
(SELECT ROWNUM, NAME, SCORE
FROM ex_score
ORDER BY SCORE DESC)
WHERE ROWNUM <= 5;


-- job_info 테이블
CREATE TABLE JOB_INFO(
    JOB_ID VARCHAR(10),
    MIN_SALARY NUMBER,
    MAX_SALARY NUMBER
);

INSERT INTO JOB_INFO VALUES ('AD_PRES', 20080, 40000);
INSERT INTO JOB_INFO VALUES ('AD_VP', 15000, 30000);
INSERT INTO JOB_INFO VALUES ('AD_ASST', 3000, 60000);
INSERT INTO JOB_INFO VALUES ('F1_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('F1_ACCOUNT', 4200, 9000);
INSERT INTO JOB_INFO VALUES ('AC_MGR', 8200, 16000);
INSERT INTO JOB_INFO VALUES ('AD_ACCOUNT', 4200, 9000);

DELETE FROM JOB_INFO;

COMMIT;

SELECT COUNT(*) 총개수,
    ROUND(AVG(MIN_SALARY), -1) 최저급여평균,
    AVG(MAX_SALARY) 최대급여평균
FROM JOB_INFO;

-- 최저 급여가 5000달러 이상인 직업의 ID를 검색하시오

SELECT JOB_ID, MIN_SALARY
FROM JOB_INFO
WHERE MIN_SALARY > 5000;


-- 최저 급여가 5000달러 이상인 직업의 ID를 검색한뷰를 작성하시오
-- CREATE VIEW 뷰어를 AS로 구분
CREATE VIEW V_JOB_INFO
AS SELECT *
    FROM JOB_INFO
    WHERE MIN_SALARY > 5000;

SELECT * FROM V_JOB_INFO;

-- 최고급여와 최저급여의 차가 8000 이상인 자료를 검색하시오

SELECT JOB_ID
FROM V_JOB_INFO
WHERE MAX_SALARY - MIN_SALARY > 8000;

-- 직업의 아이디가 AD로 시작되는 자료를 검색하시오
SELECT JOB_ID
FROM v_job_info
WHERE JOB_ID LIKE 'AD%';

-- 뷰 삭제
DROP VIEW V_JOB_INFO;

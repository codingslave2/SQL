SELECT * FROM dept;
SELECT * FROM  employee;



-- 사원이름, 급여, 성별, 부서이름을 검색하시오(JOIN)
SELECT em.ename, em.sal, em.gender, em.deptno
FROM dept de, employee em
WHERE de.deptno = em.deptno;

-- 사원 이름, 급여, 성별, 부서 이름을 검색한 내용을 뷰로 작성
-- CREATE VIEW 뷰이름 AS SELECT * FROM 테이블이름
CREATE VIEW vw_dept_emp AS
SELECT em.ename, em.sal, em.gender, em.deptno
FROM dept de, employee em
WHERE de.deptno = em.deptno;

SELECT * FROM vw_dept_emp;

-- 모든 사원의 총 인원수를 구하시오
SELECT  COUNT(*) total
FROM vw_dept_emp;

-- 부서별 사원의 총인원수를 구하시오
SELECT deptname, COUNT(*) total
FROM vw_dept_emp
GROUP BY deptname;

-- 부서의 인원이 2명을 초과하는 자료를 검색하시오
SELECT deptname, COUNT(*) total
FROM vw_dept_emp
GROUP BY deptname
HAVING COUNT(total) > 2;

/* 실행 순서
1. FROM절
2. WHERE절
3. GROUP BY, HAVING
4. SELECT
5. ORDER BY
*/
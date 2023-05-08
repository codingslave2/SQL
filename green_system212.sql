SELECT * FROM dept;
SELECT * FROM  employee;



-- ����̸�, �޿�, ����, �μ��̸��� �˻��Ͻÿ�(JOIN)
SELECT em.ename, em.sal, em.gender, em.deptno
FROM dept de, employee em
WHERE de.deptno = em.deptno;

-- ��� �̸�, �޿�, ����, �μ� �̸��� �˻��� ������ ��� �ۼ�
-- CREATE VIEW ���̸� AS SELECT * FROM ���̺��̸�
CREATE VIEW vw_dept_emp AS
SELECT em.ename, em.sal, em.gender, em.deptno
FROM dept de, employee em
WHERE de.deptno = em.deptno;

SELECT * FROM vw_dept_emp;

-- ��� ����� �� �ο����� ���Ͻÿ�
SELECT  COUNT(*) total
FROM vw_dept_emp;

-- �μ��� ����� ���ο����� ���Ͻÿ�
SELECT deptname, COUNT(*) total
FROM vw_dept_emp
GROUP BY deptname;

-- �μ��� �ο��� 2���� �ʰ��ϴ� �ڷḦ �˻��Ͻÿ�
SELECT deptname, COUNT(*) total
FROM vw_dept_emp
GROUP BY deptname
HAVING COUNT(total) > 2;

/* ���� ����
1. FROM��
2. WHERE��
3. GROUP BY, HAVING
4. SELECT
5. ORDER BY
*/
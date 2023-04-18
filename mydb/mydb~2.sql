SELECT * FROM tbl_class;
SELECT * FROM tbl_student;

-- 조건
SELECT *
FROM tbl_class cls, tbl_student stu
WHERE cls.cid = stu.cid;

--학과별 학생수를 구하시오
SELECT cls.cid, cls.cname, COUNT(*) 학생수
FROM tbl_class cls, tbl_student stu
WHERE cla.cid = stu.cid
GROUP BY ROLLUP(cls.cid, cls.cname);

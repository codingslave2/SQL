SELECT * FROM tbl_class;
SELECT * FROM tbl_student;

-- ����
SELECT *
FROM tbl_class cls, tbl_student stu
WHERE cls.cid = stu.cid;

--�а��� �л����� ���Ͻÿ�
SELECT cls.cid, cls.cname, COUNT(*) �л���
FROM tbl_class cls, tbl_student stu
WHERE cla.cid = stu.cid
GROUP BY ROLLUP(cls.cid, cls.cname);

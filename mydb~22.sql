
SELECT * FROM board ORDER BY bno DESC;

-- �ۼ��ڰ� 'admin'�� �Խñ�
SELECT * FROM board
WHERE writer = 'admin';

-- index ����
CREATE INDEX idx_admin ON board(writer);

DROP INDEX idx_admin;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

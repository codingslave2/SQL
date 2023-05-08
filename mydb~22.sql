
SELECT * FROM board ORDER BY bno DESC;

-- 작성자가 'admin'인 게시글
SELECT * FROM board
WHERE writer = 'admin';

-- index 생성
CREATE INDEX idx_admin ON board(writer);

DROP INDEX idx_admin;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(null, null, 'ALLSTATS LAST'));

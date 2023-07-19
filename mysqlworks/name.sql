use mydb;

-- title이 여름장마인 게시글 검색
select * from t_board where title like '여름장마';

-- title에 '장마'가 포함된 게시글 검색
select * from t_board where title like '%장마%';

-- 작성자(memberid)가 'today'인 게시글 내림차순 검색
select * from t_board where memberid like 'today'
order by bnum desc;

select * from t_board;

select * from t_member;
select count(*) as count from t_member;
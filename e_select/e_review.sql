### e_select >>> e_review ###

use `baseball_league`;
select * from `players`;
select * from `teams`;

# 1. 1990년 이후에 태어난 선수 목록 가져오기
SELECT 
    name AS '회원 이름',
    birth_date AS '생년월일'
FROM 
    `players`
WHERE 
    year(birth_date) >= '1990-01-01'
;
# 2. 외야수인 선수 중 1995년 이전에 태어난 선수 목록 가져오기
SELECT 
    name AS '선수 이름',
    position as '포지션',
    birth_date as '출생년도'
FROM 
    `players`
WHERE 
	position = '외야수' and
    birth_date <= '1994-12-31'
;

# 3. 선수들을 생년월일 순으로 정렬해서 가죠오기
select 
	name '선수이름'
from `players`
order by
	birth_date asc;
    
# 4. 팀별로 창단 연도 순으로 팀 목록 가져오기
select name as '팀 이름'
from `teams`
order by
	founded_year asc;
    
# 5. 중복을 제거한 팀 이름 목록 가져오기
select distinct name as '팀 이름'
from `teams`;

# 6. 중복을 제거한 포지션 목록 가져오기
select distinct position as '포지션'
from `players`;

# 7. 각 포지션별 선수 수가 2명 이상인 포지션 가져오기
SELECT 
    position AS '포지션',
    COUNT(*) AS '선수 수'
FROM 
    `players`
GROUP BY 
    position
HAVING 
    COUNT(*) >= 2;

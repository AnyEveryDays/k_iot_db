### f_join >>> z_review_question ###
use korea_db;
/*
	문제 1
	모든 회원의 이름, 등급, 구매한 상품 코드, 구매일, 구매 금액(amount)을 조회하세요.
	구매 기록이 없는 회원도 모두 포함되도록 하세요.
	단, 구매일이 오래된 순으로 정렬하세요.
*/
select M.name, M.grade, P.purchase_id,P.purchase_date,P.amount
from `members` as M
	left join `purchases` as P
    ON P.member_id = M.member_id
order by P.purchase_date asc;



/*
	문제 2
	2023년 이후 가입한 회원 중 구매 총액이 30000원 이상인 
    회원의 이름, 지역코드, 총 구매금액을 조회하세요.
*/
use korea_db;
select M.name'이름', M.area_code '지역코드', SUM(P.amount)'총 구매금액'
from `purchases` as P
	join `members` as M
    ON P.member_id = M.member_id
where M.join_date >= 2023-01-01
group by M.area_code, M.name
having SUM(P.amount) >= 30000;


/*
	문제 3
	회원 등급별로 구매 총액 평균을 구하고,
	회원 등급(grade), 구매건수(COUNT), 구매총액합계(SUM), 구매평균(AVG)을 모두 출력하세요.
	단, 구매가 한 건도 없는 등급은 제외하세요.
*/
use korea_db;
select M.grade'회원 등급',COUNT(P.purchase_id) as '구매건수', SUM(P.amount)'구매총액합계', AVG(P.amount)'구매평균'
from `members` as M
	join `purchases` as P
    ON M.member_id = P.member_id
group by M.grade;
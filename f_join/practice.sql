# 예제) 구매 금액이 가장 높은 회원이 member_id, name, total_amount(총 구매 금액)

use korea_db;

SELECT 
    m.member_id, 
    m.name, 
    SUM(p.amount) AS total_amount
FROM 
    `purchases` p
JOIN 
    members m ON p.member_id = m.member_id
GROUP BY 
    m.member_id, m.name
ORDER BY 
    total_amount DESC
LIMIT 1;


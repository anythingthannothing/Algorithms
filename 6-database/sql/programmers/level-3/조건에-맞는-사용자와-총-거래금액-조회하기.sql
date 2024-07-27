SELECT u.USER_ID, u.NICKNAME, b.TOTAL_SALES
FROM (
    SELECT WRITER_ID, SUM(PRICE) as TOTAL_SALES
    FROM USED_GOODS_BOARD
    WHERE STATUS = 'DONE'
    GROUP BY WRITER_ID
    HAVING SUM(PRICE) >= 700000
) AS b
JOIN USED_GOODS_USER as u
ON u.USER_ID = b.WRITER_ID
ORDER BY b.TOTAL_SALES;
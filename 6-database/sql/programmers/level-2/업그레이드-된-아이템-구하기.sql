SELECT a.ITEM_ID AS ITEM_ID, b.ITEM_NAME AS ITEM_NAME, b.RARITY AS RARITY
FROM ITEM_TREE a
JOIN ITEM_INFO b
ON a.ITEM_ID = b.ITEM_ID
WHERE a.PARENT_ITEM_ID IN (SELECT ITEM_ID FROM ITEM_INFO WHERE RARITY = 'RARE')
ORDER BY 1 DESC;
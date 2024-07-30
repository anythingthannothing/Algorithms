SELECT CONCAT(MAX(QUARTER(DIFFERENTIATION_DATE)), 'Q') AS QUARTER, COUNT(*) AS ECOLI_COUNT
FROM ECOLI_DATA
GROUP BY QUARTER(DIFFERENTIATION_DATE)
ORDER BY 1 ASC;
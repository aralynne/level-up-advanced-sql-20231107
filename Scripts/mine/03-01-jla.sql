-- Common Table Expressions
-- Summarize Sales by Year
WITH amtYear AS (
  SELECT
     strftime('%Y',soldDate) AS soldYear
    ,salesAmount
  FROM
    sales
)
SELECT
   soldYear
  ,FORMAT("$%.2f",SUM(salesAmount)) AS yrSales
FROM
  amtYear
GROUP BY
  soldYear
ORDER BY
  soldYear
;

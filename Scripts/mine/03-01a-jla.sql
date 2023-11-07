-- WITHOUT Common Table Expressions
-- Summarize Sales by Year
SELECT
     strftime('%Y',soldDate) AS soldYear
    ,FORMAT("$%.2f",SUM(salesAmount)) AS yrSales2
FROM
  sales
GROUP BY
  strftime('%Y',soldDate)
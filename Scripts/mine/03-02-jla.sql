WITH cte AS (
  SELECT
     employeeId
    ,SUM(salesAmount) AS sumsalesAmount
    ,strftime('%m',soldDate) AS soldMonth
    ,strftime('%Y',soldDate) AS soldYear
  FROM
    sales
  WHERE
    strftime('%Y',soldDate) = '2021'
  GROUP BY
    salesAmount
  )
SELECT
   cte.soldMonth
  ,SUM(cte.sumsalesAmount)
  ,e.firstName
  ,e.lastName
FROM
  employee e
INNER JOIN
  cte cte
ON
  e.employeeId = cte.employeeId
GROUP BY
  cte.soldMonth, cte.sumsalesAmount, cte.employeeId
ORDER BY
  cte.employeeId, cte.soldMonth
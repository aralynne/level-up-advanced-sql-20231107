-- Employees with more than 5 sales this year
SELECT
  COUNT(*) AS cntsalesId
  ,MIN(s.salesAmount) AS smSold
  ,MAX(s.salesAmount) AS lgSold
  ,SUM(s.salesAmount) AS sumSales
  ,e.firstName
  ,e.lastName
FROM
  sales s
INNER JOIN
  employee e
ON
  s.employeeId = e.employeeId
WHERE
  s.soldDate >= date('now', 'start of year')
GROUP BY
  s.employeeId, e.firstName, e.lastName
HAVING
  COUNT(*) > 5
;
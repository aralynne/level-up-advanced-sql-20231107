-- Find least and most expensive car
SELECT
   e.firstName
  ,e.lastName
  ,MIN(s.salesAmount) AS smSold
  ,MAX(s.salesAmount) AS lgSold
FROM
  sales s
INNER JOIN
  employee e
ON
  s.employeeId = e.employeeId
WHERE
  s.soldDate >= date('now', 'start of year')
GROUP BY
  e.firstName, e.lastName
;
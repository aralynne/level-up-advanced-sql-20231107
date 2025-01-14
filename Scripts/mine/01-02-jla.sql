-- List of salespeople with zero sales
SELECT
   e.firstName
  ,e.lastName
  ,e.title
  ,e.startDate
  ,s.salesId
FROM
  employee e
LEFT JOIN
  sales s
ON
  e.employeeId = s.employeeID
WHERE
  e.title = 'Sales Person'
AND
  s.salesId IS NULL
;


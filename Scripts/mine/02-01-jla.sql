-- Total number of cars sold by each employee
-- Cars sold by employees
SELECT
   COUNT(*) AS cntsalesId
  ,e.firstName
  ,e.lastName
FROM
  sales s
INNER JOIN
  employee e
ON
  s.employeeId = e.employeeId
GROUP BY
  s.employeeId, e.firstName, e.lastName
ORDER BY
  count(*) desc
;
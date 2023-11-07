SELECT
   e.firstName AS EmployeeFirst
  ,e.lastName AS EmployeeLast
  ,e.title AS EmployeeTitle
  ,m.firstName AS ManagerFirst
  ,m.lastName AS ManagerLast
  ,m.title AS ManagerTitle
FROM
  employee e
INNER JOIN
  employee m ON e.managerId = m.employeeId
;

-- Database cleanup
-- List of all sales and all customers
-- even if some of the data has been removed

-- All customers
SELECT
   c.firstName
  ,c.lastName
  ,s.salesAmount
  ,s.soldDate
FROM
  customer c
INNER JOIN
  sales s
ON
  c.customerId = s.customerId
UNION
-- Customers with no sales
SELECT
   c.firstName
  ,c.lastName
  ,s.salesAmount
  ,s.soldDate
FROM
  customer c
LEFT JOIN
  sales s
ON
  c.customerId = s.customerId
WHERE
  s.salesId IS NULL
UNION
-- Union with sales missing customer data
SELECT
   c.firstName
  ,c.lastName
  ,s.salesAmount
  ,s.soldDate
FROM
  sales s
LEFT JOIN
  customer c
ON
  c.customerId = s.customerId
WHERE
  c.customerId IS NULL
;
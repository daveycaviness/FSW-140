--#1
SELECT * FROM customers
--#2
SELECT vendname, vendstate FROM vendors ORDER BY (vendstate) DESC
--#3
UPDATE products SET retailprice = retailprice * 1.07
SELECT productname, retailprice FROM products
--4
SELECT CONCAT(customers.custfirstname, ' ', customers.custlastname) As customer, orders.orderdate, orders.customerid, orders.ordertotal  FROM customers
JOIN orders ON customers.customerid = orders.customerid
ORDER BY (orderdate)ASC
--5
SELECT vendname, vendcity FROM vendors WHERE vendcity LIKE '%Albany%' OR vendcity LIKE '%Anchorage%' OR vendcity LIKE '%Dallas%'
--6
SELECT * FROM products WHERE quantityonhand >= 30 ORDER BY (productname) ASC
--7
SELECT vendname, vendemailaddress FROM vendors WHERE vendemailaddress IS NULL
--8
SELECT CONCAT(empfirstname, ' ', employees.emplastname) AS employees, orders.orderdate, orders.shipdate FROM employees
JOIN orders ON employees.employeeid = orders.employeeid ORDER BY (orders.orderdate) ASC
--9
SELECT vendors.vendname, vendors.vendstate, products.productname, products.retailprice FROM vendors, products 
WHERE products.retailprice > 75 AND vendors.vendstate = 'TX'
--10
SELECT CONCAT(employees.empfirstname, ' ', employees.emplastname) AS employee, vendors.vendname, CONCAT(vendors.vendcity, ', ',vendors.vendstate)
AS city_state FROM employees JOIN vendors ON CONCAT(vendors.vendcity, ', ', vendors.vendstate) = CONCAT(employees.empcity, ', ', employees.empstate)
--11
SELECT CONCAT(customers.custfirstname, ' ', customers.custlastname) AS customer, customers.custstate FROM customers LEFT JOIN employees ON customers.custstate = employees.empstate
WHERE employees.empstate IS NULL
--12
Select AVG(retailprice) AS average_price FROM products WHERE categoryid = 1 AND productname LIKE '%Helmet%'
--13
SELECT MIN (shipdate) AS earliest_ship FROM orders
--14
SELECT SUM(ordertotal) FROM orders LEFT JOIN customers ON customers.customerid = orders.customerid WHERE customers.custstate = 'OR'
--15
SELECT CONCAT(employees.empfirstname, ' ', employees.emplastname) AS employee, SUM(orders.ordertotal) AS total_sales,
COUNT (employees.employeeid = orders.employeeid) AS item_quantity, AVG(orders.ordertotal) AS average_price
FROM employees LEFT JOIN orders ON employees.employeeid = orders.employeeid GROUP BY (employee) ORDER BY (average_price)DESC

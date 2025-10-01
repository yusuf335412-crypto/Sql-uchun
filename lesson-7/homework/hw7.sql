use hw7

--Easy-Level Tasks (10)
--Q1 
--Write a query to find the minimum (MIN) price of a product
--in the Products table.
select*from Products

select min(price) from Products

--Q2
-- Write a query to find the maximum (MAX) Salary from the Employees table
Select* from Employees
select max(salary) from Employees
--Q3
--Write a query to count the number of rows in the Customers table.
select * from Customers
select count(customerid) from Customers

--Q4
--Write a query to count the number of unique product categories from the Products table.
select * from Products
select productname, count(productname) from Products group by ProductName

--Q5
--Write a query to find the total sales amount for the product with id 7 in the Sales table.
SELECT * FROM SALES
SELECT SUM(SALEAMOUNT) FROM Sales WHERE PRODUCTID=7

--Q6
--Write a query to calculate the average salary of employees in the Employees table.
SELECT * FROM Employees
SELECT AVG(salary) FROM Employees
--Q7
--Write a query to count the number of employees in each department.
select departmentid, count(departmentid) from Employees group by DepartmentID

--q8
--Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
select * from Products
select productname, min(price), max(price) from Products GROUP BY ProductName

--Q9
--Write a query to calculate the total sales per Customer in the Sales table.
SELECT * FROM Sales

SELECT CUSTOMERID, SUM(SALEAMOUNT) FROM Sales GROUP BY CustomerID

--Q10
--Write a query to filter departments having more than 5 employees from the Employees table.
--(DeptID is enough, if you don't have DeptName).
SELECT * FROM Employees
SELECT DEPARTMENTID, COUNT(DEPARTMENTID) FROM EMPLOYEES GROUP BY DEPARTMENTID HAVING(COUNT(DEPARTMENTID)>5)

-- Medium-Level Tasks
--Q11
--Write a query to calculate the total sales and average sales for each product category from the Sales table
select*from Sales
select productid, sum(saleamount)as total ,avg(saleamount) as average from Sales group by productid

--Q12
--Write a query to count the number of employees from the Department HR.
SELECT *from Employees

select departmentid, count(departmentid) from Employees where DepartmentID=1 group by DepartmentID


--Q13
--Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).
SELECT *from Employees
select departmentid, max(salary) as highest, min(salary) as lowest from employees group by departmentid


--Q14
--Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).
select departmentid, AVG(salary) as average from Employees group by DepartmentID


--Q15
--Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).
select * from Employees
select departmentid, avg(salary), count(departmentid) from Employees group by DepartmentID

--Q16
--Write a query to filter product categories with an average price greater than 400.
select * from Products
select productname, avg(price) from Products group by ProductName having (avg(price)>400)


--Q17
--Write a query that calculates the total sales for each year in the Sales table.
select * from Sales

select year(saledate) AS YIL,sum(saleamount) from Sales GROUP BY YEAR(SALEDATE)

--Q18
--Write a query to show the list of customers who placed at least 3 orders.

select* from Sales
select Customerid, count(saleamount) from Sales group by CustomerID having(count(SaleAmount)>3)
--Q19
--Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you don't have DeptName).
select * from Employees
select departmentid, avg(salary) from Employees group by DepartmentID having(avg(salary)>60000)

--HARD LEVEL TASKS
--Q20
--Write a query that shows the average price for each product category, 
--and then filter categories with an average price greater than 150.
select * from Products
select productname, avg(price) from Products group by ProductName having(avg(price)>150)
--q21
--Write a query to calculate the total sales for each Customer, 
--then filter the results to include only Customers with total sales over 1500.

select * from Sales

select customerid, sum(saleamount) from Sales group by CustomerID having(sum(saleamount)>1500)
--q22
--Write a query to find the total and average salary of employees in each department, 
--and filter the output to include only departments with an average salary greater than 65000.
select * from Employees

select departmentId, sum(salary)as jami, avg(salary) ortacha from Employees group by DepartmentID having(avg(salary)>65000)

--q23
--Write a query to find total amount for the orders which weights more than $50 
--for each customer along with their least purchases.(least amount might be lower than 50, use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).
CREATE TABLE Orders (
        OrderID INT PRIMARY KEY,
        CustomerID INT,
        ProductID INT,
        OrderDate DATE,
        Quantity INT,
        TotalAmount DECIMAL(10, 2),
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
    );

    -- Insert 40 orders
INSERT INTO Orders VALUES
(1, 1, 2, '2023-05-14', 1, 800.00),
(2, 1, 3, '2024-09-07', 2, 800.00),
(3, 1, 4, '2022-11-22', 1, 250.00),
(4, 1, 5, '2021-03-30', 3, 150.00),

(5, 2, 6, '2025-07-19', 1, 30.00),

(6, 3, 7, '2022-08-25', 2, 300.00),
(7, 3, 8, '2024-06-10', 1, 200.00),

(8, 4, 9, '2021-12-04', 4, 40.00),

(9, 5, 10, '2023-02-18', 1, 10.00),
(10, 5, 11, '2025-09-27', 2, 360.00),

(11, 6, 12, '2023-10-11', 1, 500.00),
(12, 6, 13, '2024-04-03', 1, 25.00),
(13, 6, 14, '2022-07-29', 2, 60.00),

(14, 7, 15, '2021-01-22', 3, 135.00),

(15, 8, 16, '2025-11-15', 1, 80.00),

(16, 9, 17, '2022-10-08', 1, 60.00),
(17, 9, 18, '2023-06-21', 2, 40.00),
(18, 9, 19, '2021-09-13', 5, 50.00),

(19, 10, 20, '2025-03-05', 2, 50.00),

(20, 11, 21, '2024-08-14', 1, 60.00),
(21, 11, 22, '2022-12-01', 1, 100.00),

(22, 12, 23, '2023-09-09', 1, 15.00),
(23, 12, 24, '2021-07-18', 2, 180.00),

(24, 13, 25, '2025-06-23', 3, 15.00),

(25, 14, 26, '2023-03-12', 4, 100.00),
(26, 14, 27, '2022-04-07', 1, 450.00),

(27, 15, 28, '2024-11-30', 1, 600.00),

(28, 16, 29, '2021-02-25', 1, 500.00),

(29, 17, 30, '2025-05-28', 2, 240.00),

(30, 18, 31, '2023-08-20', 1, 350.00),
(31, 18, 32, '2022-01-17', 1, 450.00),

(32, 19, 33, '2025-09-10', 1, 40.00),

(33, 20, 34, '2021-04-04', 2, 100.00),
(34, 20, 35, '2024-07-15', 3, 120.00),
(35, 20, 36, '2022-10-31', 1, 60.00),

(36, 21, 37, '2023-12-22', 1, 35.00),

(37, 22, 38, '2021-06-06', 2, 110.00),
(38, 22, 39, '2025-02-01', 1, 40.00),

(39, 23, 40, '2023-11-26', 3, 120.00),
(40, 24, 1, '2024-03-09', 1, 1200.00);
select* from Orders
select * from Sales
--q23
--Write a query to find total amount for the orders which weights more than $50 
--for each customer along with their least purchases.(least amount might be lower than 50, 
--use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).

--q24
--Write a query that calculates the total sales and counts unique products
--sold in each month of each year, 
--and then filter the months with at least 2 products sold.(Orders)
select month(orderdate)as oylar,year(orderdate) as yillar, sum(totalamount), sum(quantity) from Orders group by month(orderdate),year(orderdate) having (sum(Quantity)>2)
--having(sum(quantity)>2)
select* from Orders
--q25
--Write a query to find the MIN and MAX order quantity per Year. From orders table

select YEAR(OrderDate), max(quantity) as maksimal, min(quantity) as minimal from orders group by YEAR(OrderDate)









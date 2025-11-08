create database hw16
go
use hw16


CREATE TABLE Numbers1(Number INT)

INSERT INTO Numbers1 VALUES (5),(9),(8),(6),(7)

CREATE TABLE FindSameCharacters
(
     Id INT
    ,Vals VARCHAR(10)
)
 
INSERT INTO FindSameCharacters VALUES
(1,'aa'),
(2,'cccc'),
(3,'abc'),
(4,'aabc'),
(5,NULL),
(6,'a'),
(7,'zzz'),
(8,'abc')



CREATE TABLE RemoveDuplicateIntsFromNames
(
      PawanName INT
    , Pawan_slug_name VARCHAR(1000)
)
 
 
INSERT INTO RemoveDuplicateIntsFromNames VALUES
(1,  'PawanA-111'  ),
(2, 'PawanB-123'   ),
(3, 'PawanB-32'    ),
(4, 'PawanC-4444' ),
(5, 'PawanD-3'  )





CREATE TABLE Example
(
Id       INTEGER IDENTITY(1,1) PRIMARY KEY,
String VARCHAR(30) NOT NULL
);


INSERT INTO Example VALUES('123456789'),('abcdefghi');


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');

CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);
INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
-- January 2025
(1, 1, 1, 1550.00, '2025-01-02'),
(2, 2, 2, 2050.00, '2025-01-04'),
(3, 3, 3, 1250.00, '2025-01-06'),
(4, 4, 4, 1850.00, '2025-01-08'),
(5, 5, 5, 2250.00, '2025-01-10'),
(6, 6, 6, 1450.00, '2025-01-12'),
(7, 7, 1, 2550.00, '2025-01-14'),
(8, 8, 2, 1750.00, '2025-01-16'),
(9, 9, 3, 1650.00, '2025-01-18'),
(10, 10, 4, 1950.00, '2025-01-20'),
(11, 1, 5, 2150.00, '2025-02-01'),
(12, 2, 6, 1350.00, '2025-02-03'),
(13, 3, 1, 2050.00, '2025-02-05'),
(14, 4, 2, 1850.00, '2025-02-07'),
(15, 5, 3, 1550.00, '2025-02-09'),
(16, 6, 4, 2250.00, '2025-02-11'),
(17, 7, 5, 1750.00, '2025-02-13'),
(18, 8, 6, 1650.00, '2025-02-15'),
(19, 9, 1, 2550.00, '2025-02-17'),
(20, 10, 2, 1850.00, '2025-02-19'),
(21, 1, 3, 1450.00, '2025-03-02'),
(22, 2, 4, 1950.00, '2025-03-05'),
(23, 3, 5, 2150.00, '2025-03-08'),
(24, 4, 6, 1700.00, '2025-03-11'),
(25, 5, 1, 1600.00, '2025-03-14'),
(26, 6, 2, 2050.00, '2025-03-17'),
(27, 7, 3, 2250.00, '2025-03-20'),
(28, 8, 4, 1350.00, '2025-03-23'),
(29, 9, 5, 2550.00, '2025-03-26'),
(30, 10, 6, 1850.00, '2025-03-29'),
(31, 1, 1, 2150.00, '2025-04-02'),
(32, 2, 2, 1750.00, '2025-04-05'),
(33, 3, 3, 1650.00, '2025-04-08'),
(34, 4, 4, 1950.00, '2025-04-11'),
(35, 5, 5, 2050.00, '2025-04-14'),
(36, 6, 6, 2250.00, '2025-04-17'),
(37, 7, 1, 2350.00, '2025-04-20'),
(38, 8, 2, 1800.00, '2025-04-23'),
(39, 9, 3, 1700.00, '2025-04-26'),
(40, 10, 4, 2000.00, '2025-04-29'),
(41, 1, 5, 2200.00, '2025-05-03'),
(42, 2, 6, 1650.00, '2025-05-07'),
(43, 3, 1, 2250.00, '2025-05-11'),
(44, 4, 2, 1800.00, '2025-05-15'),
(45, 5, 3, 1900.00, '2025-05-19'),
(46, 6, 4, 2000.00, '2025-05-23'),
(47, 7, 5, 2400.00, '2025-05-27'),
(48, 8, 6, 2450.00, '2025-05-31'),
(49, 9, 1, 2600.00, '2025-06-04'),
(50, 10, 2, 2050.00, '2025-06-08'),
(51, 1, 3, 1550.00, '2025-06-12'),
(52, 2, 4, 1850.00, '2025-06-16'),
(53, 3, 5, 1950.00, '2025-06-20'),
(54, 4, 6, 1900.00, '2025-06-24'),
(55, 5, 1, 2000.00, '2025-07-01'),
(56, 6, 2, 2100.00, '2025-07-05'),
(57, 7, 3, 2200.00, '2025-07-09'),
(58, 8, 4, 2300.00, '2025-07-13'),
(59, 9, 5, 2350.00, '2025-07-17'),
(60, 10, 6, 2450.00, '2025-08-01');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, CategoryID, ProductName, Price) VALUES
(1, 1, 'Laptop', 1000.00),
(2, 1, 'Smartphone', 800.00),
(3, 2, 'Tablet', 500.00),
(4, 2, 'Monitor', 300.00),
(5, 3, 'Headphones', 150.00),
(6, 3, 'Mouse', 25.00),
(7, 4, 'Keyboard', 50.00),
(8, 4, 'Speaker', 200.00),
(9, 5, 'Smartwatch', 250.00),
(10, 5, 'Camera', 700.00);


--Easy Tasks
--q1
--Create a numbers table using a recursive query from 1 to 1000.

with cte_numbers as (
select 1 as n 
union all
select n+1 from cte_numbers
where n<100)

select * from cte_numbers
with cte_numbers as ( select 1 as n) select * from cte_numbers

--q2
--Write a query to find the total sales per employee using a derived table.(Sales, Employees)
select * from sales
select *from Employees

select FirstName,total FROM employees e join 
(select employeeid,sum(salesamount) as total  from Sales group by EmployeeID) as s 
on e.EmployeeID=s.EmployeeID

--Q3
--Create a CTE to find the average salary of employees.(Employees)

SELECT * FROM EMPLOYEES
WITH CTE_AVERAGE_SALARY AS (
SELECT AVG(SALARY) AS AVR FROM Employees) 

SELECT AVR FROM CTE_AVERAGE_SALARY

--Q4
--Write a query using a derived table to find the highest sales for each product.(Sales, Products)

SELECT * FROM Sales
SELECT * FROM Products
SELECT * FROM PRODUCTS JOIN Sales ON PRODUCTS.ProductID=Sales.ProductID

SELECT * FROM Products JOIN (SELECT ProductID,MAX(SALESAMOUNT ) AS M FROM Sales GROUP BY ProductID) S
ON Products.ProductID=S.ProductID

/*IZOH BU YERDA JOIN QILAYOTGANDA NIMA ORQALI PRID ORQALI BO'LSA SUBQUERYDA HAM PRIDNI BERISH KK */

--Q5
--Beginning at 1, write a statement to double the number for each record,
--the max value you get should be less than 1000000.

WITH CTE_NUMS AS (
 SELECT 1 AS N 

 UNION ALL

 SELECT N * 2 FROM CTE_NUMS
 WHERE N * 2 <1000000)
SELECT* FROM CTE_NUMS
OPTION (MAXRECURSION 0);


--q6
--Use a CTE to get the names of employees who have made more than 5 sales.(Sales, Employees)

select * from Sales
select * from Employees

with cte_count as(
select employeeid,count(salesamount)AS TOTAL  from Sales group by EmployeeID
)
select concat_ws(' ',FirstName,LastName), total from cte_count c join Employees e on c.employeeid=e.EmployeeID


--Q7
--Write a query using a CTE to find all products with sales greater than $500.(Sales, Products)

select * from Sales
select * from Products

with cte_gr as (

select salesamount, ProductID from Sales where SalesAmount>500)

select * from cte_gr  c join Products p on p.ProductID=c.productid

--q8

--Create a CTE to find employees with salaries above the average salary.(Employees)


WITH cte_avg AS (
    SELECT  AVG(Salary) AS av FROM Employees 
)
SELECT EmployeeID, Salary
FROM Employees e1
WHERE Salary > (SELECT av FROM cte_avg)

---Medium Tasks
--Q1
--Write a query using a derived table to find the top 5 employees by the number of orders made.(Employees, Sales)
select * from employees
select * from sales




select top 5 s.EmployeeID, sanoq from

(select employeeid, count(salesamount) sanoq from Sales group by EmployeeID) s 
join Employees e on s.EmployeeID=e.EmployeeID

--q2
--Write a query using a derived table to find the sales per product category.(Sales, Products)
select* from Sales
select* from Products

select CategoryID, total from (
select categoryid, sum(salesamount) as total from Sales s 
join Products p on s.ProductID=p.ProductID group by CategoryID
) d

--q3

--Write a script to return the factorial of each value next to it.(Numbers1)



with cte_factorial as(

select number, 1 as counter, 1 as fact from Numbers1
union all

select number, counter +1, fact*(counter+1) from cte_factorial
where counter+1<=number)
select number, fact from cte_factorial
group by number
order by Number


--q4
--This script uses recursion to split 
--a string into rows of substrings for each character in the string.(Example)

select * from Example


with cte_example as (

select id, 1 as position, SUBSTRING(string,1,1) as character, len(string) as total_len

from example



union all

select id, position+1, substring(string,position+1,1), total_len from cte_example
where position+1<=total_len)

select id,position, character
from cte_example
order by id,position

--q5
--Use a CTE to calculate the sales difference between the current month
--and the previous month.(Sales)











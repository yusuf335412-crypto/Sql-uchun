create database hw15
go
use hw15

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (id, name, salary) VALUES
(1, 'Alice', 50000),
(2, 'Bob', 60000),
(3, 'Charlie', 50000);

--Task: Retrieve employees who earn the minimum salary in the company. Tables: employees (columns: id, name, salary)
--q1
SELECT *
FROM employees
WHERE salary = (SELECT MIN(salary) oz FROM employees);

--q2
--Retrieve products priced above the average price. Tables: products (columns: id, product_name, price)

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

INSERT INTO products (id, product_name, price) VALUES
(1, 'Laptop', 1200),
(2, 'Tablet', 400),
(3, 'Smartphone', 800),
(4, 'Monitor', 300);

select * from products
select * from products where price>(select avg(price) from products)

--q3
--Find Employees in Sales Department Task: Retrieve employees who work in the "Sales" department. 
--Tables: employees (columns: id, name, department_id), 
--departments (columns: id, department_name)

drop table employees

CREATE TABLE departmentss (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departmentss(id)
);

INSERT INTO departmentss (id, department_name) VALUES
(1, 'Sales'),
(2, 'HR');

INSERT INTO employees (id, name, department_id) VALUES
(1, 'David', 1),
(2, 'Eve', 2),
(3, 'Frank', 1);

select * from employees
select * from departmentss

--Find Employees in Sales Department Task: Retrieve employees who work in the "Sales" department. 
--Tables: employees (columns: id, name, department_id), 
--departments (columns: id, department_name)


select * from employees where department_id=(select id from departmentss where department_name='sales')


--q4

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers (customer_id, name) VALUES
(1, 'Grace'),
(2, 'Heidi'),
(3, 'Ivan');

INSERT INTO orders (order_id, customer_id) VALUES
(1, 1),
(2, 1);

--Retrieve customers who have not placed any orders. 
--Tables: customers (columns: customer_id, name), orders (columns: order_id, customer_id)

select* from customers
select* from orders
select * from customers where customer_id not in (select customer_id from orders)
--or
select * from customers where customer_id not in (select customer_id from orders where order_id in 

(select order_id from orders))

--q5

CREATE TABLE product (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category_id INT
);

INSERT INTO product (id, product_name, price, category_id) VALUES
(1, 'Tablet', 400, 1),
(2, 'Laptop', 1500, 1),
(3, 'Headphones', 200, 2),
(4, 'Speakers', 300, 2);

--Task: Retrieve products with the highest price in each category.
--Tables: products (columns: id, product_name, price, category_id)

select * from product




select * from product p1 where price=(select max(price) from product p2 where p1.category_id=p2.category_id)


--q6
drop table departments
CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

drop table employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, department_name) VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Jack', 80000, 1),
(2, 'Karen', 70000, 1),
(3, 'Leo', 60000, 2);

--Task: Retrieve employees working in the department with the highest average salary. 
--Tables: employees (columns: id, name, salary, department_id), departments (columns: id, department_name)

select* from employees
select * from departments
select * from 

select avg(salary) from employees 


select * from employees  where department_id=(
select top 1 department_id from employees group by department_id order by AVG(salary) desc)



--q7

drop table employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Mike', 50000, 1),
(2, 'Nina', 75000, 1),
(3, 'Olivia', 40000, 2),
(4, 'Paul', 55000, 2);

--Task: Retrieve employees earning more than the average salary in their department.
--Tables: employees (columns: id, name, salary, department_id)

select* from employees
select * from employees e1 where salary>(select avg(salary) from employees e2 where e1.department_id=e2.department_id)

/* izoh

conditional subquery avg, sum va boshqa agg funksiyalarni ma'lum kategoriya bo'yicha chiqarishga qulay, 

NEGA GROUP BY  subquery ichida ishlamaydi, chunki where salary ga bitta qiymat kerak, group by esa birinchi guruhga bo'lib,
keyin agg qiladi, shuning uchun where o'qiy olmayd

conditional subqueryda esa where bitta shartni bajarib selectga olib boradi, select esa bittani olib chiqaraveradi.
Where ning group by bilan ishlash prinspi bu yerda bizga turli natijalarni taqdim qilmoqda. Alhamdu lillah, zo'r !
*/


Gap shunda

--q8
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE grades (
    student_id INT,
    course_id INT,
    grade DECIMAL(4, 2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

INSERT INTO students (student_id, name) VALUES
(1, 'Sarah'),
(2, 'Tom'),
(3, 'Uma');

INSERT INTO grades (student_id, course_id, grade) VALUES
(1, 101, 95),
(2, 101, 85),
(3, 102, 90),
(1, 102, 80);

--Task: Retrieve students who received the highest grade in each course. 
--Tables: students (columns: student_id, name), grades (columns: student_id, course_id, grade)
select * from students
select * from grades


select * from students where student_id in ( 

select student_id from grades g1 where grade=(
select max(grade) from grades g2 where g1.course_id=g2.course_id) )

/* izoh

student_id in bilan bersak bu yerda faqat bitta columnni tanlay olamiz
*/


--q9


drop table products
CREATE TABLE products (
    id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    category_id INT
);

INSERT INTO products (id, product_name, price, category_id) VALUES
(1, 'Phone', 800, 1),
(2, 'Laptop', 1500, 1),
(3, 'Tablet', 600, 1),
(4, 'Smartwatch', 300, 1),
(5, 'Headphones', 200, 2),
(6, 'Speakers', 300, 2),
(7, 'Earbuds', 100, 2);

 --Find Third-Highest Price per Category Task: Retrieve products with the third-highest price in each category.
 --Tables: products (columns: id, product_name, price, category_id
 select * from products

 with jadval as  (select *, 
 ROW_NUMBER() over (partition by category_id order by price desc) rn
 from products)
 select * from jadval where rn=3

/* izoh

Bir so'z bilan sqlni qanday o'rganish mumkin degan savolga javob ber?

Clause lar ketma-ketligini bilan unga yaxshilab e'tibor ber

Masalan shu kodda 

select *, 
 ROW_NUMBER() over (partition by category_id order by price desc) rn
 from products where rn=3  

 qilsak hammasi joyidadek lekin, bu yerda where 1-ishlaydi u rn qayerdan oladi ? Hech qayerdan(
 Shuning uchun ham unga with bilan derived table qilib oldik. Endi hammasi joyida

Savolga yana qaytamiz :Bir gap bilan sqlni qanday o'rganish mumkinligini tushuntir

Clauselar ketma-ketligini bil va unga yaxshilab e'tibor ber*/


--q10

drop table employees
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Alex', 70000, 1),
(2, 'Blake', 90000, 1),
(3, 'Casey', 50000, 2),
(4, 'Dana', 60000, 2),
(5, 'Evan', 75000, 1);

select * from employees

--Task: Retrieve employees with salaries above the company average but below the maximum in their department.
--Tables: employees (columns: id, name, salary, department_id)


select * from employees e1  where salary <(select MAX(salary) from employees e2 where e1.department_id=e2.department_id)
and salary >(select AVG(salary)FROM employees 1)


select * from employees 


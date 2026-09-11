-- Employee Management System - DDL + Basic DML
-- Kiran Academy | 60 Practical Tasks
-- Database: company_db

-- =========================================================
-- PART A - DATABASE & TABLE CREATION
-- =========================================================

-- Task 1: Create database
CREATE DATABASE company_db;

-- Task 2: Use/select database
USE company_db;

-- Task 3: Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    joining_date DATE,
    status VARCHAR(20)
);

-- Task 4: Display table structure
DESC employees;

-- Task 5: Display all tables
SHOW TABLES;


-- =========================================================
-- PART B - INSERT OPERATIONS
-- =========================================================

-- Task 6
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (101, 'Rahul Patil', 'Development', 45000, 'Pune', '2026-01-10', 'Active');

-- Task 7
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (102, 'Priya Sharma', 'Testing', 38000, 'Mumbai', '2026-02-15', 'Active');

-- Task 8
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (103, 'Amit Joshi', 'Development', 52000, 'Pune', '2025-12-05', 'Active');

-- Task 9
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (104, 'Sneha Kulkarni', 'HR', 35000, 'Nashik', '2026-03-20', 'Active');

-- Task 10
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (105, 'Rohan Deshmukh', 'Support', 30000, 'Mumbai', '2026-04-01', 'Inactive');

-- Task 11
INSERT INTO employees
(employee_id, employee_name, department, salary, city, joining_date, status)
VALUES (106, 'Anjali More', 'Testing', 42000, 'Pune', '2026-05-12', 'Active');


-- =========================================================
-- PART C - BASIC SELECT QUERIES
-- =========================================================

-- Task 12: Display all records
SELECT * FROM employees;

-- Task 13: Display only employee_name
SELECT employee_name FROM employees;

-- Task 14: Display employee_name and salary
SELECT employee_name, salary FROM employees;

-- Task 15: Display employee_name, department and city
SELECT employee_name, department, city FROM employees;

-- Task 16: Display employees from Pune
SELECT * FROM employees WHERE city = 'Pune';

-- Task 17: Display employees from Mumbai
SELECT * FROM employees WHERE city = 'Mumbai';

-- Task 18: Display Development employees
SELECT * FROM employees WHERE department = 'Development';

-- Task 19: Display Testing employees
SELECT * FROM employees WHERE department = 'Testing';

-- Task 20: Display Active employees
SELECT * FROM employees WHERE status = 'Active';

-- Task 21: Display Inactive employees
SELECT * FROM employees WHERE status = 'Inactive';

-- Task 22: Display employee with employee_id = 103
SELECT * FROM employees WHERE employee_id = 103;

-- Task 23: Display Priya Sharma
SELECT * FROM employees WHERE employee_name = 'Priya Sharma';

-- Task 24: Salary greater than 40000
SELECT * FROM employees WHERE salary > 40000;

-- Task 25: Salary less than 40000
SELECT * FROM employees WHERE salary < 40000;

-- Task 26: Salary equal to 35000
SELECT * FROM employees WHERE salary = 35000;

-- Task 27: Salary greater than or equal to 42000
SELECT * FROM employees WHERE salary >= 42000;

-- Task 28: Pune employees whose status is Active
SELECT * FROM employees
WHERE city = 'Pune' AND status = 'Active';

-- Task 29: Development employees with salary greater than 45000
SELECT * FROM employees
WHERE department = 'Development' AND salary > 45000;

-- Task 30: Employees from Pune or Mumbai
SELECT * FROM employees
WHERE city = 'Pune' OR city = 'Mumbai';


-- =========================================================
-- PART D - UPDATE OPERATIONS
-- =========================================================

-- Task 31: Rahul Patil salary 45000 -> 48000
UPDATE employees
SET salary = 48000
WHERE employee_name = 'Rahul Patil';

-- Task 32: Rohan Deshmukh Inactive -> Active
UPDATE employees
SET status = 'Active'
WHERE employee_name = 'Rohan Deshmukh';

-- Task 33: Sneha Kulkarni Nashik -> Pune
UPDATE employees
SET city = 'Pune'
WHERE employee_name = 'Sneha Kulkarni';

-- Task 34: Priya Sharma Testing -> Development
UPDATE employees
SET department = 'Development'
WHERE employee_name = 'Priya Sharma';

-- Task 35: Employee 106 salary -> 45000
UPDATE employees
SET salary = 45000
WHERE employee_id = 106;

-- Task 36: Increase employee 103 salary by 3000
UPDATE employees
SET salary = salary + 3000
WHERE employee_id = 103;

-- Task 37: Increase all Testing employees by 2000
UPDATE employees
SET salary = salary + 2000
WHERE department = 'Testing';

-- Task 38: Change Mumbai to Mumbai Branch
UPDATE employees
SET city = 'Mumbai Branch'
WHERE city = 'Mumbai';


-- =========================================================
-- PART E - DELETE OPERATIONS
-- =========================================================

-- Task 39: Delete employee_id = 105
DELETE FROM employees
WHERE employee_id = 105;

-- Task 40: Delete Rohan Deshmukh
DELETE FROM employees
WHERE employee_name = 'Rohan Deshmukh';

-- Task 41: Delete all Inactive employees
DELETE FROM employees
WHERE status = 'Inactive';

-- Task 42: Delete employees with salary less than 30000
DELETE FROM employees
WHERE salary < 30000;

-- Task 43: Delete employee_id = 104
DELETE FROM employees
WHERE employee_id = 104;


-- =========================================================
-- PART F - ALTER TABLE / DDL PRACTICE
-- =========================================================

-- Task 44: Add email column
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Task 45: Add mobile column
ALTER TABLE employees
ADD COLUMN mobile VARCHAR(15);

-- Task 46: Change city size to VARCHAR(100)
ALTER TABLE employees
MODIFY COLUMN city VARCHAR(100);

-- Task 47: Rename employee_name to name
ALTER TABLE employees
RENAME COLUMN employee_name TO name;

-- Task 48: Delete mobile column
ALTER TABLE employees
DROP COLUMN mobile;

-- Task 49: Add experience column
ALTER TABLE employees
ADD COLUMN experience INT;

-- Task 50: Update experience for one employee
-- Example: update employee 101 with 2 years of experience
UPDATE employees
SET experience = 2
WHERE employee_id = 101;


-- =========================================================
-- PART G - TABLE-LEVEL DDL PRACTICE
-- =========================================================

-- Task 51: Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    location VARCHAR(100)
);

-- Task 52: Insert 3 department records
INSERT INTO departments (department_id, department_name, location)
VALUES
(1, 'Development', 'Pune'),
(2, 'Testing', 'Mumbai'),
(3, 'HR', 'Nashik');

-- Task 53: Display all department records
SELECT * FROM departments;

-- Task 54: Update one department location
UPDATE departments
SET location = 'Pune'
WHERE department_id = 2;

-- Task 55: Delete one department record
DELETE FROM departments
WHERE department_id = 3;

-- Task 56: Rename departments table
RENAME TABLE departments TO company_departments;

-- Task 57: Display structure of company_departments
DESC company_departments;

-- Task 58: Remove all records but keep table
TRUNCATE TABLE company_departments;

-- Task 59: Delete company_departments completely
DROP TABLE company_departments;

-- Task 60: Display all remaining tables
SHOW TABLES;


-- =========================================================
-- TOPICS USED
-- =========================================================
-- CREATE DATABASE
-- USE
-- CREATE TABLE
-- DESC / DESCRIBE
-- SHOW TABLES
-- INSERT
-- SELECT
-- WHERE
-- AND
-- OR
-- UPDATE
-- DELETE
-- ALTER TABLE
-- ADD COLUMN
-- MODIFY COLUMN
-- RENAME COLUMN
-- DROP COLUMN
-- RENAME TABLE
-- TRUNCATE TABLE
-- DROP TABLE

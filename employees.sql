SELECT * from employees;
---## TABLE _CREATE (employees) :

--    CREATE TABLE employees (
--     id INT PRIMARY KEY,
--     name VARCHAR(50),
--     designation VARCHAR(50),
--     manager INT,
--     hired_on DATE,
--     salary DECIMAL(10, 2),
--     commission DECIMAL(10, 2),
--     dept INT
-- );
-- INSERT INTO employees (id, name, designation, manager, hired_on, salary, commission, dept)
-- VALUES
-- (1, 'JOHNSON', 'ADMIN', 6, '1990-12-17', 18000, NULL, 4),
-- (2, 'HARDING', 'MANAGER', 9, '1998-02-02', 52000, 300, 3),
-- (3, 'TAFT', 'SALES I', 2, '1996-01-02', 25000, 500, 3),
-- (4, 'HOOVER', 'SALES I', 2, '1990-04-02', 27000, NULL, 3),
-- (5, 'LINCOLN', 'TECH', 6, '1994-06-23', 22500, 1400, 4),
-- (6, 'GARFIELD', 'MANAGER', 9, '1993-05-01', 54000, NULL, 4),
-- (7, 'POLK', 'TECH', 6, '1997-09-22', 25000, NULL, 4),
-- (8, 'GRANT', 'ENGINEER', 10, '1997-03-30', 32000, NULL, 2),
-- (9, 'JACKSON', 'CEO', NULL, '1990-01-01', 75000, NULL, 4),
-- (10, 'FILLMORE', 'MANAGER', 9, '1994-08-09', 56000, NULL, 2),
-- (11, 'ADAMS', 'ENGINEER', 10, '1996-03-15', 34000, NULL, 2),
-- (12, 'WASHINGTON', 'ADMIN', 6, '1998-04-16', 18000, NULL, 4),
-- (13, 'MONROE', 'ENGINEER', 10, '2000-12-03', 30000, NULL, 2),
-- (14, 'ROOSEVELT', 'CPA', 9, '1995-10-12', 35000, NULL, 1);

==>TABLE

+----+------------+-------------+---------+------------+---------+------------+------+
| ID | Name       | Designation | Manager | Hired On   | Salary  | Commission | Dept |
+----+------------+-------------+---------+------------+---------+------------+------+
|  1 | JOHNSON    | ADMIN       |       6 | 1990-12-17 |  18000  |    NULL    |    4 |
|  2 | HARDING    | MANAGER     |       9 | 1998-02-02 |  52000  |     300    |    3 |
|  3 | TAFT       | SALES I     |       2 | 1996-01-02 |  25000  |     500    |    3 |
|  4 | HOOVER     | SALES I     |       2 | 1990-04-02 |  27000  |    NULL    |    3 |
|  5 | LINCOLN    | TECH        |       6 | 1994-06-23 |  22500  |    1400    |    4 |
|  6 | GARFIELD   | MANAGER     |       9 | 1993-05-01 |  54000  |    NULL    |    4 |
|  7 | POLK       | TECH        |       6 | 1997-09-22 |  25000  |    NULL    |    4 |
|  8 | GRANT      | ENGINEER    |      10 | 1997-03-30 |  32000  |    NULL    |    2 |
|  9 | JACKSON    | CEO         |    NULL | 1990-01-01 |  75000  |    NULL    |    4 |
| 10 | FILLMORE   | MANAGER     |       9 | 1994-08-09 |  56000  |    NULL    |    2 |
| 11 | ADAMS      | ENGINEER    |      10 | 1996-03-15 |  34000  |    NULL    |    2 |
| 12 | WASHINGTON | ADMIN       |       6 | 1998-04-16 |  18000  |    NULL    |    4 |
| 13 | MONROE     | ENGINEER    |      10 | 2000-12-03 |  30000  |    NULL    |    2 |
| 14 | ROOSEVELT  | CPA         |       9 | 1995-10-12 |  35000  |    NULL    |    1 |
+----+------------+-------------+---------+------------+---------+------------+------+


----1. avarage slary
-- SELECT avg(salary)AS avaragesalary
-- From employees;

average_salary
--------------
36285.71



----2. heighest salary name and salary print
-- SELECT name , salary from employees
-- ORDER By salary DESC
-- LIMIT 1;

name     | salary
---------|--------
JACKSON  | 75000



----3. lowest salary id name salary print
-- SELECT id,name,salary from employees
-- ORDER BY salary ASC
-- LIMIT 1;

id | name    | salary
---|---------|--------
 1 | JOHNSON | 18000



----4. total number of employee
-- SELECT COUNT(*)AS TotalEmployee
-- FROM  employees;

total_employee
--------------
14



----5. minimum salary
-- SELECT min(salary)as MinimumSalary
-- FROM employees;

minimum_salary
--------------
18000


----6. maximum salary
-- SELECT max(salary)as MaximumSalary
-- FROM employees;

maximum_salary
--------------
75000



----7. Sum of all slary
-- SELECT sum(salary)as SumSalary
-- FROM employees;

sum_salary
----------
508000



----8. Find employees with a salary greater than 30000
-- SELECT id,name ,salary 
-- FROM  employees
-- where salary>30000;

id | name     | salary
---|----------|--------
 2 | HARDING  | 52000
 6 | GARFIELD | 54000
 8 | GRANT    | 32000
 9 | JACKSON  | 75000
10 | FILLMORE | 56000
11 | ADAMS    | 34000
13 | MONROE   | 30000
14 | ROOSEVELT| 35000



----9. Find employees with a salary between  30000-40000
-- SELECT id,name ,salary 
-- FROM  employees
-- where salary BETWEEN 30000 AND 40000;

id | name     | salary
---|----------|--------
 8 | GRANT    | 32000
11 | ADAMS    | 34000
13 | MONROE   | 30000
14 | ROOSEVELT| 35000




----10.  List all employees hired before 1995:
-- SELECT * 
-- FROM employees
-- WHERE hired_on<'1995-01-01';


id | name    | designation | manager | hired_on   | salary | commission | dept
---|---------|-------------|---------|------------|--------|------------|-----
 1 | JOHNSON | ADMIN       |       6 | 1990-12-17 | 18000  | NULL       | 4
 4 | HOOVER  | SALES I     |       2 | 1990-04-02 | 27000  | NULL       | 3
 6 | GARFIELD| MANAGER     |       9 | 1993-05-01 | 54000  | NULL       | 4
 9 | JACKSON | CEO         |    NULL | 1990-01-01 | 75000  | NULL       | 4
10 | FILLMORE| MANAGER     |       9 | 1994-08-09 | 56000  | NULL       | 2



----11. List employees who earn commission:
-- SELECT *
-- FROM  employees
-- WHERE commission IS NOT NULL AND commission>0;

id | name   | designation | manager | hired_on   | salary | commission | dept
---|--------|-------------|---------|------------|--------|------------|-----
 2 | HARDING| MANAGER     |       9 | 1998-02-02 | 52000  | 300        | 3
 3 | TAFT   | SALES I     |       2 | 1996-01-02 | 25000  | 500        | 3
 5 | LINCOLN| TECH        |       6 | 1994-06-23 | 22500  | 1400       | 4



----12. Count employees by designation
-- SELECT designation, COUNT(*) AS Num_Of_Emp
-- FROM employees
-- GROUP BY designation;

designation | num_of_emp
------------|------------
ADMIN       | 2
MANAGER     | 3
SALES I     | 2
TECH        | 2
ENGINEER    | 3
CEO         | 1
CPA         | 1



----13. List all managers:
-- SELECT * 
-- FROM employees 
-- WHERE designation = 'MANAGER';

id | name     | designation | manager | hired_on   | salary | commission | dept
---|----------|-------------|---------|------------|--------|------------|-----
 2 | HARDING  | MANAGER     |       9 | 1998-02-02 | 52000  | 300        | 3
 6 | GARFIELD | MANAGER     |       9 | 1993-05-01 | 54000  | NULL       | 4
10 | FILLMORE | MANAGER     |       9 | 1994-08-09 | 56000  | NULL       | 2



----14. List employees by department:
-- SELECT dept, COUNT(*) AS num_employees 
-- FROM employees
-- GROUP BY dept;

dept | num_employees
-----|--------------
 1   | 1
 2   | 4
 3   | 3
 4   | 6



----15. Find the average salary per designation/dept:
-- SELECT designation, AVG(salary)
-- FROM  employees
-- GROUP BY designation;

designation | avg_salary
------------|------------
ADMIN       | 18000.00
MANAGER     | 54000.00
SALES I     | 26000.00
TECH        | 23750.00
ENGINEER    | 32000.00
CEO         | 75000.00
CPA         | 35000.00


----16. Find employees without a manager:
-- SELECT * 
-- FROM employees
-- WHERE manager IS NULL;

id | name    | designation | manager | hired_on   | salary | commission | dept
---|---------|-------------|---------|------------|--------|------------|-----
 9 | JACKSON | CEO         |    NULL | 1990-01-01 | 75000  | NULL       | 4



----17.  Retrieve the second-highest salary:
-- SELECT id,name,max(salary) As  second_highest_Salary
-- FROM employees
-- WHERE salary<(SELECT max(salary) FROM employees);

id | name     | second_highest_salary
---|----------|----------------------
10 | FILLMORE | 56000




----18.  Find employees who earn more than the average salary:
-- SELECT name, salary
-- FROM employees
-- WHERE salary > (SELECT AVG(salary) FROM employees);

name     | salary
---------|--------
HARDING  | 52000
GARFIELD | 54000
JACKSON  | 75000
FILLMORE | 56000



----19.Find all employees with a salary greater than the salary of ‘LINCOLN’:
-- SELECT name, salary
-- FROM employees
-- WHERE salary > (SELECT salary FROM employees WHERE name = 'LINCOLN');

name     | salary
---------|--------
HARDING  | 52000
GARFIELD | 54000
GRANT    | 32000
JACKSON  | 75000
FILLMORE | 56000
ADAMS    | 34000
MONROE   | 30000
ROOSEVELT| 35000



----20. Update the salary of all employees by a 10% raise:
-- UPDATE employees
-- SET salary = salary * 1.10;


---21.List employees with a commission greater than 500:
-- SELECT id, name, commission
-- FROM employees
-- WHERE commission > 500;

id | name   | commission
---|--------|-----------
 5 | LINCOLN| 1400



----22.Select employees whose name starts with 'A':
-- SELECT id, name
-- FROM employees
-- WHERE name LIKE 'A%';

id | name
---|-----
11 | ADAMS



----23.List employees who joined between 1995 and 2000:
-- SELECT id, name, hired_on
-- FROM employees
-- WHERE hired_on BETWEEN '1995-01-01' AND '2000-12-31';

id | name   | hired_on
---|--------|----------
 2 | HARDING| 1998-02-02
 3 | TAFT   | 1996-01-02


24.
current_date_time print->

SELECT NOW() AS current_date_time;


25.select unique records

SELECT DISTINCT *
FROM employees;


25.--total number row

-- select count(*)
-- from employees;


26.Even Recoreds print

SELECT *
FROM employees
WHERE MOD(id, 2) = 0;

27.Odd Recoreds print

SELECT *
FROM employees
WHERE MOD(id, 2) = 1;

28.Duplicate name

SELECT name, COUNT(*) AS count
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;


29.Kth height slary

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET K-1;

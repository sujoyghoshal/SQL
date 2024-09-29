-- CREATE TABLE employee (
--     empid INT PRIMARY KEY,
--     empFname VARCHAR(50),
--     empLname VARCHAR(50),
--     department VARCHAR(50),
--     salary DECIMAL(10, 2)
-- );

-- INSERT INTO employee (empid, empFname, empLname, department, salary) VALUES
-- (1, 'John', 'Doe', 'HR', 50000.00),
-- (2, 'Jane', 'Smith', 'Finance', 55000.00),
-- (3, 'Robert', 'Johnson', 'IT', 60000.00),
-- (4, 'Emily', 'Davis', 'Marketing', 52000.00),
-- (5, 'Michael', 'Brown', 'Sales', 58000.00),
-- (6, 'Sarah', 'Wilson', 'HR', 51000.00),
-- (7, 'James', 'Taylor', 'Finance', 56000.00),
-- (8, 'Jessica', 'Anderson', 'IT', 62000.00),
-- (9, 'David', 'Thomas', 'Marketing', 53000.00),
-- (10, 'Laura', 'Jackson', 'Sales', 59000.00);

-- select * from employee;


-- select salary
-- from employee
-- order by salary desc
-- limit 2,1


select * from employee
where mod(empid,2)=0;


-- select *from employee
-- where mod(empid,2)=1;


-- select *from employee
-- where salary>50000;


-- select * from employee
-- where empid=(select min(empid)
-- from employee
-- )


-- select * from employee
-- where empid=(select max(empid)
-- from employee
-- )



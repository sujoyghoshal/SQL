-- CREATE TABLE student (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(50),
--     email VARCHAR(100)
-- );

-- INSERT INTO student (name, email) VALUES ('John Doe', 'john.doe@example.com'); -- Duplicate1
-- INSERT INTO student (name, email) VALUES ('Jane Smith', 'jane.smith@example.com'); -- Duplicate2
-- INSERT INTO student (name, email) VALUES ('John Doe', 'john.doe@example.com'); -- Duplicate1
-- INSERT INTO student (name, email) VALUES ('Emily Davis', 'emily.davis@example.com'); -- Duplicate
-- INSERT INTO student (name, email) VALUES ('Jane Smith', 'jane.smith@example.com');


--print table
-- select *
-- from student;


-- duplicate records print
SELECT name, email, COUNT(*)
FROM student
GROUP BY name, email
HAVING COUNT(*) > 1;


--unique records
-- SELECT DISTINCT name,email
-- FROM student;


--total number row
-- select count(*)
-- from student;


--Even record print
-- select *
-- from student
-- where mod(id,2)=0;

--Odd Records
-- SELECT *
-- FROM student
-- WHERE MOD(id, 2) = 1;


-- SELECT *
-- FROM student
-- WHERE name LIKE 'John%';


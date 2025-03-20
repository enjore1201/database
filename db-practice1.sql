-- CREATE DATABASE db_practice; 
-- USE db_practice;

-- CREATE TABLE employees (
-- 	user_id INT PRIMARY KEY AUTO_INCREMENT,
-- 	username VARCHAR(100) NOT NULL,
-- 	position VARCHAR(100) NOT NULL,
-- 	salary DECIMAL(10,2)
-- );

INSERT INTO employees (name, position, salary) VALUES
('혜린', 'PM', 90000),
('은우', 'Frontend', 80000),
('가을', 'Backend', 92000),
('지수', 'Frontend', 78000),
('민혁', 'Frontend', 96000),
('하온', 'Backend', 130000),

SELECT * FROM employees;

SELECT name, salary FROM employees WHERE position = Frontend AND salary;

UPDATE employees SET salary = salary *1.1 WHERE position = 'PM';
SELECT * FROM employees WHERE position = 'PM';

UPDATE employees SET salary = salary * 1.05 WHERE position  = 'Backend';

DELETE FROM employees WHERE name = '민혁';

SELECT position,
AVG(salary) AS avg_salary FROM employees GROUP BY position;

DROP TABLE employees;


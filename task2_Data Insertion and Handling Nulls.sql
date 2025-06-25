-- Task 2: Data Insertion and Handling Nulls
-- Author: Nandini Samdariya
-- Description: This script demonstrates INSERT, UPDATE, DELETE operations with NULL handling.

USE task2_db;

CREATE TABLE employees (
	id INT PRIMARY KEY,
	name VARCHAR(100),
	department VARCHAR(100),
	email VARCHAR(50) DEFAULT 'not_provided@example.com',
	manager_id INT
);
-- INSERT ROWS
INSERT INTO employees (id, name, department, email, manager_id) VALUES
(1, 'Nandini Samdariya', 'HR', NULL, NULL),
(2, 'Dimple Mundhra', 'IT', 'dimple@gmail.com', 1),
(3, 'Prerna Choudhary', 'Finance', DEFAULT, NULL),
(4, 'Palak Giri', 'IT', 'palak03@gmail.com', 2),
(5, 'Sonika Patawari', NULL, NULL, NULL);

-- UPDATE ROWS
SET SQL_SAFE_UPDATES = 0;

UPDATE employees
SET department = 'Unassigned'
WHERE department IS NULL;


UPDATE employees
SET email = 'not_provided@example.com'
WHERE email IS NULL;


UPDATE employees
SET manager_id = 1
WHERE manager_id IS NULL AND id != 1;

-- DELETE ROWS
DELETE FROM employees
WHERE department = 'Unassigned';

SELECT * FROM employees ;

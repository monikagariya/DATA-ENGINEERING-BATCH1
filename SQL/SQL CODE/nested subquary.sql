use record;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    department_id INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(255)
);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

INSERT INTO employees (employee_id, name, department_id, salary) VALUES
(1, 'John Doe', 1, 50000.00),
(2, 'Jane Smith', 1, 55000.00),
(3, 'Bob Johnson', 2, 60000.00),
(4, 'Alice Williams', 2, 62000.00),
(5, 'Charlie Brown', 3, 70000.00),
(6, 'David Davis', 3, 75000.00);

SELECT * FROM DEPARTMENTS;

SELECT employee_id, employee_name, department_id
FROM employee
WHERE department_id = (SELECT department_id FROM department WHERE department_name = 'IT');

    
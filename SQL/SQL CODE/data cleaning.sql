use record;
show tables;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Salary DECIMAL(10, 2)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Age, Salary) VALUES
(1, 'John', 'Doe', 30, 50000.50),
(2, 'Jane', 'Smith', NULL, 60000.75),
(3, 'Mike', NULL, 25, 55000.00),
(4, 'Alice', 'Jones', 28, 48000.00),
(5, 'Bob', 'Brown', 32, NULL),
(6, 'Eva', 'Green', 27, 62000.25);


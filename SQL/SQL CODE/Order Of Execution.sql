use dataclean;
create table car_list_prices(car_make varchar(20),car_model varchar(20),car_type varchar(20),car_price int);
insert into car_list_prices values("ford","mondeo","premium",18200);
insert into car_list_prices values("renault","fuego","sport",16500);
insert into car_list_prices values("citroen","cactus","premium",19000);
insert into car_list_prices values("ford","falcon","low cost",8990);
insert into car_list_prices values("ford","galaxy","standard",12400);
insert into car_list_prices values("renault","megane","standard",14300);
insert into car_list_prices values("citroen","picasso","premium",23400);#partition by using over
SELECT
    car_make,
    car_model,
    car_price,
    AVG(car_price) OVER() AS "overall average price",
    AVG(car_price) OVER (PARTITION BY car_type) AS "car type average price"
FROM car_list_prices

SELECT car_make,
       AVG(car_price) AS average_price,
       MAX(car_price) AS top_price
FROM   car_list_prices
GROUP BY car_make


SELECT car_make,
       car_model,
       car_price,
       AVG(car_price) OVER (PARTITION BY car_make) AS average_make
FROM   car_list_prices

#creating view
create view us_customer as
select car_make,car_model
from car_list_prices
where car_type = "premium";

 select * from car_list_prices
select * from us_customer;

#ORDER OF EXECUTION
Create table orders(order_id int primary key,name char(20),product_id int,quantity int);
create table products(id int primary key,name char(20),price int);

insert into orders value(1,"timmy",1,2),
(2,"tommy",1,1),
(3,"lonnie",5,3),
(4,"tobbi",4,3),
(5,"bonnie",1,3);

select * from orders;

insert into products value(1,"pencil",10),
(2,"pen",40),
(3,"ruler",20),
(4,"erasor",30),
(5,"paper",20);

select * from products;

SELECT O.name, 
	SUM(O.quantity*P.price) AS total_spent
FROM Orders O
JOIN Products P
	ON O.product_id = P.id
WHERE P.name = 'Pen'
GROUP BY O.name
ORDER BY total_spent DESC
LIMIT 1 OFFSET 1;

#NESTED SUBQUARY
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


SELECT employee_id, employee_name, department_id
FROM employee
WHERE department_id = (SELECT department_id FROM department WHERE department_name = 'IT');

#REGEXP
create table student(id int,name varchar(20));
insert into student values(1,"sarita"),
(2,"norton"),
(3,"saj"),
(4,"abel"),
(5,"Lorentz"),
(6,"Tobias"),
(7,"sewall"),
(8,"nerton");

select * from student;

#Match beginning of string(^): Gives all the names starting with ‘sa’.
SELECT name FROM student WHERE name REGEXP '^sa';

#Gives all the names ending with ‘on’.
SELECT name FROM student WHERE name REGEXP 'on$';

#Gives all the names containing ‘be’ or ‘ae’.
SELECT name FROM student WHERE name REGEXP 'be|ae' ;

#Gives all the names containing ‘j’ or ‘z’.
SELECT name FROM student WHERE name REGEXP '[jz]' ;

 #Retrieve all names that contain a letter in the range of ‘b’ and ‘g’, followed by any character, followed by the letter ‘a’
SELECT name FROM student WHERE name REGEXP '[b-g].[a]' ;

#Gives all the names not containing ‘j’ or ‘z’. 
SELECT name FROM student WHERE name REGEXP '[^jz]' ;

#Gives all the names starting with ‘n’ or ‘s’. 
SELECT name FROM student WHERE name REGEXP '^[ns]';

#ROLLUP COMMAND

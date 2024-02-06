show databases;
use record;
select * from employees_1;
select * from employees_2;
select * from student_1;
select * from student_2;

SELECT *FROM employees_1 UNION SELECT *FROM employees_2;
SELECT *FROM student_1 UNION SELECT *FROM student_2;

 SELECT *FROM employees_1 UNION ALL SELECT *FROM employees_2;
 
 SELECT *FROM employees_1 INTERSECT SELECT * FROM employees_2;
 
 /*SELECT *FROM employees_1 MINUS SELECT * FROM employees_2;
 
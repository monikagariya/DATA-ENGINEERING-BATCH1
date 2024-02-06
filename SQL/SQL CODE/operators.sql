use xtreme_db;
/*CREATE TABLE employee (emp_id INT, emp_name VARCHAR(255),
                                      emp_city VARCHAR(255),
									  emp_country VARCHAR(255),
                                      PRIMARY KEY (emp_id));
								
INSERT INTO employee VALUES(101,'Utkarsh Tripathi', 'Varanasi', 'India'),
     (102, 'Abhinav Singh', 'Varanasi','India'),
     (103, 'Utkarsh Raghuvanshi', 'Varanasi','India'),
     (104, 'Utkarsh Singh', 'Allahabad', 'India'),
     (105, 'Sudhanshu Yadav', 'Allahabad', 'India'),
     (106, 'Ashutosh Kumar', 'Patna', 'India');   */
     
SELECT * FROM employee WHERE emp_city = 'Allahabad' AND emp_country = 'India';
SELECT * FROM employee WHERE emp_city = 'Varanasi' OR emp_country = 'India';
SELECT * FROM employee WHERE emp_city IN ('Allahabad', 'Patna');
SELECT * FROM employee WHERE emp_city NOT LIKE 'A%';
SELECT * FROM employee WHERE emp_city LIKE 'P%';
SELECT * FROM employee WHERE emp_id BETWEEN 101 AND 104;
SELECT emp_name FROM employee WHERE EXISTS(SELECT emp_id FROM employee WHERE emp_city = 'Patna');
SELECT * FROM employee WHERE emp_id < SOME(SELECT emp_id FROM employee WHERE emp_city = 'Patna');
select distinct emp_name from employee;
select count(distinct emp_id) from employee;
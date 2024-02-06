use joins;
show tables;

select * from student;
select * from studentcourse;

/*inner join*/
SELECT StudentCourse.COURSE_ID, Student.NAME, Student.AGE FROM Student
INNER JOIN StudentCourse
ON Student.ROLLNO = StudentCourse.ROLLNO;

/*left join*/
SELECT Student.NAME,StudentCourse.COURSE_ID 
FROM Student
LEFT JOIN StudentCourse 
ON StudentCourse.ROLLNO = Student.ROLLNO;

/*right join*/
SELECT Student.NAME,StudentCourse.COURSE_ID 
FROM Student
RIGHT  JOIN StudentCourse 
ON StudentCourse.ROLLNO = Student.ROLLNO;

/*natural join*/
select * from student natural join studentcourse;

/*equi join*/
SELECT student1.name, student1.id, record.class, record.city
FROM student1, record
WHERE student1.city = record.city;

/*non-equi join*/
SELECT student1.name, record.id, record.city
FROM student1, record
WHERE Student1.id < Record.id 












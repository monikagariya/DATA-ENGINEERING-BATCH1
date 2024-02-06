create database  corelated;
use corelated;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(255),
    age INT
);

INSERT INTO students VALUES
(1, 'John Doe', 20),
(2, 'Jane Smith', 22),
(3, 'Bob Johnson', 21),
(4, 'Alice Brown', 23);

select * from students;

CREATE TABLE grades (
    student_id INT,
    subject VARCHAR(255),
    grade INT
);

INSERT INTO grades VALUES
(1, 'Math', 85),
(1, 'English', 90),
(2, 'Math', 78),
(2, 'English', 88),
(3, 'Math', 92),
(3, 'English', 85),
(4, 'Math', 80),
(4, 'English', 95);

select * from grades;

/*let's find students whose average grade is greater than the overall average:*/
SELECT student_id, student_name
FROM students s
WHERE (
    SELECT AVG(grade)
    FROM grades g
    WHERE g.student_id = s.student_id
) > (
    SELECT AVG(grade)
    FROM grades
);


/* find students who have scored more than 90 in at least one subject sql*/
SELECT student_id, student_name
FROM students s
WHERE EXISTS (
    SELECT 1
    FROM grades g
    WHERE g.student_id = s.student_id
    AND g.grade > 90
);


/*find students who did not score below 80 in any subject:*/
SELECT student_id, student_name
FROM students s
WHERE NOT EXISTS (
    SELECT 1
    FROM grades g
    WHERE g.student_id = s.student_id
    AND g.grade < 80
);


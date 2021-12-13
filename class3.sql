SELECT name, major
FROM student
ORDER BY name DESC;

SELECT student.name, student.major
FROM student;

SELECT *
FROM student
ORDER BY student_id DESC;

SELECT *
FROM student
ORDER BY major DESC, student_id;

SELECT *
FROM student
LIMIT 3;

SELECT *
FROM STUDENT
WHERE major = 'Chemistry' OR major = 'Biology';

SELECT *
FROM STUDENT
WHERE major <> 'Chemistry';

SELECT *
FROM STUDENT
WHERE name  IN ('Clai', 'Kate', 'Mike');
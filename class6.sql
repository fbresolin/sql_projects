-- find the number of employees
SELECT COUNT(emp_id)
FROM FROM employee;

--find the number of supervisor
SELECT COUNT(super_id)
FROM employee
WHERE (super_id = 100);

-- find thw number of female employees born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE (sex = 'F' AND birth_day > '1970-01-01');

-- find the average of employee salary
SELECT AVG(salary)
FROM employee;

-- find the average of male employee salary
SELECT AVG(salary)
FROM employee
WHERE (sex = 'M');

-- determine the sum of all employee salary
SELECT SUM(salary)
FROM employee;

-- find out how many males and females are in the company
SELECT sex, COUNT(sex)
FROM employee
GROUP BY sex;

-- select the sales for each salesman
SELECT emp_id, SUM(total_sales)
FROM works_with
GROUP BY emp_id;

-- select the sales for each salesman
SELECT client_id, SUM(total_sales)
FROM works_with
GROUP BY client_id;

-- find any client who is a LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC%';

-- find any employee born in october
SELECT *
FROM employee
WHERE birth_day LIKE '____-10%';

-- find any client who is a school
SELECT *
FROM client
WHERE client_name LIKE '%school%';
-- select all employees
SELECT * 
FROM employee;

-- select all clients
SELECT *
FROM client;

-- select all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary DESC;

-- select all employees ordered by sex and then name
SELECT *
FROM employee
ORDER BY sex DESC, first_name;


-- select first five employees in the table
SELECT *
FROM employee
ORDER BY emp_id
LIMIT 5;

-- find the first and last names of all employees
SELECT first_name, last_name
FROM employee;

-- find the forename and surname of all employees
SELECT first_name AS forename, last_name AS surname
FROM employee;

--  find all the different genders
SELECT DISTINCT sex
FROM employee;
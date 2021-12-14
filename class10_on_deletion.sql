-- deletion of Michael Scott, what happens to the database

-- on delete set null - anula o que identifica scott
-- nesse caso foi setado no database que ao deleter um manager
-- os valores são setados para null
DELETE FROM employee
WHERE emp_id = 102;

SELECT *
FROM branch;

SELECT *
FROM employee;

-- on delete cascade - remove todas referencias
-- branch supplier tem on delete cascade no banco de dados
DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier;

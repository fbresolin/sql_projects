-- find a list of employee and branch names
SELECT first_name AS Company_Names
FROM employee
UNION
SELECT branch_name
FROM branch;

-- find a list of all clients & branch supplier names
SELECT client_name AS Company_Names, client.branch_id AS IDs
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;

-- find a list of all money spent or earned
SELECT salary
FROM employee
UNION
SELECT total_sales
FROM works_with;
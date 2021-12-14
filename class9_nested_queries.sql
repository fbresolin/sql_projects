-- find names of all employees who have sold over 30000 to a single client
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id
    FROM works_with
    WHERE total_sales > 30000
);

-- find all clients who are handled by the branch that Michael Scott manages
-- assume you know Michael ID
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1 -- to grab just one value
);
USE emplyees;


select CONCAT(last_name, ', ', first_name) AS 'full_name'
from employees
limit 10;

select CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS 'full_name', birth_date AS DOB
from employees
limit 25;


SELECT CONCAT(first_name, ', ', last_name) AS full_name
FROM employees
LIMIT 25;
USE employees;

select CONCAT(first_name,' ', last_name)
from employees
where last_name like 'E%';


select *, datediff(now(), hire_date) days_since_hire
from employees
where hire_date like'199%'
and birth_date like '%12-25'
order by birth_date ASC, hire_date DESC
limit 5 offset 45;
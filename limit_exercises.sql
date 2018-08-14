USE employees;


select DISTINCT title FROM titles;

select DISTINCT last_name
FROM employees
order by last_name DESC
limit 10;


select *
from employees
where hire_date like'199%'
and birth_date like '%12-25'
order by birth_date, hire_date DESC
limit 5;


select *
from employees
where hire_date like'199%'
and birth_date like '%12-25'
order by birth_date ASC, hire_date DESC
limit 5 offset 45;
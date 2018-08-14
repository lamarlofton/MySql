USE employees;
-- starting the order exercises

select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name;


select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by first_name, last_name;


select *
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
order by last_name, first_name;




select *
from employees
where last_name like 'E%'
order by emp_no;


select *
from employees
where last_name like 'E%'
order by emp_no DESC;



select *
from employees
where hire_date like'%199'
and birth_date like '12-25%'
order by birth_date, hire_date DESC;

-- did not mess with anything under this line
select *
from employees
where birth_date like '%-12-25%';

select *
from employees
where last_name like '%q%';

select * from employees where first_name in ('Irena','Vidya', 'Maya')
and gender = 'M';


select *
from employees
where last_name like '%e'
or last_name like 'e%';

select *
from employees
where last_name like '%e'
and last_name like 'e%';

select *
from employees
where hire_date
like '199%'
and birth_date like '%12-25';


select *
from employees
where last_name like '%q%'
and
last_name not like '%qu%';



--first female
select * from employees
order by hire_date, gender DESC;

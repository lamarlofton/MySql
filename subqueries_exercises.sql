USE employees;


#Find all the employees with the same hire date as employee 101010 using a sub-query.
select
  first_name,
  last_name
from employees
where hire_date IN (
  select emp_no
  from employees
  where hire_date like '%101010r%'
);

#find all the titles held by al employees with the first name Aamod
select title
from titles
where emp_no IN (
  select emp_no
  from employees
  where first_name = 'Aamod'
);

#find all current dept_mgr that are female
select first_name, last_name
from employees
where gender = 'f'
and emp_no  in (
  select emp_no
  from dept_manager
  where to_date > curdate()
);


#Find all the department names that currently have female managers.
select dept_name
from departments
where dept_no in (
  select dept_no
  from dept_manager
  where to_date > curdate()
        and  emp_no in (
    select emp_no
    from employees
    where gender = 'f'
  )
);

#Find the first and last name of the employee with the highest salary.
select
  first_name, last_name
from employees
where emp_no in (
  select emp_no
  from salaries
  where salary > 158000
);


USE employees;

describe departments;

select * from dept_manager;

select * from departments;

select departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'department_manager'
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > now()
order by departments.dept_name
;

select gender, departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'department_manager'
from departments
  join dept_manager on departments.dept_no = dept_manager.dept_no
  join employees on dept_manager.emp_no = employees.emp_no
where dept_manager.to_date > now()
  and employees.gender = 'f'
order by departments.dept_name
;


select titles.title AS 'Title'
count() AS 'Count'
from titles
  join departments on departments.dept_no =
  join dept_emp on dept_emp.emp_no = titles.emp_no
where dept_emp.dept_no = 'd009'
  and titles.to_date > now()
  and dept_emp.to_date > now()
order by Title
;


select d.dept_name, CONCAT(e.first_name, ' ', e.last_name), salary
from employees e
join dept_manager manager on e.emp_no = manager.emp_no
join departments d on manager.dept_no = d.dept_no
join salaries s on e.emp_no = s.emp_no
where manager.to_date > now()
and s.to_date > now()
order by d.dept_name;



select
  d.dept_name,
  mortals.first_name,
  mortals.last_name,
  mgmt.first_name,
  mgmt.last_name,
  from employees mortals
join dept_emp emp on mortals.emp_no = emp.emp_no
join departments d on emp.dept_no = d.dept_no
join dept_manager manager on d.dept_no = manager.dept_no
join employees mgmt on manager.emp_no = mgmt.emp_no
where de.to_date >


  select first_name, last_name, birth_date
from employees e
where emp_no in (select emp_no
                    from dept_manager);




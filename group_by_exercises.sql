USE employees;

select *
from employees
where birth_date like '%-02-01';

select birth_date, count(birth_date) AS 'myFavPeople', first_name
from employees
where birth_date = '1961-05-03'
or birth_date = '1958-05-03'
group by birth_date, first_name
order by myFavPeople DESC;

select count(*) from employees where birth_date = '1958-05-03';

select count(*) from employees where birth_date = '1961-05-03';

select first_name, birth_date from employees where birth_date = '1961-05-03'
order by first_name;

select count(first_name), gender
from employees
where first_name = 'Kokou'
group by gender;


select * from employees
where first_name = 'Kokou' and gender = 'F';

select distinct title
from titles;


select distinct last_name
from employees
where last_name like 'e%'
and last_name like '%e'
group by last_name;


select distinct last_name, first_name
from employees
where last_name like 'e%'
and last_name like '%e'
group by last_name, first_name;


select distinct last_name
from employees
where last_name like '%q%'
and last_name not like '%qu%'
group by last_name;

select distinct last_name, first_name
from employees
group by last_name, first_name
order by count(*);


select distinct count(first_name), gender
from employees
where first_name, last_name
group by gender;


select count(first_name), gender
from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;
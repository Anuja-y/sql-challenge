select 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

-------

select 
	employees.first_name, 
	employees.last_name, 
	employees.hire_date
from employees
where hire_date like '%1986%';

-------

select
  dept_manager.dept_no,
  departments.dept_name,
  dept_manager.emp_no,
  employees.last_name,
  employees.first_name
from dept_manager 
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

--------

select
	dept_emp.dept_no,
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no;

--------

select 
	employees.first_name, 
	employees.last_name,
	employees.sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--------

select 
	employees.emp_no,
	employees.last_name,
	employees.first_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

---------

select 
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name in ('Sales', 'Development');

----------

select last_name,
count(*) as frequency
from employees
group by last_name
order by frequency desc;

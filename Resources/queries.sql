
-- List of the employee number, last name, first name, sex, and salary of each employee 
select 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.sex, 
	salaries.salary
from employees
join salaries on employees.emp_no = salaries.emp_no;

-------

--List of the first name, last name, and hire date for the employees who were hired in 1986
select 
	employees.first_name, 
	employees.last_name, 
	employees.hire_date
from employees
where hire_date like '%1986%';

-------

--List of the manager of each department along with their department number, department name, employee number, last name, and first name
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

--List of the department number for each employee along with that employee’s employee number, last name, first name, and department name
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

--List of first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select 
	employees.first_name, 
	employees.last_name,
	employees.sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--------

-- List of each employee in the Sales department, including their employee number, last name, and first name
select 
	employees.emp_no,
	employees.last_name,
	employees.first_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

---------

--List of each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
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

--List of the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) 
select last_name,
count(*) as frequency
from employees
group by last_name
order by frequency desc;

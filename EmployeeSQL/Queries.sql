--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT ee.emp_no, ee.last_name, ee.first_name, ee.sex, s.salary
from employees ee
LEFT JOIN salaries s
	on ee.emp_no = s.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT ee.last_name, ee.first_name, ee.hire_date
from employees ee
	where  ee.hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no, dm.emp_no, d.dept_name, ee.last_name, ee.first_name
from dept_manager dm
INNER JOIN departments d
	on d.dept_no = dm.dept_no
INNER JOIN employees ee
	on ee.emp_no = dm.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, d.dept_name, ee.last_name, ee.first_name
from employees ee
INNER JOIN dept_emp de
	on ee.emp_no = de.emp_no
INNER JOIN departments d
	on d.dept_no = de.dept_no

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT ee.emp_no, ee.last_name, ee.first_name, d.dept_name
from employees ee
INNER JOIN dept_emp de
	on ee.emp_no = de.emp_no
INNER JOIN departments d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT ee.emp_no, ee.last_name, ee.first_name, d.dept_name
from employees ee
INNER JOIN dept_emp de
	on ee.emp_no = de.emp_no
INNER JOIN departments d
	on de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(ee.last_name)
from employees ee
GROUP BY last_name
ORDER BY count(ee.last_name) desc


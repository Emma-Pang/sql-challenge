--1.list specific details about employees
SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.gender, 
	salaries.salary
FROM employees
LEFT JOIN salaries
on employees.emp_no = salaries.emp_no; 

--2.list all employees hired in 1986
SELECT *
FROM employees
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

--3.List the manager of each department with 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates
SELECT 
	departments.dept_no, 
	departments.dept_name, 
	dept_manager.emp_no,
	dept_manager.from_date,
	dept_manager.to_date,
	employees.last_name,
	employees.first_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--4.List the department of each employee with employee number, last name, first name
--and department name.
SELECT 
	dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

--5.List all employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	*
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--6.List all employees in the Sales department, including their employee number
--last name, first name, and department name.
SELECT
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT
	dept_emp.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY (frequency) DESC;
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

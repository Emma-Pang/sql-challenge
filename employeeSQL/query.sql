SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name, 
	employees.gender, 
	salaries.salary
FROM employees
LEFT JOIN salaries
on employees.emp_no = salaries.emp_no; 


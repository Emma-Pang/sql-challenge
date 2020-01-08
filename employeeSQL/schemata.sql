CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  gender VARCHAR(1),
  hire_date DATE
);

CREATE TABLE departments (
  dept_no VARCHAR(20) NOT NULL PRIMARY KEY,
  dept_name VARCHAR(20)
);


CREATE TABLE dept_manager (
  dept_no VARCHAR(20),
  emp_no INT,
  from_date DATE,
  to_date DATE
);

CREATE TABLE titles(
  emp_no INT NOT NULL,
  title VARCHAR,
  from_date DATE,
  to_date DATE
);

CREATE TABLE salaries(
  emp_no INT NOT NULL,
  salary INT,
  from_date DATE,
  to_date DATE
);

CREATE TABLE dept_emp(
  emp_no INT NOT NULL,
  dept_no VARCHAR(20),
  from_date DATE,
  to_date DATE
);


SELECT * FROM employees LIMIT 100;
SELECT * FROM dept_manager LIMIT 100;
SELECT * FROM salaries LIMIT 100;
SELECT * FROM titles LIMIT 100;
SELECT * FROM dept_emp LIMIT 100;
SELECT * FROM departments LIMIT 100;
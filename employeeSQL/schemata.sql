CREATE TABLE employees (
  emp_no INT NOT NULL PRIMARY KEY,
  birth_date DATE,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  gender VARCHAR(1),
  hire_date DATE
);

CREATE TABLE departments (
  dept_no INT NOT NULL PRIMARY KEY,
  dept_name VARCHAR
);

CREATE TABLE dept_manager (
  dept_no INT NOT NULL PRIMARY KEY,
  emp_no INT,
  from_date DATE,
  to_date DATE
);

CREATE TABLE titles(
  emp_no INT NOT NULL PRIMARY KEY,
  title VARCHAR,
  from_date DATE,
  to_date DATE
);

CREATE TABLE salaries(
  emp_no INT NOT NULL PRIMARY KEY,
  salary INT,
  from_date INT,
  to_date INT
);

CREATE TABLE dept_emp(
  emp_no INT NOT NULL PRIMARY KEY,
  dept_no INT,
  from_date DATE,
  to_date DATE
);

SELECT * FROM employees LIMIT 100;
SELECT * FROM dept_manager LIMIT 100;
SELECT * FROM salaries LIMIT 100;
SELECT * FROM titles LIMIT 100;
SELECT * FROM dept_emp LIMIT 100;
SELECT * FROM departments LIMIT 100;
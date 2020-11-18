--CREATING TABLE SCHEMATA

CREATE TABLE departments(
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
)

SELECT * from departments

CREATE TABLE salaries(
	emp_no VARCHAR PRIMARY KEY,
	salary VARCHAR
)

SELECT * from salaries

CREATE TABLE titles(
	title VARCHAR PRIMARY KEY,
	title_id VARCHAR
)

SELECT * from titles

CREATE table dept_manager(
	dept_no VARCHAR,
	emp_no VARCHAR,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)
SELECT * from dept_manager

CREATE table dept_emp(
	emp_no VARCHAR,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

SELECT * from dept_emp

CREATE TABLE employees(
	emp_no VARCHAR,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no, birth_date),
	FOREIGN KEY (emp_title) REFERENCES titles(title),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no))
	
SELECT * from employees
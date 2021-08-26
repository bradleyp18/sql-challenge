-- Creating table schema 
-- Create Departments 
CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);

SELECT * FROM departments

-- ---------------------------------------------------------
-- Create Employees Table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(15) NOT NULL,
	birth_date DATE,
	first_name VARCHAR (30),
	last_name VARCHAR (30), 
	sex VARCHAR(10), 
	hire_date DATE,
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees 

-- ---------------------------------------------------------
-- Create Salaries Table
CREATE TABLE salaries (
	emp_no INT, 
	salary BIGINT, 
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries

-- ---------------------------------------------------------
-- Create Dept_emp Table 
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp

-- ---------------------------------------------------------
-- Create Dept_manager Table 
CREATE TABLE dept_manager (
	dept_no VARCHAR (30) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager
-- ---------------------------------------------------------
-- Create Titles Table

CREATE TABLE titles (
	title_id VARCHAR (15) PRIMARY KEY NOT NULL,
	title VARCHAR(50)
);

SELECT * FROM titles

-- Queries Section 
-- ---
-- ---
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
	FROM employees
	LEFT JOIN salaries
	ON employees.emp_no = salaries.emp_no
	ORDER BY emp_no
-- This block of code above could be much cleaner (as it is below) but functionallity is still there 
-- ----------------------------------------------------------------------------------------------------------------------
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/1/1' AND '1986/12/31';

-- ----------------------------------------------------------------------------------------------------------------------
--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM departments as d
LEFT JOIN dept_manager as m
ON d.dept_no = m.dept_no
LEFT JOIN employees as e
ON m.emp_no = e.emp_no

-- ----------------------------------------------------------------------------------------------------------------------
--List the department of each employee with the following information: employee number, last name, first name,
--and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e 
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no 

-- ----------------------------------------------------------------------------------------------------------------------
--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin 
--with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';


-- ----------------------------------------------------------------------------------------------------------------------
--List all employees in the Sales department, including their employee number, last name, first name,
--and department name.

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no 
WHERE dept_name = 'Sales';


-- ----------------------------------------------------------------------------------------------------------------------
--List all employees in the Sales and Development departments, including their employee number, last name,
--first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.emp_no
LEFT JOIN departments as d
ON de.dept_no = d.dept_no 
WHERE dept_name = 'Sales' or dept_name = 'Development';




-- ----------------------------------------------------------------------------------------------------------------------
--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*)
AS "frequency_of_last_names"
FROM employees
GROUP BY last_name
ORDER BY "frequency_of_last_names" desc;

-- ------------------------
-- End of Querying Searches 
-- ------------------------
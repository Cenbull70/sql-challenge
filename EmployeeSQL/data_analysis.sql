--List the employee number, last name, first name, sex, and salary of each employee
SELECT
	a.emp_no,
	a.last_name,
	a.first_name,
	a.sex,
	b.salary
FROM employees as a
JOIN salaries AS b ON b.emp_no = a.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT
	first_name,
	last_name,
	hire_date
FROM employees
WHERE DATE_PART('year', hire_date) = 1986;

--List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT 
    b.dept_no,
    b.dept_name,
    c.emp_no,
    c.last_name,
    c.first_name
FROM dept_manager a
JOIN 
    departments b ON a.dept_no = b.dept_no
JOIN 
    employees c ON a.emp_no = c.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT
	b.dept_no,
	a.emp_no,
	a.last_name,
	a.first_name,
	c.dept_name
FROM employees as a
JOIN dept_emp as b ON a.emp_no = b.emp_no
JOIN departments as c ON b.dept_no = c.dept_no;


--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name 
SELECT
	c.dept_name,
	a.emp_no,
	a.last_name,
	a.first_name
FROM employees as a
JOIN dept_emp as b ON a.emp_no = b.emp_no
JOIN departments as c ON b.dept_no = c.dept_no
WHERE dept_name = 'Sales';

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT
	c.dept_name,
	a.emp_no,
	a.last_name,
	a.first_name
FROM employees as a
JOIN dept_emp as b ON a.emp_no = b.emp_no
JOIN departments as c ON b.dept_no = c.dept_no
WHERE dept_name = 'Sales' or dept_name = 'Development';


--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
SELECT
	last_name,
	COUNT(*) AS frequency
FROM 
	employees
GROUP BY
	last_name
ORDER BY
	frequency DESC;


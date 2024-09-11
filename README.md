# Employee Management Database

Welcome to the Employee Management Database repository. This project contains the SQL schema and queries designed to effectively manage employee records. The database encompasses various tables, including those for departments, titles, employees, salaries, and their interrelationships, facilitating comprehensive employee data management.

## Database Schema

The `Module9_ERD.sql` file establishes the following tables within the database:

- **employees**
    - `emp_no`: Employee number
    - `emp_title_id`: Title ID associated with the employee
    - `birth_date`: Employee's date of birth
    - `first_name`: Employee's first name
    - `last_name`: Employee's last name
    - `sex`: Employee's gender
    - `hire_date`: Date when the employee was hired

- **dept_manager**
    - `dept_no`: Department number
    - `emp_no`: Employee number of the department manager

- **departments**
    - `dept_no`: Department number
    - `dept_name`: Name of the department

- **dept_emp**
    - `emp_no`: Employee number
    - `dept_no`: Department number in which the employee works

- **salaries**
    - `emp_no`: Employee number
    - `salary`: Salary of the employee

- **titles**
    - `title_id`: Unique identifier for the title
    - `title`: Title of the employee

## SQL Queries

The `data_analysis.sql` file contains several SQL statements to retrieve valuable information from the database:

- Retrieve the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date of employees hired in 1986.
- Identify the manager of each department, including their department number, department name, employee number, last name, and first name.
- Display the department number for each employee, along with the employee's employee number, last name, first name, and department name.
- Find first names, last names, and sex of employees named Hercules with last names beginning with the letter B.
- List all employees in the Sales department, including their employee numbers, last names, and first names.
- Retrieve each employee in both the Sales and Development departments, including their employee numbers, last names, first names, and department names.
- Count the frequency of each last name among employees, displaying the counts in descending order.

We hope this database serves as a useful tool for managing employee information efficiently!

# sql-challenge
# Employee Management Database SCEHMATA 
This Employee Management Database is designed to handle employee records, departmental assignments, salaries, and titles within an organization. The database consists of several tables that store related information, ensuring data integrity through established relationships.

Employee: Stores basic information about employees.

emp_no: Unique identifier for each employee (Primary Key).
emp_title_id: Foreign key linking to the Titles table.
birth_date: Employee's date of birth.
first_name: Employee's first name.
last_name: Employee's last name.
sex: Employee's gender (M/F).
Hire_Date: Date when the employee was hired.
Titles: Stores the different job titles available in the organization.

title_id: Unique identifier for each title (Primary Key).
title: The name of the job title.
Dept_emp: Links employees to their respective departments.

emp_no: Employee identifier (Foreign Key referencing Employee).
dept_no: Department identifier (Foreign Key referencing Departments).
Salaries: Stores salary information for employees.

emp_no: Employee identifier (Primary Key and Foreign Key referencing Employee).
salary: Employee's salary amount.
Departments: Stores information about departments within the organization.

dept_no: Unique identifier for each department (Primary Key).
dept_name: Name of the department.
Dept_Manager: Links managers to their respective departments.

dept_no: Department identifier (Foreign Key referencing Departments).
emp_no: Employee identifier (Foreign Key referencing Employee).

# Relationships:

Employee has a one-to-one relationship with Salaries (one employee can have one salary record).
Employee has a many-to-one relationship with Titles (many employees can share the same title).
Dept_emp establishes a many-to-one relationship between Employee and Departments (an employee can belong to one department).
Dept_Manager establishes a many-to-one relationship between Employee and Departments (a department can have multiple managers).

# Employee Management Database Queries
This document outlines various queries designed to retrieve and analyze data from the Employee Management Database, which includes information about employees, salaries, departments, and titles.

## Overview of Queries
Employee Details with Salary: Retrieve the employee number, last name, first name, sex, and salary for each employee.

Employees Hired in 1986: List the first name, last name, and hire date of employees who were hired in the year 1986.

Department Managers: Display the manager of each department along with their department number, department name, employee number, last name, and first name.

Employee and Department Information: List the department number for each employee along with that employee's employee number, last name, first name, and department name.

Employees Named Hercule with Last Name Starting with B: Retrieve the first name, last name, and sex of each employee whose first name is Hercule and whose last name begins with the letter B.

Employees in Sales Department: List each employee in the Sales department, including their employee number, last name, and first name.

Employees in Sales and Development Departments: List each employee in the Sales and Development departments, including employee number, last name, first name, and department name.

Last Name Frequency Counts: Show the frequency counts of all employee last names in descending order, indicating how many employees share each last name.

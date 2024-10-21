# sql-challenge
Employee Management Database README
This Employee Management Database is designed to handle employee records, departmental assignments, salaries, and titles within an organization. The database consists of several tables that store related information, ensuring data integrity through established relationships.

Tables Overview:

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
Relationships:

Employee has a one-to-one relationship with Salaries (one employee can have one salary record).
Employee has a many-to-one relationship with Titles (many employees can share the same title).
Dept_emp establishes a many-to-one relationship between Employee and Departments (an employee can belong to one department).
Dept_Manager establishes a many-to-one relationship between Employee and Departments (a department can have multiple managers).

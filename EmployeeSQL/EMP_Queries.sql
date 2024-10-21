--1)List the employee number, last name, first name, sex, and salary of each employee

SELECT "Employee".emp_no,last_name,first_name,sex,salary
FROM "Employee","SALARIES" 
WHERE "Employee".emp_no = "SALARIES".emp_no

----2)List the first name, last name, and hire date for the employees who were hired in 1986

SELECT first_name, last_name, "Hire_Date" 
FROM "Employee"
WHERE EXTRACT(YEAR FROM "Hire_Date") = 1986;

---3)List the manager of each department along with their department number, department name,
-- employee number,last name, and first name

SELECT "Departments".dept_no,dept_name,"Dept_Manager".emp_no,"Employee".last_name,"Employee".first_name
FROM "Departments","Dept_Manager","Employee"
WHERE "Departments".dept_no = "Dept_Manager".dept_no
	AND "Dept_Manager".emp_no="Employee".emp_no


---4)List the department number for each employee along with that employee’s employee number, 
-- last name, first name, and department name

SELECT "Employee".emp_no,last_name,first_name,"Dept_emp".dept_no,"Departments".dept_name
FROM "Employee","Dept_emp","Departments"
WHERE "Employee".emp_no="Dept_emp".emp_no 
	AND "Dept_emp".dept_no="Departments".dept_no

---5)List first name, last name, and sex of each employee whose first name is Hercule
--   and whose last name begins with the letter B

SELECT first_name, last_name,sex 
FROM "Employee"
WHERE first_name='Hercules' AND last_name LIKE 'B%'

--6)List each employee in the Sales department, including their employee number, last name, and first name

SELECT "Employee".emp_no,last_name,first_name, "Departments".dept_name
FROM "Employee"
JOIN "Dept_emp" ON "Employee".emp_no = "Dept_emp".emp_no
JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name = 'Sales';

--7)List each employee in the Sales and Development departments,
--	including their employee number, last name, first name, and department name
SELECT "Employee".emp_no,last_name,first_name, "Departments".dept_name
FROM "Employee"
JOIN "Dept_emp" ON "Employee".emp_no = "Dept_emp".emp_no
JOIN "Departments" ON "Dept_emp".dept_no = "Departments".dept_no
WHERE "Departments".dept_name IN ('Sales', 'Development');

--8)List the frequency counts, in descending order, of all the employee 
--last names (that is, how many employees share each last name)

SELECT last_name, COUNT(*) AS frequency
FROM "Employee"
GROUP BY last_name
ORDER BY frequency DESC;
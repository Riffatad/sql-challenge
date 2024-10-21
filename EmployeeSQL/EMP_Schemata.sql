-- Drop the "Employee" table if it exists
-- DROP TABLE "Employee";

-- Create the "Employee" table to store employee details
CREATE TABLE "Employee" (
    "emp_no" INT NOT NULL,                -- Employee number (Primary Key)
    "emp_title_id" VARCHAR NOT NULL,      -- Foreign key linking to job titles
    "birth_date" Date NOT NULL,           -- Employee's date of birth
    "first_name" VARCHAR NOT NULL,        -- Employee's first name
    "last_name" VARCHAR NOT NULL,         -- Employee's last name
    "sex" CHAR NOT NULL,                  -- Employee's gender
    "Hire_Date" Date NOT NULL,            -- Date employee was hired
    CONSTRAINT "pk_Employee" PRIMARY KEY ("emp_no")  -- Primary key on employee number
);

-- Drop the "Titles" table if it exists
-- DROP TABLE "Titles";

-- Create the "Titles" table to store job titles
CREATE TABLE "Titles" (
    "title_id" VARCHAR NOT NULL,          -- Unique title ID (Primary Key)
    "title" VARCHAR NOT NULL,             -- Job title description
    CONSTRAINT "pk_Titles" PRIMARY KEY ("title_id")  -- Primary key on title ID
);

-- Drop the "Dept_emp" table if it exists
-- DROP TABLE "Dept_emp";

-- Create the "Dept_emp" table to store employee and department relationships
CREATE TABLE "Dept_emp" (
    "emp_no" INT NOT NULL,                -- Foreign key linking to employee number
    "dept_no" VARCHAR NOT NULL,           -- Foreign key linking to department number
    CONSTRAINT "pk_Dept_emp" PRIMARY KEY ("emp_no", "dept_no")  -- Composite primary key on employee and department
);

-- Drop the "SALARIES" table if it exists
--DROP TABLE "SALARIES";

-- Create the "SALARIES" table to store employee salaries
CREATE TABLE "SALARIES" (
    "emp_no" INT NOT NULL,                -- Foreign key linking to employee number
    "salary" INT NOT NULL,                -- Employee's salary
    CONSTRAINT "pk_SALARIES" PRIMARY KEY ("emp_no")  -- Primary key on employee number
);

-- Drop the "Departments" table if it exists
--DROP TABLE "Departments";

-- Create the "Departments" table to store department details
CREATE TABLE "Departments" (
    "dept_no" VARCHAR NOT NULL,           -- Department number (Primary Key)
    "dept_name" VARCHAR NOT NULL,         -- Department name
    CONSTRAINT "pk_Departments" PRIMARY KEY ("dept_no")  -- Primary key on department number
);

-- Drop the "Dept_Manager" table if it exists
-- DROP TABLE "Dept_Manager";

-- Create the "Dept_Manager" table to store department manager information
CREATE TABLE "Dept_Manager" (
    "dept_no" VARCHAR NOT NULL,           -- Foreign key linking to department number
    "emp_no" INT NOT NULL,                -- Foreign key linking to employee number
    CONSTRAINT "pk_Dept_Manager" PRIMARY KEY ("dept_no", "emp_no")  -- Composite primary key on department and employee
);

-- Select all records from each table for review
SELECT * FROM "Employee";
SELECT * FROM "SALARIES";
SELECT * FROM "Departments";
SELECT * FROM "Dept_Manager";
SELECT * FROM "Dept_emp";
SELECT * FROM "Titles";

-- Add foreign key constraints to ensure consistency between tables

-- Employee to Salaries: Each employee number must exist in the SALARIES table
ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "SALARIES" ("emp_no");

-- Employee to Titles: Each employee title ID must exist in the Titles table
ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_title_id" FOREIGN KEY("emp_title_id")
REFERENCES "Titles" ("title_id");

-- Dept_emp to Employee: Each employee number must exist in the Employee table
ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

-- Dept_emp to Departments: Each department number must exist in the Departments table
ALTER TABLE "Dept_emp" ADD CONSTRAINT "fk_Dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

-- Dept_Manager to Departments: Each department number must exist in the Departments table
ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

-- Dept_Manager to Employee: Each employee number must exist in the Employee table
ALTER TABLE "Dept_Manager" ADD CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

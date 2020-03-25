Departments
-
Dept_No VARCHAR(10) PK
Dept_Name VARCHAR(50)

Dept_Emp
-
Emp_No INTEGER PK FK - Employees.Emp_No
Dept_No VARCHAR(10) FK -< Departments.Dept_No
From_Date DATE
To_Date DATE

Dept_Manager
-
Dept_No VARCHAR(10) PK FK >- Departments.Dept_No
Emp_No INTEGER  FK - Employees.Emp_No
From_Date DATE
To_Date DATE

Employees
-
Emp_No INTEGER PK
Birth_Date DATE
First_Name VARCHAR(255)
Last_Name VARCHAR(255)
Gender VARCHAR(3)
Hire_Date DATE

Salaries
-
Emp_No INTEGER PK FK - Employees.Emp_No
Salary INTEGER
From_Date DATE
To_Date DATE

Titles
-
Emp_No INTEGER PK FK - Employees.Emp_No
Title VARCHAR(30)
From_Date DATE
To_Date DATE

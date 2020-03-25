--#1	 

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no=s.emp_no;

--#2

SELECT e.last_name, e.first_name, e.hire_date
FROM employees AS e
WHERE hire_date BETWEEN '1986-1-1' AND '1986-12-31';

--#3

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager AS m
JOIN departments AS d
ON m.dept_no=d.dept_no
JOIN employees AS e
ON m.emp_no=e.emp_no;

--#4

SELECT d.emp_no, e.last_name, e.first_name, r.dept_name
FROM dept_emp AS d
JOIN employees AS e
ON d.emp_no=e.emp_no
JOIN departments AS r
ON d.dept_no=r.dept_no;

--#5

SELECT e.first_name, e.last_name
FROM employees AS e
WHERE first_name='Hercules' AND last_name LIKE 'B%';

--#6

SELECT m.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS m
JOIN employees AS e
ON m.emp_no=e.emp_no
JOIN departments AS d
ON m.dept_no=d.dept_no
WHERE d.dept_name='Sales';

--#7

SELECT m.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS m
JOIN employees AS e
ON m.emp_no=e.emp_no
JOIN departments AS d
ON m.dept_no=d.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development';

--#8

SELECT last_name, COUNT(last_name) AS "number"
FROM employees
GROUP BY last_name
ORDER BY "number" DESC;
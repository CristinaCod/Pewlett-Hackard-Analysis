--Retirement Titles table (step 1-7)
SELECT employees.emp_no, 
employees.first_name, 
employees.last_name,
titles.title,
titles.from_date,
titles.to_date
INTO retirement_titles
FROM employees
JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows (step 8-15)
SELECT DISTINCT ON (emp_no) retirement_titles.emp_no, retirement_titles.first_name, retirement_titles.last_name, retirement_titles.title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

--Retiring titles table (step 16-22)
SELECT title, COUNT(title) AS "retiring count"
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY "retiring count" DESC;

SELECT * FROM retiring_titles;

--DELIVERABLE 2
SELECT DISTINCT ON(employees.emp_no)
employees.emp_no, 
employees.first_name, 
employees.last_name,
employees.birth_date,
dept_emp.from_date,
dept_emp.to_date,
titles.title
INTO mentorship_eligibilty 
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (dept_emp.to_date = '9999-01-01')
ORDER BY employees.emp_no;

SELECT * FROM mentorship_eligibilty;
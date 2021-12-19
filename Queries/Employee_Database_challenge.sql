-- Deliverable 1

-- retirement_titles
SELECT e.emp_no, 
e.first_name, 
e.last_name, 
ti.title, 
ti.from_date, 
ti.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- unique_titles
SELECT DISTINCT ON (emp_no) emp_no, 
first_name, 
last_name, 
title
INTO unique_titles
FROM retirement_titles
-- Deliverable 1 Instruction 11. "Exclude those employees that have
-- already left the company by filtering on to_date to keep only
-- those dates that are equal to '9999-01-01'." 
-- However, with this filter added, the numbers in the retiring_titles
-- table are different from the image. 
-- Hence, comments added here and below. 
-- WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- retiring_titles
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT DESC;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no, de.emp_no, ti.emp_no) e.emp_no,
e.first_name,
e.last_name,
e.birth_date,
de.from_date,
de.to_date,
ti.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
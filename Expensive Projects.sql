/*
Exercise: Expensive Projects
URL: https://platform.stratascratch.com/coding-question?id=10301&python=
*/

SELECT
	title AS "Project Title",
	budget / COUNT(emp_id) AS "Budget per Employee"
FROM
	ms_emp_projects,
	ms_projects
WHERE
	id = project_id
GROUP BY
	title,
	budget
ORDER BY
	2 DESC

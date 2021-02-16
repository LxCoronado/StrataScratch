/*
Exercise: Salaries Differences
URL: https://platform.stratascratch.com/coding-question?id=10308&python=
*/

SELECT
	(
	(SELECT
		MAX(salary)
	FROM
		db_employee AS db_employee,
		db_dept AS db_dept
	WHERE
		db_employee.department_id = db_dept.id
	AND
		db_dept.department = 'marketing') - 
	(SELECT
		MAX(salary)
	FROM
		db_employee AS db_employee,
		db_dept AS db_dept
	WHERE
		db_employee.department_id = db_dept.id
	AND
		db_dept.department = 'engineering')
	) as "Difference"
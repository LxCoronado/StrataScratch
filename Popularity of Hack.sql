/*
Exercise: Popularity of Hack
URL: https://platform.stratascratch.com/coding-question?id=10061&python=
*/
SELECT
	location,
	AVG(popularity)
FROM
	facebook_employees
JOIN
	facebook_hack_survey
ON
	id = employee_id
GROUP BY
	location
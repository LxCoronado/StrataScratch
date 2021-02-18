/*
Exercise: Count the number of movies that Abigail Breslin nominated for oscar
URL: https://platform.stratascratch.com/coding-question?id=10128&python=
*/

SELECT
	COUNT(movie)
FROM
	oscar_nominees
WHERE
	nominee = 'Abigail Breslin'
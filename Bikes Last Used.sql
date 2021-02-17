/*
Exercise: Bikes Last Used
URL: https://platform.stratascratch.com/coding-question?id=10176&python=
*/

SELECT
	bike_number,
	MAX(end_time)	
FROM
	dc_bikeshare_q1_2012
GROUP BY
	bike_number
ORDER BY
	MAX(end_time) DESC
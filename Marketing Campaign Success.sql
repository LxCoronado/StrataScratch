/*
Exercise: Marketing Campaign Success [Simple]
URL: https://platform.stratascratch.com/coding-question?id=10309&python=
*/


SELECT
	COUNT(DISTINCT Users) AS Total_Users
FROM
	(SELECT
		user_id AS Users,
		COUNT(DISTINCT created_at) AS Dates,
		COUNT(DISTINCT product_id) AS Products
	FROM
		marketing_campaign
	GROUP BY
		user_id) AS Filtered
WHERE
	Dates > 1
AND
	Products > 1

/*

SELECT
	COUNT(mc1.created_at)
FROM
	marketing_campaign mc1
WHERE
	mc1.created_at > (SELECT MIN(mc2.created_at) FROM marketing_campaign mc2 WHERE mc2.user_id = mc1.user_id)
AND
	(SELECT DISTINCT COUNT(mc2.product_id) FROM marketing_campaign mc2 WHERE mc2.user_id = mc1.user_id) > 1





SELECT
	(
		SELECT
			


SELECT
	COUNT(DISTINCT mc1.user_id)
FROM
	marketing_campaign mc1
WHERE
	(SELECT DISTINCT
		COUNT(mc2.created_at)
	FROM
		marketing_campaign mc2
	WHERE
		mc1.user_id = mc2.user_id) > 1
AND
	(SELECT DISTINCT
		COUNT(mc2.product_id)
	FROM
		marketing_campaign mc2
	WHERE
		mc1.user_id = mc2.user_id) > 1





SELECT DISTINCT
	user_id,
	COUNT(product_id)
FROM
	marketing_campaign
GROUP BY
	user_id


SELECT
	MIN(mc2.created_at)
FROM
	marketing_campaign mc2
WHERE
	mc2.user_id = mc1.user_id


user_id
created_at
product_id
quantity
price

*/
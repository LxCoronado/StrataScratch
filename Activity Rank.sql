/*
Exercise: Activity Rank
URL: https://platform.stratascratch.com/coding-question?id=10165&python=
*/

SELECT
	from_user,
	COUNT(id),
	NTILE(100) OVER(
                  ORDER BY
                    COUNT(id)
                  )
FROM
	google_gmail_emails
GROUP BY
	from_user
ORDER BY
    	NTILE(100) OVER( ORDER BY COUNT(id)) DESC
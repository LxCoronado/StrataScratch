/*
Exercise: Find all posts which were reacted to with a heart
https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart
*/

SELECT DISTINCT facebook_posts.POST_ID,facebook_posts.POSTER,facebook_posts.POST_TEXT, facebook_posts.POST_KEYWORDS,facebook_posts.POST_DATE
FROM facebook_posts facebook_posts
INNER JOIN facebook_reactions facebook_reactions
ON facebook_posts.POST_ID = facebook_reactions.POST_ID
AND facebook_reactions.REACTION = 'heart'

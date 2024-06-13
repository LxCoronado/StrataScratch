/*
Exercise: Artists on the Spotify ranking
URL: https://platform.stratascratch.com/coding/9992-find-artists-that-have-been-on-spotify-the-most-number-of-times?code_type=7
*/

  SELECT ARTIST
       , COUNT(*)
    FROM spotify_worldwide_daily_song_ranking
GROUP BY ARTIST
ORDER BY COUNT(*) DESC

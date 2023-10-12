SELECT g.genre_name AS genero, COUNT(movie.movie_id) AS numero
FROM movie
         JOIN movie_genres ON movie.movie_id = movie_genres.movie_id
         JOIN genre AS g ON movie_genres.genre_id = g.genre_id
WHERE strftime('%Y', movie.release_date) = '2010'
GROUP BY g.genre_name
ORDER BY numero DESC;


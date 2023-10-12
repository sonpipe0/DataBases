SELECT persona.person_name AS actor, movie_cast.character_name AS rol
FROM movie
         JOIN movie_cast ON movie.movie_id = movie_cast.movie_id
         JOIN person AS persona ON movie_cast.person_id = persona.person_id
WHERE movie.title = 'Blade Runner'
ORDER BY movie_cast.cast_order ASC;


SELECT persona.person_name AS nombre,
       movie.title AS pelicula,
       movie.budget AS presupuesto,
       movie_cast.character_name AS rol,
       movie_crew.job AS ocupacion
FROM movie JOIN movie_cast ON movie.movie_id = movie_cast.movie_id
           JOIN person AS persona ON movie_cast.person_id = persona.person_id
           JOIN movie_crew ON movie.movie_id = movie_crew.movie_id AND persona.person_id = movie_crew.person_id
WHERE movie.budget >= 210*(pow(10,6))
  AND movie_cast.person_id = movie_crew.person_id
  AND movie_cast.movie_id = movie_crew.movie_id
ORDER BY movie.budget DESC;


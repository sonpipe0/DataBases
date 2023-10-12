SELECT persona.person_name AS nombre, crew.job AS ocupacion, COUNT(*) AS n_peliculas
FROM
    movie_crew AS crew JOIN person AS persona ON crew.person_id = persona.person_id
WHERE crew.job = 'Director'
GROUP BY persona.person_name, crew.job
HAVING COUNT(*) > 10
ORDER BY n_peliculas DESC;

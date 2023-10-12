SELECT mov.title AS titulo, gen.genre_name AS genero, mov.release_date as fecha,mov.vote_average as votos_prom
FROM
    movie as mov JOIN movie_genres as movg
ON mov.movie_id = movg.movie_id AND strftime('%Y',mov.release_date) = '2006'
JOIN genre AS gen
ON movg.genre_id = gen.genre_id AND gen.genre_name = 'Documentary'
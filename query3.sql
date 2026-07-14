SELECT  CONCAT("directors"."first_name", "directors"."last_name") AS "directors_name", COUNT(DISTINCT "movies_genres"."genre") AS "total" FROM "directors"
JOIN "movies_directors" ON "directors"."id" = "movies_directors"."director_id"
JOIN "movies" ON "movies_directors"."movie_id" = "movies"."id"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
GROUP BY "directors_name" 
ORDER BY "total" 
DESC LIMIT (50);

SELECT "actors"."id", "actors"."first_name", "actors"."last_name", COUNT("roles"."role") AS "jumlah_roles"
FROM "actors"
JOIN "roles" ON "actors"."id" = "roles"."actor_id"
GROUP BY "actors"."id", "actors"."first_name", "actors"."last_name"
HAVING COUNT("roles"."role") > 5
ORDER BY "jumlah_roles" DESC LIMIT (100);

SELECT CONCAT("directors"."first_name","directors"."last_name") AS "directors_name", COUNT("movies"."id") AS "jumlah_film" FROM "directors"
JOIN "movies_directors" ON "directors"."id" = "movies_directors"."director_id" 
JOIN "movies" ON "movies_directors"."movie_id" = "movies"."id"
GROUP BY "directors_name"
ORDER BY "jumlah_film" DESC LIMIT (1);


SELECT "year", COUNT("year") AS "total" FROM "movies" 
GROUP BY "year" 
ORDER BY "total" DESC LIMIT (1) ;


SELECT "movies"."name", STRING_AGG("movies_genres"."genre", ', ') AS "genre" FROM "movies_genres"
JOIN "movies" ON "movies_genres"."movie_id" = "movies"."id"
GROUP BY "movies"."name" LIMIT(50); 

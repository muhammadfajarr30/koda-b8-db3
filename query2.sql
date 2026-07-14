SELECT "m"."name" AS "movies", "m"."year", "m"."rankscore","d"."first_name" AS "director_firstName", "d"."last_name" AS "director_lastName" FROM "movies" "m" 
JOIN "movies_directors" "md" ON "m"."id" = "md"."movie_id"
JOIN "directors" "d" ON "md"."director_id" = "d"."id"
JOIN "movies_genres" "mg" ON "m"."id" = "mg"."movie_id"
LIMIT 50;

SELECT "actors"."first_name" AS "actor_firstName", "actors"."last_name" AS "actors_firstName", "r"."role", "m"."name" AS "movies"  FROM "actors" 
JOIN "roles" "r" ON "r"."actor_id" = "actors"."id"
JOIN "movies" "m" ON "m"."id" = "r"."movie_id" 
LIMIT 50; 
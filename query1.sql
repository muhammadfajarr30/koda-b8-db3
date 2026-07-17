SELECT "year", "name"  FROM "movies" WHERE "year" > 2000;

SELECT  "last_name","gender","id" FROM "actors" WHERE "last_name" LIKE '%s';

SELECT "name", "rankscore" FROM "movies" WHERE "rankscore" BETWEEN 5 AND 7 AND "year" BETWEEN 2004 and 2007;

SELECT COUNT("name") FROM "movies" WHERE "rankscore" = 6;

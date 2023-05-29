SELECT f.uniquecarrier, c.description, count(*) AS ct
FROM minio.ontime.flights_orc f,
postgresql.airline.carrier c
WHERE c.code = f.uniquecarrier
GROUP BY f.uniquecarrier, c.description
ORDER BY count(*) DESC
LIMIT 10;


SELECT f.origin, c.name, c.city, count(*) AS ct
FROM minio.ontime.flights_orc f,
postgresql.airline.airport c
WHERE c.code = f.origin
GROUP BY origin, c.name, c.city
ORDER BY count(*) DESC
LIMIT 10;
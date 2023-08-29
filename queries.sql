SELECT *
From owners
JOIN vehicles
ON owners.id = vehicles.id;

SELECT first_name, last_name, COUNT(make) as Count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name
ORDER BY first_name ASC;

SELECT first_name, last_name,AVG(price) as average_price, COUNT(make) as Count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY first_name, last_name
HAVING AVG(price) > 10000 and COUNT(make) > 1
ORDER BY first_name ASC;

SELECT matchid,player FROM goal 
  WHERE teamid = 'GER'


SELECT id,stadium,team1,team2
  FROM game
  WHERE id=1012


SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

SELECT team1,team2,player
FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%'

SELECT player, teamid,coach, gtime
FROM goal
JOIN eteam on teamid=id 
WHERE gtime<=10

SELECT mdate, teamname
FROM game
JOIN eteam on (team1=eteam.id)
WHERE team1 = 'GRE'

SELECT player
From game
JOIN goal on (matchid=id)
Where stadium = 'National Stadium, Warsaw'

SELECT DISTINCT player
FROM game JOIN goal ON matchid = id
WHERE team1='GER' OR team2='GER' 
AND NOT teamid = 'GER'

SELECT teamname, COUNT(teamid) as goals
FROM eteam JOIN goal ON id=teamid
GROUP BY teamname
ORDER BY teamname

SELECT stadium, COUNT(player)
FROM game JOIN goal ON (id=matchid)
GROUP BY stadium

SELECT matchid,mdate, COUNT(player)
FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid,mdate

SELECT matchid,mdate, COUNT(player)
FROM game JOIN goal ON matchid = id 
WHERE teamid = 'GER'
GROUP BY matchid,mdate

SELECT mdate,
  team1,
  CASE WHEN teamid=team1 THEN 1 ELSE 0 END score1
  FROM game JOIN goal ON matchid = id



SELECT id, title
 FROM movie
 WHERE yr=1962

 SELECT yr
  FROM movie
  WHERE title = 'Citizen Kane'


SELECT id, title, yr FROM movie
  WHERE title LIKE '%Star Trek%'
  ORDER BY yr


SELECT title FROM movie
  WHERE id IN (11768, 11955, 21191)

  SELECT id FROM actor
  WHERE name = 'Glenn Close'

  SELECT id FROM movie
  WHERE title = 'Casablanca'

  SELECT name FROM casting JOIN actor ON (id=actorid)
  WHERE movieid=11768

SELECT name FROM casting
  JOIN actor ON (actor.id=actorid)
  JOIN movie ON (movie.id=movieid)
  WHERE title = 'Alien'

SELECT title FROM casting
  JOIN movie ON (movie.id = movieid)
  JOIN actor ON (actor.id = actorid)
  WHERE name = 'Harrison Ford'

SELECT title FROM casting
  JOIN movie ON (movie.id = movieid)
  JOIN actor ON (actor.id = actorid)
  WHERE name = 'Harrison Ford'  AND ord > 1

SELECT title, name FROM casting
  JOIN movie ON (movie.id = movieid)
  JOIN actor ON (actor.id = actorid)
  WHERE yr = 1962 and ord = 1
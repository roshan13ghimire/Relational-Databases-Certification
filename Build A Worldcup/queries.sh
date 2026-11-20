#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Replace empty echo commands with the following queries:
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"
echo "$($PSQL "SELECT SUM(winner_goals + opponent_goals) FROM games")"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals), 2) FROM games")"
echo "$($PSQL "SELECT AVG(winner_goals + opponent_goals) FROM games")"
echo "$($PSQL "SELECT MAX(winner_goals) FROM games")"
echo "$($PSQL "SELECT COUNT(*) FROM games WHERE winner_goals > 2")"
echo "$($PSQL "SELECT name FROM teams INNER JOIN games ON teams.team_id = games.winner_id WHERE year = 2018 AND round = 'Final'")"
echo "$($PSQL "SELECT name FROM teams INNER JOIN games ON teams.team_id = games.winner_id OR teams.team_id = games.opponent_id WHERE year = 2014 AND round = 'Eighth-Final' ORDER BY name")"
echo "$($PSQL "SELECT DISTINCT(name) FROM teams INNER JOIN games ON teams.team_id = games.winner_id ORDER BY name")"
echo "$($PSQL "SELECT year, name FROM teams INNER JOIN games ON teams.team_id = games.winner_id WHERE round = 'Final' ORDER BY year")"
echo "$($PSQL "SELECT name FROM teams WHERE name LIKE 'Co%'")"

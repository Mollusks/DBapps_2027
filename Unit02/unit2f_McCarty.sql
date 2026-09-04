-- =====================================================================
-- Unit 2f — Joining Two Tables
-- Database Applications Development · MCCC
--
-- Databases: movies_small.db for 1-3, nba_5seasons.db for 4-6
-- Note above each query which database it uses.
--
-- Rename this file with your last name before you start.
--
-- Read unit2f_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Show every movie's title alongside its average rating.
SELECT m.title, r.avg_rating
FROM movies m
JOIN ratings r ON r.movie_id = m.movie_id;

-- 2. Show the ten most-voted movies: title, average rating, and
--    number of votes.
SELECT m.title, r.avg_rating, r.num_votes
FROM movies m
JOIN ratings r ON r.movie_id = m.movie_id
ORDER BY r.num_votes DESC
LIMIT 10;

-- 3. Show movies rated above 8.5: title, release year, and rating,
--    highest rated first.
SELECT m.title, r.avg_rating, m.release_year
FROM movies m
JOIN ratings r ON r.movie_id = m.movie_id
WHERE r.
ORDER BY r.num_votes DESC;

-- 4. Show the game date, team name, and points for the first 20 rows
--    of team_game_stats.
SELECT g.game_date, t.full_name, g.pts
FROM team_game_stats g
JOIN teams t ON g.team_id = t.team_id
LIMIT 20;

-- 5. Show the ten highest-scoring player seasons: player name,
--    season, and points.
SELECT s.season, s.pts, p.full_name
FROM player_season_stats s
JOIN players p ON s.player_id = p.player_id
ORDER BY s.pts DESC
LIMIT 10;

-- 6. For the 2024-25 season, show the ten highest-scoring players
--    with their name, their team's name, and their points.
--    (Three tables.)
SELECT p.full_name, t.full_name, s.pts
FROM players p
JOIN teams t ON t.team_id = s.team_id
JOIN player_season_stats s ON s.player_id = p.player_id
WHERE s.season = '2024-25'
LIMIT 10;

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 1 returns 2,659 rows — the same as the number of movies.
-- What does that tell you about the relationship between movies and
-- ratings?

--Each movie has a rating

-- In query 6, which table sits in the middle connecting the other two?

--players, as it connects to both other tables

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Join:

--connect two tables together via one column

-- INNER JOIN:

--only have rows that match on both sides

-- Table alias:

--a letter or name to represent a table when joining and using multiple table values
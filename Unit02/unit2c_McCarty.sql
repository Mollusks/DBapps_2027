-- =====================================================================
-- Unit 2c — Making New Columns
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, player_season_stats
--
-- Rename this file with your last name before you start.
-- Every calculated column needs a name. Use AS.
--
-- Read unit2c_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Show each team's name and how many years old the franchise is.
--    Use 2026 as the current year. Call the column years_old.
SELECT full_name, 
	   2026 - year_founded AS years_old
FROM teams

-- 2. Show each team's name and a single column combining city and
--    state, like "Atlanta, Georgia". Call it location.
SELECT full_name, city || ', ' || state AS location
FROM teams

-- 3. Show every team's full name in all uppercase.
SELECT UPPER(full_name)
from teams

-- 4. From player_season_stats: show player_id, gp, pts, and points
--    per game (pts / gp). Only include players with more than 0 games.
SELECT player_id, gp, pts, pts/gp AS points_per_game
from player_season_stats
WHERE gp > 0

-- 5. Same as query 4, but round points per game to one decimal place.
SELECT player_id, gp, pts, ROUND(pts/gp) AS ppg
from player_season_stats
WHERE gp > 0

-- 6. From team_game_stats: show each distinct season and just its
--    starting year — "2021-22" becomes "2021". Use SUBSTR.
SELECT DISTINCT SUBSTR(season, 1, 4)
FROM team_game_stats

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Compare your results from queries 4 and 5. What changed?

--5 was a lot less big because it lacked the massive decimal amounts

-- You were told to add WHERE gp > 0 before dividing. Write one more
-- query below to find out how many rows actually have gp = 0. How
-- many are there — and if the answer is what you found, why write
-- the filter at all?

SELECT player_id, gp, pts, pts/gp AS points_per_game
from player_season_stats
WHERE gp = 0

--Nobody has games played, but you would want that filter incase anybody had that, as to not divide by 0.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Calculated column:

--A column that was made using a clculations/equations (points/games, miles/hours, height/width, etc...)

-- Concatenation (||):

--A connector of collumns (connecting columns for location, time, etc...)
-- Unit 2e — Grouping
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2e_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. How many teams are in each state?
SELECT state, COUNT(full_name)
FROM teams
GROUP BY state;

-- 2. Same as query 1, but sorted with the most teams first.
SELECT COUNT(full_name) AS num_teams, state
FROM teams
GROUP BY state
ORDER BY num_teams DESC;

-- 3. Same as query 2, but only show states with more than one team.
SELECT COUNT(full_name) AS num_teams, state
FROM teams
GROUP BY state
HAVING num_teams &gt; 1
ORDER BY num_teams DESC;

-- 4. For each season, show the average points scored per game,
--    rounded to one decimal.
SELECT season, ROUND(AVG(pts))
from team_game_stats
GROUP BY season;

-- 5. For each team, count how many games they won. (Wins are
--    wl = 'W'.) Show team_id and the win count.
SELECT team_id, SUM(wl='W') AS wins
FROM team_game_stats
GROUP BY team_id;

-- 6. Same as query 5, but only teams with more than 200 wins.
SELECT team_id, SUM(wl='W') as wins
FROM team_game_stats
GROUP BY team_id
HAVING wins > 200

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Which two states have the most teams, and how many each?

--Califoornia has 4, Texas has 3, New York and Florida have 2

-- In query 6 you used both WHERE and HAVING. Explain in your own
-- words what each one filtered.

--in Query 6 I did not use WHERE, as I put the sum of the wins at the top in the select. the HAVING filtered it.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- GROUP BY:

--Groups columns in a single row
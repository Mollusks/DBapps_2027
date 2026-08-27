-- =====================================================================
-- Unit 2d — Counting and Summarizing
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2d_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. How many teams are in the database?
SELECT COUNT(full_name)
FROM teams;

--30 teams

-- 2. How many players?
SELECT COUNT(full_name)
FROM players;

--1029 players

-- 3. What is the earliest founding year of any team?
SELECT MIN(year_founded)
FROM teams;

--1946

-- 4. What is the most recent?
SELECT MAX(year_founded)
FROM teams;

--2002

-- 5. What is the average founding year, rounded to a whole number?
SELECT ROUND(AVG(year_founded))
FROM teams;

--1970

-- 6. What is the total number of points scored across every game in
--    the database?
SELECT SUM(pts)
FROM team_game_stats

--1,399,607

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 6 reads 10,842 rows and gives you one number. What is it?

--1399607 for the number of points scored

-- COUNT(*) counts rows. What does COUNT(birth_year) count instead?

--How many entries are in that column

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Aggregate function:

--Takes rows and based on the parameters will give a result
-- =====================================================================
-- Unit 2g — Keeping the Unmatched Rows
-- Database Applications Development · MCCC
--
-- Databases: nba_5seasons.db for 1-3, movies_small.db for 4-5
--
-- Rename this file with your last name before you start.
--
-- Read unit2g_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Using an INNER JOIN, count how many players have stats for the
--    2025-26 season.
SELECT count(*)
FROM players p
JOIN player_season_stats s
ON s.player_id = p.player_id AND s.season = '2025-26';

-- 2. Using a LEFT JOIN from players, count how many rows you get for
--    the same thing.
SELECT count(*)
FROM players p
LEFT JOIN player_season_stats s
ON s.player_id = p.player_id AND s.season = '2025-26';

-- 3. List the names of players who have no 2025-26 season stats.
SELECT p.full_name
FROM players p
LEFT JOIN player_season_stats s
ON s.player_id = p.player_id AND s.season = '2025-26'
WHERE  s.player_id IS NULL;

-- 4. In movies_small.db, count how many rows in roles have no
--    character name recorded.
SELECT count(*)
FROM roles
WHERE character IS NULL;


-- 5. Show ten people from movies_small.db who have no birth year
--    recorded.
SELECT count(*)
FROM people
WHERE birth_year IS NULL
LIMIT 10;

-- 6. Pick any query from this unit you found interesting, run it, and
--    export the results to CSV. Name the file
--    unit2_report_lastname.csv and commit it alongside this file.

-- DONE

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Queries 1 and 2 return different numbers. What are they, and what
-- does the difference represent?

--1 is JUST ones with a value, while 2 counts every single one (null and valued)

-- In query 3 you filtered with IS NULL. Which table did that NULL
-- come from, and why is it NULL?

--The Seasons, as they did not particaptae in 2205-26 season, we filtered it with the left join

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- LEFT JOIN:

--Includes all values, null and avlued

-- Export:

--To download something onto your computer
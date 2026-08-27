-- =====================================================================
-- Unit 2b — Filtering with Logic
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players
--
-- Rename this file with your last name before you start.
--
-- Read unit2b_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. Show every team in Ohio or California, with its state.
SELECT full_name, state
FROM teams
WHERE state = 'Ohio' OR state = 'California';

-- 2. Show teams founded between 1960 and 1980, with their founding
--    years. Use BETWEEN.
SELECT full_name, year_founded
FROM teams
WHERE year_founded BETWEEN 1960 AND 1980;

-- 3. Show teams in Texas, Florida, or New York, with their states.
--    Use IN.
SELECT full_name, state
FROM teams
WHERE state IN ('Texas', 'Florida', 'New York');

-- 4. Show teams whose nickname starts with the letter C.
SELECT nickname
FROM teams
WHERE nickname LIKE 'C%';

-- 5. Find every player whose name contains "James".
SELECT full_name
FROM players
WHERE full_name LIKE '%James%';

-- 6. List each state that has at least one team — each state only
--    once, sorted alphabetically.
SELECT DISTINCT state
FROM teams
ORDER BY state ASC;

-- 7. Show every team that is NOT in California. Use NOT.
SELECT full_name, state
FROM teams
WHERE NOT (state='California')

-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 5 returns more than just LeBron. Who else shows up, and why?

--James Harden, James Johnson, James Ennis III, James Wiseman, James Bouknight, Bronny James, and Sion James. They all either have James as a first name or a last name.

-- Query 6 returns fewer rows than there are teams. Why?

-- Some states (Like New York, California, Texas) have multiple teams.

-- Query 7 could also be written with <> instead of NOT. Why do they
-- give the same result?

--The operator stands for NOT.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Boolean logic:

--Binary (2 choice) logic value, True False.

-- Wildcard:

--pattern matching with characters (Containing/Starting/ending)

-- NULL:

--Missing/Empty Value
-- =====================================================================
-- Unit 4 — Build and Fill Your Database
-- Client: Game
-- Database Applications Development · MCCC
--
-- Rename this file unit4_lastname.sql before you start.
-- Use unit4_Game_Data.xlsx for the columns, keys, and data rows.
--
-- Name: Michael McCarty
-- =====================================================================


-- =====================================================================
-- PART 1 — DROP the tables (last table first)
-- Order: inventory, characters, items, classes, players
-- =====================================================================
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS players;
-- =====================================================================
-- PART 2 — CREATE the tables (in this order)
-- Put a comment above each table:  -- tablename: one row = ...
-- Add at least two CHECK rules of your own.
-- =====================================================================

-- players: one row = one player
CREATE TABLE players (
	player_username	TEXT PRIMARY KEY,
	player_email	TEXT NOT NULL CHECK(player_email LIKE '%_@_%._%'),
	player_country	TEXT,
	player_joined	TEXT CHECK (LENGTH(player_joined) = 10)
);

-- classes one row = one class
CREATE TABLE classes (
	class_name	TEXT PRIMARY KEY,
	class_role	TEXT NOT NULL,
	class_base_health	INTEGER
);


-- items one row = one item
CREATE TABLE items (
	item_name	TEXT PRIMARY KEY,
	item_type TEXT NOT NULL,
	item_rarity	TEXT NOT NULL,
	item_gold_value INTEGER NOT NULL
);


-- characters one row = one character
CREATE TABLE characters (
	character_id	INTEGER PRIMARY KEY,
	character_name TEXT,
	level INTEGER NOT NULL,
	class_name TEXT NOT NULL,
	player_username TEXT NOT NULL,
	FOREIGN KEY (class_name) REFERENCES classes(class_name),
	FOREIGN KEY (player_username) REFERENCES players(player_username)
);


-- inventory one row = one item on a character
CREATE TABLE inventory (
	character_id TEXT NOT NULL,
	item_name TEXT NOT NULL,
	quantity INTEGER,
	FOREIGN KEY (character_id) REFERENCES characters(character_id),
	FOREIGN KEY (item_name) REFERENCES items(item_name)
);

-- =====================================================================
-- PART 3 — INSERT the four rows for each table (same order as Part 2)
-- =====================================================================

-- players
INSERT INTO players (player_username, player_email, player_country, player_joined) 
VALUES ('NightOwl_22', 'nightowl22@mail.com', 'USA', '2023-04-12'), ('DragonFist', 'dragonfist@mail.com', 'Canada', '2022-11-03'), ('PixelQueen', 'pixelqueen@mail.com', 'UK', '2024-01-20'), ('LootGoblin', 'lootgoblin@mail.com', 'Mexico', '2023-08-15');


-- classes
INSERT INTO classes (class_name, class_role, class_base_health) 
VALUES ('Warrior', 'Tank', 150), ('Mage', 'Damage', 80), ('Cleric', 'Healer', 100), ('Rogue', 'Damage', 90);


-- items
INSERT INTO items (item_name, item_type, item_rarity, item_gold_value) 
VALUES ('Iron Sword', 'Weapon', 'Common', 25), ('Health Potion', 'Potion', 'Common',10), ('Fire Staff', 'Weapon', 'Rare', 300), ('Dragon Scale Armor', 'Armor', 'Epic', 1200);


-- characters
INSERT INTO characters (character_id, character_name, level, class_name, player_username) 
VALUES (1, 'Shadow', 44, 'Rogue', 'NightOwl_22'), (2, 'Brakka', 31, 'Warrior', 'DragonFist'), (3, 'Lumi', 12, 'Mage', 'PixelQueen'), (4, 'Shadow', 7, 'Cleric', 'LootGoblin');



-- inventory
INSERT INTO inventory (character_id, item_name, quantity)
VALUES (1, 'Iron Sword', 1), (2, 'Dragon Scale Armor', 1), (3, 'Fire Staff', 1), (4, 'Health Potion', 5);




-- =====================================================================
-- PART 4 — CHECK YOUR WORK: SELECT * FROM each table
-- =====================================================================
SELECT *
FROM players;
SELECT *
FROM classes;
SELECT *
FROM items;
SELECT *
FROM characters;
SELECT *
FROM inventory

-- Run the whole script twice. No errors both times? yes
-- Write Changes, then commit this file and your .db file.
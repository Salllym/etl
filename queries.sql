-- Drop Tables if Existing
DROP TABLE if exists credits;
DROP TABLE if exists titles;


-- Create tables for raw data to be loaded into
CREATE TABLE credits (
id VARCHAR,
name TEXT,
role TEXT,
PRIMARY KEY(id, name)
);

CREATE TABLE titles (
id VARCHAR PRIMARY KEY,
title TEXT,
type TEXT,
genres TEXT,
production_countries TEXT
);

-- Joins tables
SELECT credits.id, credits.name, credits.role, titles.title, titles.type, titles.genres, titles.production_countries
FROM credits
JOIN titles
ON credits.id = titles.id;


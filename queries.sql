-- Create tables for raw data to be loaded into
CREATE TABLE credits (
id VARCHAR PRIMARY KEY,
name TEXT,
role TEXT
);

CREATE TABLE titles (
id VARCHAR PRIMARY KEY,
title TEXT,
type TEXT,
genres TEXT,
production_countries TEXT
);


-- Joins tables
SELECT credits.id, credits.name, credits.role, titles.title, titles.type, titles.genres, titles.production_countrie
FROM credits
JOIN titles
ON credits.id = titles.id;


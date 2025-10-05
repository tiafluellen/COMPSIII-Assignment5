-- Write your code below this line
-- You-- Remove the cities table if it already exists
DROP TABLE IF EXISTS cities;

-- Create the cities table
CREATE TABLE cities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    population INTEGER,
    country TEXT
);

-- Insert data into the cities table
INSERT INTO cities (name, population, country) VALUES ('New York', 8398748, 'United States');
INSERT INTO cities (name, population, country) VALUES ('Tokyo', 13515271, 'Japan');
INSERT INTO cities (name, population, country) VALUES ('Cairo', 9500000, 'Egypt');
INSERT INTO cities (name, population, country) VALUES ('Sydney', 5312163, 'Australia');
INSERT INTO cities (name, population, country) VALUES ('São Paulo', 12252023, 'Brazil');
INSERT INTO cities (name, population, country) VALUES ('Paris', 2140526, 'France');
INSERT INTO cities (name, population, country) VALUES ('Lagos', 14368332, 'Nigeria');
INSERT INTO cities (name, population, country) VALUES ('Mumbai', 12442373, 'India');
INSERT INTO cities (name, population, country) VALUES ('Osaka', 2752123, 'Japan');
INSERT INTO cities (name, population, country) VALUES ('Beijing', 21542000, 'China');

-- Select all cities
SELECT * FROM cities;

-- Select all cities in Japan
SELECT * FROM cities WHERE country = 'Japan';

-- Update the population of Beijing
UPDATE cities SET population = 19400000 WHERE name = 'Beijing';

-- Delete New York, Cairo, and Paris
DELETE FROM cities WHERE name IN ('New York', 'Cairo', 'Paris');

-- View the remaining cities
SELECT * FROM cities;
can run this file with the command sqlite3 world_cities.db < world_cities.sql
-- If you don't run this file before running the tests, some tests will fail even though your queries may be correct!

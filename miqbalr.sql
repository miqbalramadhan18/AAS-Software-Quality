SELECT * FROM country;

INSERT INTO country (country, last_update) 
VALUES ('Wakanda', '2024-07-17 13:49:14');	

UPDATE country SET last_update = '2024-07-17 14:07:15' WHERE country = 'Wakanda';

UPDATE country SET country = 'Konoha', last_update = '2024-07-18 13:49:14' WHERE country = 'Wakanda';

DELETE FROM country WHERE country = 'Konoha';

--2. manipulasi satu tabel

SELECT * FROM country WHERE country LIKE 'K%';

SELECT * FROM country ORDER BY country DESC;

SELECT * FROM country ORDER BY country LIMIT 5;

-- Manipulasi Dua atau Lebih Tabel
-- JOIN
SELECT country.country, city.city
FROM country
JOIN city ON country.country_id = city.country_id;

-- UNION
SELECT country FROM country
UNION
SELECT city FROM city;

-- EXCEPT
SELECT country FROM country
EXCEPT
SELECT city FROM city;

-- Fungsi Agregasi
-- COUNT
SELECT COUNT(*) FROM country;

-- AVG
SELECT AVG(LENGTH(country)) FROM country;

-- MAX
SELECT country FROM country ORDER BY LENGTH(country) DESC LIMIT 1;

-- MIN
SELECT country FROM country ORDER BY LENGTH(country) ASC LIMIT 1;



-- Viikko 2: SQL-harjoitukset
-- Tietokanta: harjoitukset

USE harjoitukset;

-- a) Poista Puffballin tiedot taulusta.
DELETE FROM pet
WHERE name = 'Puffball';

-- b) Muuta Bowserin syntymäajaksi 31.8.1998.
UPDATE pet
SET birth = '1998-08-31'
WHERE name = 'Bowser';

-- c) Chirpy on kuollut 15.9.2000.
UPDATE pet
SET death = '2000-09-15'
WHERE name = 'Chirpy';

-- d) Tulosta kaikki 1990-luvulla syntyneet lemmikit.
SELECT * FROM pet
WHERE birth BETWEEN '1990-01-01' AND '1999-12-31';

-- e) Tulosta kaikki miespuoliset koirat.
SELECT * FROM pet
WHERE species = 'dog' AND sex = 'm';

-- f) Tulosta vain miespuolisten koirien nimet.
SELECT name FROM pet
WHERE species = 'dog' AND sex = 'm';

-- g) Tulosta miespuolisten koirien nimet ja omistajat.
SELECT name, owner FROM pet
WHERE species = 'dog' AND sex = 'm';
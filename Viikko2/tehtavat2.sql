USE harjoitukset;

-- a) Tulosta omistajien nimet vain kerran.
SELECT DISTINCT owner FROM pet;

-- b) Tulosta lemmikkien nimet aakkosjärjestyksessä.
SELECT name FROM pet
ORDER BY name ASC;

-- c) Tulosta kaikki elossa olevat lemmikit.
SELECT * FROM pet
WHERE death IS NULL;

-- d) Tulosta omistajat, joiden nimi alkaa H-kirjaimella.
SELECT DISTINCT owner FROM pet
WHERE owner LIKE 'H%';

-- e) Tulosta lemmikkien nimet, joissa esiintyy ff.
SELECT name FROM pet
WHERE name LIKE '%ff%';

-- f) Tulosta lemmikkien nimet, joissa on neljä kirjainta.
SELECT name FROM pet
WHERE name LIKE '____';
or
SELECT name FROM pet
WHERE CHAR_LENGTH(name) = 4;
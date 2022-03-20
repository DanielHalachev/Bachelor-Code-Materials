--1
SELECT *
FROM SHIPS LEFT JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS

--2
SELECT *
FROM SHIPS RIGHT JOIN CLASSES ON SHIPS.CLASS=CLASSES.CLASS
ORDER BY SHIPS.NAME;

--3
SELECT c.COUNTRY, s.NAME
FROM SHIPS s JOIN CLASSES c ON s.CLASS=c.CLASS
WHERE s.NAME NOT IN (SELECT OUTCOMES.SHIP FROM OUTCOMES)
ORDER BY COUNTRY;

--4
SELECT s.NAME as 'Ship Name'
FROM SHIPS s JOIN CLASSES c ON s.CLASS=c.CLASS
WHERE s.LAUNCHED=1916 AND c.NUMGUNS>=7;

--5
SELECT o.SHIP, o.BATTLE, b.[DATE]
FROM OUTCOMES o JOIN BATTLES b ON o.BATTLE=b.NAME
WHERE o.RESULT='sunk'
ORDER BY o.BATTLE;

--6
SELECT s.NAME, c.DISPLACEMENT, s.LAUNCHED
FROM SHIPS s join CLASSES c ON s.CLASS=c.CLASS AND s.NAME=c.CLASS;

--7
SELECT c.*
FROM CLASSES c LEFT JOIN SHIPS s ON c.CLASS=s.CLASS
WHERE s.NAME IS NULL;

--8
SELECT s.NAME, c.DISPLACEMENT, c.NUMGUNS, o.RESULT
FROM OUTCOMES o, SHIPS s JOIN CLASSES c ON s.CLASS=c.CLASS
WHERE o.BATTLE='North Atlantic' AND o.SHIP=s.NAME;
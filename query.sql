

/*
--Query 1: How many TESLA vahicles by model?
count |       make       |         model         
-------+------------------+-----------------------
   474 | TESLA            | MODEL 3
   225 | TESLA            | MODEL S
   120 | TESLA            | MODEL Y
    86 | TESLA            | MODEL X

select model, count(model) from registration WHERE make = 'TESLA' GROUP BY model;

--Query 2: Which model is the oldest represented in the database?

 myear 
-------
  1981
(1 row)

SELECT DISTINCT myear
FROM registration
ORDER BY myear ASC
LIMIT 1
;

--Query 3: What colors are Ferrari's?

       color       | count 
-------------------+-------
 ALUMINUM / SILVER |     1
 BLACK             |     2
 IVORY             |     1
 RED               |     1

SELECT color, COUNT (color) 
FROM registration
WHERE make  = 'FERRARI'
GROUP BY color
ORDER BY COUNT DESC
;

--Query 4: What proportion of registered vehicles are BEV's ? 
This database has 50,000 entries which can be divided by total amount count of BEV's

SELECT count(model),make, model 
FROM REGISTRATION
WHERE electrification = 'BEV (Battery Electric Vehicle)'
GROUP BY make, model
ORDER BY COUNT
;

--Query 5: Which county had the least amount of car reigistrations in 2022?

*/q

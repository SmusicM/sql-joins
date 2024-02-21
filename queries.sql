--1--
-- write your queries here
SELECT * FROM
owners o
FULL JOIN vehicles v
ON o.id = v.owner_id;

--2--
--misunderstood question and did the count of vehicles by each owners--
SELECT first_name,last_name,COUNT(*) 
AS cars_count 
FROM vehicles JOIN owners ON vehicles.id = owners.id GROUP BY owners.first_name,owners.last_name ORDER BY cars_count;
--answer for curic
SELECT first_name,last_name,COUNT(vehicles.owner_id)
AS cars_count
FROM vehicles JOIN owners ON 
vehicles.owner_id = owners.id GROUP BY owners.first_name,owners.last_name
 ORDER BY cars_count;

--3--
SELECT first_name,last_name,AVG(price),COUNT(vehicles.owner_id)
AS cars_count
FROM vehicles JOIN owners ON 
vehicles.owner_id = owners.id GROUP BY owners.first_name,owners.last_name
HAVING AVG(vehicles.price) > 10000
ORDER BY cars_count DESC
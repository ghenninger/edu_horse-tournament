# edu_horse-tournament
### School Project where I created a database to mimic a real world horse-tournament

We were assigned a topic to mimic how a customer asks for a service. In this case I got the opportunity to model a horse-jump tournament (a sport I had no previous knowledge of). Research and creation of Entity-Relation Diagrams, tables etc. was a big part of the process. The work resulted in a 30 page report that included theoretical aspects of databases aswell as the practical approach (found here). 

When implementing (in MySQL) I used SQL-queries and phpmyadmin interface and worked primarly with primary keys and seconday keys to create connections between tables and add functionality. Check .png-file for a design layout of tables.

Test-data is included. Tested several SQL-queries to check that internal logic is working


### Examples of SQL used:

*** MAIN SQL = Finding out result after 1st round and who is jumping final round ***

```
SELECT round.round_type, round.faults, round.time, carriage.id AS carriage_nr, CONCAT(rider.given_name, ' ', rider.sur_name) AS rider_name, horse.horse_name, arena.arena_name, course.id AS course_nr, course.difficulty_level, CONCAT(employee.given_name, ' ', employee.sur_name) AS judge_name, tournament.tournament_name
FROM carriage
JOIN rider ON carriage.rider_id = rider.id
JOIN horse ON carriage.horse_id = horse.id
JOIN round ON round.id = (SELECT id FROM round WHERE round.carriage_id = carriage.id ORDER BY round_type DESC, faults ASC, time ASC LIMIT 1)
JOIN course ON round.course_id = course.id
JOIN arena ON course.arena_id = arena.id
JOIN employee ON round.judge_id = employee.id
JOIN tournament ON round.tournament_id = tournament.id
WHERE tournament.id = 5;
```

*** Finding carriages and surrounding information *** 

```
SELECT 
carriage.id AS Carriage_nr, 
CONCAT(rider.given_name, ' ', rider.sur_name) 
AS rider_name, horse.horse_name, equestrian_club.club_name, equestrian_club.city
FROM carriage 
JOIN rider ON carriage.rider_id = rider.id
JOIN horse ON carriage.horse_id = horse.id
JOIN equestrian_club ON horse.club_id = equestrian_club.id;
```

### NOTE ON FUTURE/FURTHER IMPROVEMENTS:
- Create "triggers" to maintain correct data in tables = course_designer with certificate B should only be able to be course designer on courses with difficulty level B.
- Create a separate place/db to store images
- Expand tables structure to store data about each carriage directly in table



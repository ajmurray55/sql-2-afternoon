-- UPDATING ROWS --

-- NUMBER 1
UPDATE customer
SET fax = null
WHERE fax IS NOT NULL;

-- NUMBER 2
UPDATE customer
SET company = 'Self'
WHERE company IS null;

-- NUMBER 3
UPDATE customer 
SET last_name = 'Thompson'
WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- NUMBER 4
UPDATE customer 
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- NUMBER 5
UPDATE track
SET composer = 'The Darkness around us'
WHERE genre_id = (SELECT genre_id FROM genre WHERE name = 'Metal')
AND composer IS NULL;



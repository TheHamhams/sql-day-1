-- Question 1 How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2
SELECT *
FROM actor
WHERE last_name LIKE 'Wahlberg';



-- Questiom 2 How many payments were made between $3.99 and $5.99?
-- Answer: 4,764
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- Question 3 What film does the store have the most of? (search in inventory)
-- Answer: film_id 200 
SELECT film_id, COUNT(inventory_id) AS count
FROM inventory
GROUP BY film_id
ORDER BY count DESC;


-- Question 4 How many customers have the last name ‘William’?
-- Answer: 0
SELECT first_name, last_name
FROM customer
WHERE last_name LIKE 'William';


-- Question 5 What store employee (get the id) sold the most rentals?
-- Answer: 1
SELECT staff_id, COUNT(rental_id) AS count
FROM rental
GROUP BY staff_id 
ORDER BY count DESC;


-- Question 6 How many different district names are there?
-- Answer: 378
SELECT COUNT(DISTINCT district)
FROM address;

-- Question 7 What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: 508
SELECT COUNT(actor_id), film_id
FROM film_actor 
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC

-- Question 8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 21
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'


-- Question 9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3
SELECT COUNT(amount) AS count, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250
ORDER BY count DESC;

-- Question 10 Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- Answer: 5, PG-13

SELECT rating, COUNT(film_id) AS count
FROM film
GROUP BY rating 
ORDER BY count



--How many actors are there with the last name Wahlberg?
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--Two actors, Nick and Daryl

--How man payments were made between $3.99 and $5.99?
SELECT amount, count(amount)
FROM payment
WHERE amount > 3.99 AND amount < 5.99
GROUP BY amount;
--3,431 payments in range. 4.99: 3,424 payments / 5.98: 7 payments

--What film does the store have the most of?
SELECT film_id, count(film_id)
FROM inventory 
GROUP BY film_id;
--There are 72 films tied for most at 8 copies of the film, one of which is Rush Goodfellas

--How many customers have the last name William?
SELECT first_name, last_name
FROM customer
WHERE last_name = 'William';
--No customers with last name Williams, two close to the name: Gina Williamson and Linda Williams

--What store employee sold the most rentals?
SELECT staff_id, count(staff_id)
FROM payment 
GROUP BY staff_id;
--Employee ID 2 (Jon Stephens) sold more at 7,304 movies sold

--How many different district names are there?
SELECT district, count(district)
FROM address
GROUP BY district;
--There are 378 unique districts

--What film has the most actors in it?
SELECT film_id, count(actor_id)
FROM film_actor 
GROUP BY film_id;
--Film ID 508 (Lambs Cincinatti) has the most actors, 15.

--From store_id 1, how many customers have a last name ending with 'es'?
SELECT last_name, store_id 
FROM customer 
WHERE last_name LIKE '%es';
--There are 13 customer last names ending in 'es'

--How many payment amounts had a number of rentals above 250 for customers with ids between 380 and 430?
SELECT amount, count(amount)
FROM payment
GROUP BY amount
HAVING count(amount) > 250;
--There are 9 payment amounts that have above 250 rentals

--Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, count(rating)
FROM film 
GROUP BY rating;
--PG-13 has the most movies at 223 total


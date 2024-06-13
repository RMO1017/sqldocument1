-- 1. How many actors are there with the last name ‘Wahlberg’? 2
SELECT count(last_name) from actor
where last_name = 'Wahlberg'

-- 2. How many payments were made between $3.99 and $5.99? 5607
select count(payment_id) from payment
where amount between 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory) Multiple films have 8
select film_id, count(film_id) from inventory
group by film_id

--4. How many customers have the last name ‘William’? 0
select name from customer_list
where name like 'William'

--5. What store employee (get the id) sold the most rentals? Staff_id 1 (8040)
select count(staff_id), staff_id from rental
group by staff_id

--6. How many different district names are there? 378
select count(district) from address
group by district

--7. What film has the most actors in it? (use film_actor table and get film_id) Film_Id 508 - 15 actors
select count(film_id), film_id from film_actor
group by film_id

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 13
select name, sid from customer_list
where sid < 2
and name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 3
select count(amount) from payment
where customer_id between 380 and 430
group by amount having count(amount) > 250


--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
--			5 ratings. PG-13 has 223

select count(rating), rating from film
group by rating
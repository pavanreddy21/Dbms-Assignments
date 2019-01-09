select customer.* from customer 
inner join rental on rental.customer_id=customer.customer_id
inner join inventory on inventory.inventory_id=rental.inventory_id
inner join film on film.film_id=inventory.film_id
inner join film_actor on film.film_id=film_actor.film_id
inner join actor on actor.actor_id=film_actor.actor_id

inner join address on customer.address_id=address.address_id
inner join city on address.city_id=city.city_id
inner join country on city.country_id=country.country_id
where actor.first_name='NICK' and actor.last_name='WAHLBERG' and country.country='Canada'
;


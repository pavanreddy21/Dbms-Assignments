select distinct count(title) from film
inner join film_actor on film_actor.film_id=film.film_id
inner join actor on actor.actor_id=film_actor.actor_id
where actor.first_name='SEAN' and actor.last_name='WILLIAMS'
;
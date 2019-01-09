select  count( distinct film.film_id) from film 
inner join film_category  on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id
inner join inventory on inventory.film_id=film.film_id 

inner join store on store.store_id=inventory.store_id
inner join staff on staff.store_id=store.store_id

where category.name='sci-fi' and staff.first_name='jon'and staff.last_name='stephens'

;


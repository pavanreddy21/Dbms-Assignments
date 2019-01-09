select distinct customer.*, country.country, category.NAME from customer
inner join rental on customer.customer_id=rental.customer_id
inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film on inventory.film_id=film.film_id 
inner join film_category  on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id

inner join address on customer.address_id=address.address_id
inner join city on address.city_id=city.city_id
inner join country on city.country_id=country.country_id
where country.country='India' and  category.name='Sports'

;
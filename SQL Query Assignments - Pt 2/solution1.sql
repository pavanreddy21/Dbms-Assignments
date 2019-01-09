select distinct count(film.film_id) from film 
inner join film_category on film_category.film_id=film.film_id
inner join category on category.category_id=film_category.category_id
where category.name='Documentary' and film.special_features like '%Deleted Scenes%'
;

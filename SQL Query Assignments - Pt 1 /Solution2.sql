
select title,count(title) as occurrence from rental inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film on inventory.film_id=film.film_id 
inner join film_category  on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id 
where name='Horror'
GROUP BY title
    ORDER BY occurrence DESC
    LIMIT    3;
;
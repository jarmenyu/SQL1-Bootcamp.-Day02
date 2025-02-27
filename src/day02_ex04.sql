select pizza_name, pi.name as pizzeria_name, p.price
from menu as p
inner join pizzeria as pi on p.pizzeria_id = pi.id
where p.pizza_name in ('mushroom pizza', 'pepperoni pizza')
order by pizza_name asc, pizzeria_name asc;




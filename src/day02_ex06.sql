select m.pizza_name, pi.name as pizzeria_name
from person as p
inner join person_order as po on p.id = po.person_id
inner join menu as m on po.menu_id = m.id
inner join pizzeria as pi on m.pizzeria_id = pi.id
where p.name in ('Anna', 'Denis')
order by m.pizza_name asc, pizzeria_name asc;
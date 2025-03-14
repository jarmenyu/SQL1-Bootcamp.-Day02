select p.name
from person as p
inner join person_order as po on p.id = po.person_id
inner join menu as m on po.menu_id = m.id
where p.gender = 'male' and m.pizza_name in ('pepperoni pizza', 'mushroom pizza') and p.address in ('Moscow', 'Samara')
order by name desc;
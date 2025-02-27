select p.name
from person as p
inner join person_order as po on p.id = po.person_id
inner join menu as m on po.menu_id = m.id
where p.gender = 'female' and m.pizza_name in ('pepperoni pizza', 'cheese pizza')
group by p.name
having count(distinct m.pizza_name) = 2
order by name asc;
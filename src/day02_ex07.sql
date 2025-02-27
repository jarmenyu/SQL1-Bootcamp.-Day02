select pi.name as pizzeria_name
from person as p
inner join person_visits as po on p.id = po.person_id 
inner join pizzeria as pi on po.pizzeria_id = pi.id
inner join menu as m on pi.id = m.pizzeria_id
where p.name = 'Dmitriy' and po.visit_date = '2022-01-08' and m.price < 800;


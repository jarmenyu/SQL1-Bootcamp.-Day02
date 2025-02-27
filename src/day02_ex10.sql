select least(p1.name, p2.name) as person_name1, greatest(p1.name, p2.name) as person_name2, p1.address as common_address
from person as p1
inner join person as p2 on p1.address = p2.address and p1.id < p2.id
order by person_name1 asc, person_name2 asc;
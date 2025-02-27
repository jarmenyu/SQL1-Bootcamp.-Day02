with MissingDates as (
        select g.generated_date::date as missing_date
        from generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval) as g(generated_date)
)
select md.missing_date
from MissingDates as md
left join person_visits on md.missing_date = person_visits.visit_date
and (person_visits.person_id = 1 or person_visits.person_id = 2) 
where person_visits.visit_date is null
order by missing_date asc;
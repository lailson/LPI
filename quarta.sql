select *
from employees
where
first_name like 'J%' or first_name like 'K%' or first_name like 'L%' or first_name like 'M%'
order by first_name

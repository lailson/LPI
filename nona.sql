select  employees.last_name, salaries.salary from salaries
    inner join employees on employees.emp_no = salaries.emp_no
order by salary desc
limit 3

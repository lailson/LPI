select employees.first_name, last_name,employees.gender, employees.birth_date, employees.hire_date,
       salary, titles.title

from employees
    inner join salaries on salaries.emp_no = employees.emp_no
    inner join titles on titles.emp_no =  employees.emp_no
where
year(hire_date) > 1987
and year(titles.to_date) = 9999
and year(salaries.to_date) = 9999

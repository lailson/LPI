select departments.dept_name , count(1) as Total_funci
from departments
    left join dept_emp on dept_emp.dept_no = departments.dept_no
where
    year(dept_emp.to_date) = 9999
group by departments.dept_name

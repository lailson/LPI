select titles.title , dept_emp.dept_no from titles
inner join dept_emp on dept_emp.emp_no = titles.emp_no
where
 year(dept_emp.to_date) = 9999
 and (dept_emp.dept_no = 'd001' or dept_emp.dept_no = 'd002')

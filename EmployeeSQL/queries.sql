-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no, emp.last_name, emp.first_name, emp.sex, s.salary from employees as emp

left join salaries as s on (emp.emp_no = s.emp_no)

-- 2. List first name, last name, and hire date for employees who were hired in 1986

select emp.first_name, emp.last_name, emp.hire_date from employees as emp

where emp.hire_date between '1/1/1986' and '31/12/1986'

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select d.dept_no, d.dept_name, dm.emp_no, emp.last_name, emp.first_name from data_departments as d

left join department_manager as dm on (d.dept_no = dm.dept_no)

left join employees as emp on (dm.emp_no = emp.emp_no)

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, de.dept_no from employees as emp

left join department_employees as de on (emp.emp_no = de.emp_no)

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select emp.first_name, emp.last_name, emp.sex from employees as emp

where emp.first_name like 'Hercules' and emp.last_name like 'B%'

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, d.dept_name from employees as emp

left join department_employees as de on (emp.emp_no = de.emp_no)

left join data_departments as d on (de.dept_no = d.dept_no)

where d.dept_name = 'Sales'

order by emp.emp_no

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, d.dept_name from employees as emp 

left join department_employees as de on (emp.emp_no = de.emp_no)

left join data_departments as d on (de.dept_no = d.dept_no)

where d.dept_name in ('Sales', 'Development')

order by emp.emp_no

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) from employees

group by last_name

order by count(last_name) desc

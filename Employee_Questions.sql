use Employee

-- return employee record with heighest salary
select first_name, last_name, salary from Employee order by salary DESC

-- return the highest salary in employee table
select MAX(salary) as [Highest Salary] from Employee

-- return de 2nd highest salary from employee table
select max(salary) From Employee
where salary not in (select max(salary) from Employee)

-- select range of employees based on id
select * from Employee where employee_id between 2 and 4

-- return an employee with the highest salary and the employee's department name
select e.first_name,e.last_name,e.gender, e.position, e.salary, d.department_name from Employee as E
inner join Department as D on E.department_id = D.department_id	
where salary = (select max(salary) from Employee)

-- return highest salary, employee_name, department_name for each department
select * from Department as d
inner join Employee as e on d.department_id = e.employee_id

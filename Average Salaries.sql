/*
Exercise: Average Salaries
URL: https://platform.stratascratch.com/coding/9917-average-salaries?code_type=7
*/

select emp2.department
     , emp2.first_name
     , emp2.salary
     , (select avg(emp1.salary)
          from employee emp1
         where emp1.department = emp2.department) as "Department_Average"
  from employee emp2

# Write your MySQL query statement below
select m.employee_id,
      m.name,
      count(r.employee_id) as reports_count,
      round(avg(r.age)) as average_age
from Employees AS  m
join Employees AS r
on r.reports_to=m.employee_id
group by employee_id
order by employee_id;
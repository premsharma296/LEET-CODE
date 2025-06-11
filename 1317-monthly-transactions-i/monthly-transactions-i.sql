# Write your MySQL query statement below
select country,
DATE_FORMAT(trans_date,'%Y-%m') as month,
count(*) as trans_count,
count(case when state='approved'then 1 END ) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state='approved'then amount else 0 END) as approved_total_amount
from Transactions
group by 
DATE_FORMAT(trans_date,'%y-%m'),country
order by 
month,country;

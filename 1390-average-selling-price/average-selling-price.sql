# Write your MySQL query statement below
Select p.product_id,
ROUND(IFNULL(SUM(p.price*u.Units)/SUM(u.units),0),2) AS average_price
from Prices p
left Join  UnitsSold u
on p.product_id=u.product_id
and u.purchase_date between start_date AND end_date
group by p.product_id
order by p.product_id ASC;

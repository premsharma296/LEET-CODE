# Write your MySQL query statement below
select query_name,
ROUND((SUM(rating*1.0/position)/count(*)),2) AS quality,
ROUND((SUM(case when rating <3 then 1 else 0 END)*100/count(*)),2) AS poor_query_percentage
FROM
Queries
group by query_name;

select c.city, sum(i.total)
from customer c
join invoice i
on i.customerid = c.customerid
group by 1
order by 2 DESC
limit 1;

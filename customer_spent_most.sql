select c.customerid, c.firstname, c.lastname, sum(i.total) invoices
from customer c
join invoice i
on i.customerid = c.customerid
group by 1,2,3
order by 4 DESC
limit 1

with t1 as
(select c.email email, c.firstname firstname, c.lastname lastname, g.name genre
from customer c
join invoice i
on i.customerid = c.customerid
join invoiceline il
on il.invoiceid= i.invoiceid
join track t
on il.trackid = t.trackid
join genre g
on t.genreid = g.genreid
where g.name like "ROCK"
order by 1)
select distinct email, firstname, lastname, genre
from t1

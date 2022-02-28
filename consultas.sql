select count (username) from users
where likejazz is TRUE;

select count(username) from users
where (likejazz is TRUE) and (likeroch is TRUE)

select avg(pricepaid) as promedio_ventas 
from sales 
;

select top 1 pricepaid as moda_ventas
from sales 
group by pricepaid 
order by count(*) desc 
;

select median(pricepaid) as media_ventas 
from sales 
limit 1

select avg(s.pricepaid)
from users u
inner join sales s
on u.userid = s.buyerid
where (u.likerock is TRUE) and (u.likejazz is FALSE)
;


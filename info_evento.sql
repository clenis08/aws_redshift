create table event_venue
as (select v.venuename, e.eventname,e.eventid
	from event e
	inner join venue v
	on e.venueid=v.venueid)
;

select u.firstname as Nombre ,u.lastname as Apellido ,u.email as Correo,
e.eventname as NombreEvento ,e.venuename as Lugar,
d.caldate as Fecha, s.qtysold as Cantidad, s.pricepaid as Total
into info_event 
from sales s
inner join users u
	on s.buyerid=u.userid
inner join event_venue e
	on s.eventid=e.eventid
inner join date d
	on s.dateid=d.dateid
;

select avg(s.pricepaid) 
from users u
inner join sales s
on u.userid = s.buyerid
where (u.likerock is TRUE) and (u.likejazz is FALSE);

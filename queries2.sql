select * from sales;

select * from people;

select s.saledate,s.amount,p.salesperson,s.spid,p.spid
from sales as s
join people as p on p.spid = s.spid;

select s.saledate,s.amount,pr.product
from sales  s
left join products  pr on pr.pid=s.pid;

select s.saledate,s.amount,p.salesperson,pr.product,p.team
from sales as s
join people as p on p.spid=s.spid
join products as pr on pr.pid=s.pid;



select s.saledate,s.amount,p.salesperson,pr.product,p.team
from sales as s
join people as p on p.spid=s.spid
join products as pr on pr.pid=s.pid
where s.amount<500
and p.team= "" ;

select s.saledate,s.amount,p.salesperson,pr.product,p.team,g.geoid,s.geoid,g.geo
from sales as s
join people as p on p.spid=s.spid
join products as pr on pr.pid=s.pid
join geo as g on g.geoid=s.geoid
where s.amount<500
and p.team= "" 
and g.geo in ('New zealand','India')
order by saledate;





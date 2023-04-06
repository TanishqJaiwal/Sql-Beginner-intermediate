select geoid, sum(amount),avg(amount),sum(boxes)
from sales
group by geoid;

select g.geo, sum(amount),avg(amount),sum(boxes)
from sales as s
join geo as g on s.geoid=g.geoid
group by g.geo;

select pr.category,p.team,sum(boxes),sum(amount)
from sales as s
join people as p on p.spid=s.spid
join products as pr on pr.pid=s.pid
where p.team<>''
group by pr.category,p.team;

select pr.category,p.team,sum(boxes),sum(amount)
from sales as s
join people as p on p.spid=s.spid
join products as pr on pr.pid=s.pid
group by pr.category,p.team
order by pr.category,p.team;

select pr.product,sum(s.amount) as 'total amount'
from sales as s
join products as pr on pr.pid=s.pid
group by pr.product
order by 'total amount' desc;

select pr.product,sum(s.amount) as 'total amount'
from sales as s
join products as pr on pr.pid=s.pid
group by pr.product
order by 'total amount' desc
limit 10;



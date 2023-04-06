select * from sales;

select saledate,amount,customers from sales;



select saledate, amount,boxes,amount/boxes from sales;

select saledate, amount,boxes,amount/boxes ' amount per box' from sales;

select * from sales
where amount>10000;

select * from sales
where amount>10000
order by amount desc;

select * from sales
where geoid='g1'
order by pid,amount desc;


select * from sales
where amount>10000 and SaleDate>='2022-01-01';

select saledate, amount from sales
where amount>10000 and year(saledate)=2022
order by amount desc;

select * from sales
where boxes >0 and boxes <=50;

select * from sales
where boxes between 0 and 50;


select saledate,amount,boxes,weekday(saledate) 'day of week'
from sales
where weekday(saledate)=4;



select * from people;


select * from people
where team='delish' or team='jucies';

select * from people 
where team in ('delish','jucies');


select * from people
where salesperson like 'b%';

select * from people
where salesperson like '%b%';


select * from sales;


select  saledate,amount,
		case when amount<1000 then 'under 1k'
		     when amount<5000 then 'under5k'
             when amount<10000 then 'under 10k'
			else '10k or more'
		end as 'amount category'
from sales;

#joins






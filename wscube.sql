use tmkoc;
select * from students
where
age>=18 and age<30;

use tmkoc;
select * from students
where
age=19 or age>=24;

use tmkoc;
select * from students
where not
age>=23 and not age=19;

select * from students
where age in
(19,24,27);


select * from students
where city in
('jaipur','udaipur');


select name from students
where 
name like '%l' or '%y';

select name from students
where 
name like  '%l' or '%y' or '%e';

select name from students
where 
name like '%y' or '%r' or '%u';

select name from students
where 
name like 'sh%' or 'ra%';

select * from students
where 
name like 'k%';

select * from students
where 
age between 20 and 25;

select * from students
order by age asc;

select distinct age from students
order by age desc;

select * from students 
where name is null;

insert into students 
values (7,"champak","playboy@gmail.com",null,null);

select * from students;

select * from students 
where age is null and status is null;


select * from students 
where age >20 and age<25
limit 2;


select name,age from students
order by age asc 
limit 3 offset 1;

insert into students 
"fees" values (1000);


create table fee_details(id bigint,Name varchar(50),
email varchar(50),age int(100),city varchar(100),gender varchar(2),Fees bigint);

select * from fee_details;

insert into fee_details
values
(1,'Chandu','ch@gmail.com',25,'gangtok','M',25000),
(2,'Raju','rj@gmail.com',23,'dholakpur','M',23000),
(3,'Bagha','bag@gmail.com',27,'wadnagar','M',33000),
(4,'lachuram','lr@gmail.com',24,'ghatkopar','M',28000);

select * from fee_details;

select count(id) from fee_details
where fees>25000;

select sum(fees) from fee_details;

select avg(fees) as 'avgfee' from fee_details;

select min(fees) from fee_details;

select max(fees) from fee_details;

select max(age) from fee_details;

update fee_details 
set fees=15000
,age=19 
where name='bagha';

select * from fee_details;

delete from fee_details 
where id=3;

select * from fee_details;

delete from students 
where id = 3;

select * from students;

insert into fee_details
(name,email,age,city,fees) values ("Gulabkumar",'Goli@gmail.com',
26,'agra',15000);

select * from fee_details;

select Name,Fees from fee_details order by Fees desc limit 1 offset 1;



select Name,Fees from fee_details order by Fees desc ;

select Name,Fees from fee_details order by Fees 
desc limit 1 offset 1;

select * from fee_details;
commit;

update fee_details set fees=10000 
where id=1;

rollback;

update fee_details set fees=15000 
where id=1;

commit;

rollback;

delete from fee_details where id=1;

#primary key can be only one in a table and cannot be
#null and will always be unique
#mostly primary key will be id or unique number


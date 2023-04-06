Create Database Employee;

use employee;
create table EmpDept
(id bigint unsigned,Name varchar(100),Age int(150),
Department varchar(100),Salary_Annually int);

insert into empdept 
values
(1,"Jethalal",35,"Management",10000000),
(2,"Bhide",32,"Trainer",2500000),
(3,"Taarak",39,"Marketing",3000000),
(4,"Sodhi",31,"Manufacturing",4000000),
(5,"Popatlal",45,"Relationship",1500000),
(6,"Abdul",33,"Catering",1000000),
(7,"Iyer",30,"R&D",5000000);

select * from empdept;

select * from empdept
where
salary_Annually>3000000 and Salary_annually <7500000;

#Between and not Between operators
select Name,Salary_annually from empdept
where Salary_annually between 3000000 and 7500000;


select Name,Salary_annually as Salary from empdept
where Salary_annually not between 3000000 and 7500000;

Select * from empdept;

#Order By and Distinct
select Name, Salary_annually as Salary from empdept
order by Salary desc;

select distinct age from empdept
order by age desc;

insert into empdept
values 
#(8,"Sundar",25,NUll,500000);
(9,"Bagha",NULL,"Tech",NULL);

#IS NULL & IS NOT NULL Operators

select * from empdept
where 
department is Null;

select Name, Salary_annually as Salary from empdept
order by Salary desc limit 2 offset 0;

Select * from empdept;

Select Name,Age Department,Salary_annually as Salary
from empdept
order by Salary desc limit 5 offset 0;

#Aggregate Functions
Select count(id) from empdept
where salary_annually>=2500000;

Select sum(Salary_annually) from empdept;

Select Avg(Salary_annually) from empdept;

Select max(Salary_annually) as 'Maximum Salary'from empdept;

Select min(Salary_annually) as 'Minimum Salary'from empdept;

Select count(id) from empdept;

#Update Query
update empdept 
set age = 30 where name = "Bagha";

Select * from empdept;

update empdept 
set Department = "R&D Head" where name = "Iyer";

Select * from empdept;

#Delete Query
delete from empdept
where age <= 25;
 
Select * from empdept;

#commit and rollback
update empdept set Salary_annually = 15000000
where name = "Jethalal";

#primary and foreign key

Create table city(id int not null auto_increment,
name varchar(50) Not null, age int not null,
city varchar(10) not null,
Primary key(id));

Create table students2(id int not null auto_increment,
name varchar(50) Not null, age int not null,
city int (10) not null,
foreign key (city) references city (id));

drop table students;




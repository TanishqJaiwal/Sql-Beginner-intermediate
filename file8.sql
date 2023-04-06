#Foreign key is used to link two tables
# A foreign key in one table (child table)is used to
#point primary key in another table(parents table)


use tmkoc;
create table city(id int not null unique auto_increment,
name varchar(50) not null);

insert into city values(1,'Agra');
insert into city values(2,'Bhopal');
insert into city values(3,'Delhi');
insert into city values(4,'Jaipur'),(5,'Rajkot');
select * from city;



create table bachhe(id int not null unique primary key auto_increment,
Name varchar(50) Not null,email varchar(100) not null unique,
age int not null,city_id int,
foreign key (city_id) references city(id));

select * from bachhe;

insert into bachhe (name,email,age)
values
('sundar','sun@gmail.com',4);

select * from bachhe join city 
on 
bachhe.city_id=city.id;


#joins are used only on relational databases 

#inner join
#inner join throws data which are common between two tables

#left join
#It throws output where there are common value between two and
#the whole data of left table (but only common value from right)
#vice-versa for the right table
#cross join is join where values between two table
#join with each rows that is 1 data in left table will make relation with 
#all values in right table and so on
#Group by and having clause
#subquery:-
#
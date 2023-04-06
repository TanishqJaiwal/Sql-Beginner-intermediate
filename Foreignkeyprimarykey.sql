create table cities(id int not null primary key,
name varchar(50)not null);

insert into cities values
 (1,"Bhopal"),
(2,"Indore"),
(3,"Varanasi"),
(4,"Lucknow"),
(5,"Pune"),
(6,"Nashik"),
(7,"Surat"),
(8,"Chandigarh");

select * from cities;
#drop table cities;

drop table student2;

create table students2
(
	id int not null unique auto_increment,
    name varchar(100) not null,
    email varchar(100) not null unique,
    city_id int null,
    primary key(id),
    foreign key (city_id) references cities(id)

);

insert into students2(name,email,city_id)
value
#("Harish","Hari@gmail.com",1),
#("Mangesh","mangya@gmail.com",4),
#("Rajesh","raju@gmail.com",7),
#("Ramesh","ramu@gmail.com",5);
("Ravi","ravi@gmailcom",8);


select * from students2;
select * from cities;
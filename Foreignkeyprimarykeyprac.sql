use wscube;

create table City
(	id int not null auto_increment primary key,
	City varchar(100) not null
);

insert into City 
values	
	(1,"Indore"),
	(2,"Bhopal"),
    (3,"Lucknow"),
    (4,"Varanasi"),
    (5,"Pune");

Select * from City;

create table school
(
	id int not null unique auto_increment,
	name varchar(100) not null,
    email varchar(100) not null unique,
    city_id int null,
    primary key (id),
    foreign key (city_id) references City(id)
);


insert into school(name,email,city_id)
values
("Bhagirath","bhagi@gmail.com",4),
("Mangesh","mangya@gmail.com",3),
("Nigesh","nigga@gmail.com",5);

select * from school;

insert into school(name,email)
values
("Ramesh","ramu@gmail.com");


select * from school
inner join City on school.city_id = City.id;


select * from school
join City on school.city_id = City.id;
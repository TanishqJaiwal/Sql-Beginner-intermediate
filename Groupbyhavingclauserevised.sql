use scaler;

create table cities
(
	id int not null primary key,
    name varchar(100) not null
);

insert into cities 
values
(1,"Bhopal"),
(2,"Lucknow"),
(3,"Baraeili"),
(4,"Kanpur"),
(5,"Nagpur"),
(6,"Vijaywada");




create table students 
(
	id int not null unique auto_increment primary key,
	name varchar(100) not null, 
    email varchar(100) not null,
    city_id int null,
    foreign key (city_id) references cities(id)
); 



insert into students (id,name,email,city_id)
values
(1,"Guddu","gud@gmail.com",1),
(2,"Bhagirath","bhagi@gmail.com",5),
(3,"Bheem","bheem@gmail.com",1),
(4,"Jaggu","jags@gmail.com",3),
(5,"Dholu","dhol@gmail.com",2),
(6,"Kalia","kal@gmail.com",3),
(7,"Chhutki","chu@gmail.com",4);


select city_id,cities.name, count(city_id) as total from students
inner join cities
on students.city_id = cities.id
group by city_id;

#group by using having clause
select city_id,cities.name, count(city_id) as total from students
inner join cities
on students.city_id = cities.id
group by city_id
having count(city_id) >= 0;

create table courses(id int not null primary key,
name varchar(100) not null);

insert into courses values
(1,"Data Analytics"),
(2,"Us Cma"),
(3,"ACCA"),
(4,"CFA"),
(5,"FRM"),
(6,"CFP");





alter table students
add courseID int,
add foreign key(courseID) references courses(id);


update students
set courseID = 4
where name = "chhutki";

select Courseid,courses.name, count(courseid) as total from students
right join courses
on students.courseid = courses.id
group by courseid;
-- having count(courseid) >= 0;

select courseid,courses.name, count(courseid) as total from students
inner join courses
on students.courseid = courses.id
group by courseid
having count(courseid) <2;
#Joinning multiple table

create table course(id int auto_increment not null unique primary key, 
Major varchar(100) not null);


insert into course 
values
(1,"Physics"),
(2,"Data analytics"),
(3,"Machine Learning"),
(4,"US CMA"),
(5,"ACCA");

alter table school
add Major_Course int null,
add foreign key (Major_course) references course(id);

update school
set major_course = 5
where name = "Mangesh";

#multiple table join

select * from school
inner join city 
on school.city_id = city.id
inner join course
on school.major_course = course.id;
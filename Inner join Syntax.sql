#Inner join syntax

select * from school
inner join City on school.city_id = City.id;


select * from school
join City on school.city_id = City.id ;

Select * from city;
#group by & having clause

select * from school group by (city_id);

select City_id, count(city_id) as total_cityid from school 
group by (city_id);

select City_id,City.city as City_Name, count(city_id) as total_cityid from school 
inner join City
on school.city_id = city.id
group by (city_id);


#Using having clause

select course.id,course.major as Name, count(course.id) as total from school 
inner join City
on school.major = Course.id
group by (course.id);
#having count(course.id) = 1;
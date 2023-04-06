#Left & Right Join

#left join
select * from school 
left join city on school.city_id = city.id;


#right join
select * from school 
right join city on school.city_id = city.id;
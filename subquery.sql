#subquery with exists & not exists

Select * from city;
select * from school;



select name from school 
where
city_id = (select id from City where city = "Lucknow"); 


#select id from City where city = "Indore"

#Exists query

select name from school 
where
exists (select id from City where city = "Kanpur");

#it did not returned anything as the city
#does not exists thats why even the students name too 
#did not showed up.

#not exists
select name from school 
where
not exists (select id from City where city = "Lucknow"); 

#no name showed up as the lucknow city does exist in the
#table and if any other city which does not exists 
#had we entered that city name, then the student name 
#would have showed up
 

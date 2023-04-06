Select * from empdept;
commit;

update empdept set salary_annually = 15500000
where name = "jethalal";

commit;
rollback; #now this wont work as in previous line the updated data
# is being commited.
#we can use update insert and delete for data transaction
#i.e commit and rollback after commiting the rollback wont work.
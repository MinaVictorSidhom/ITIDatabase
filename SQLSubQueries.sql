use ITI;

ALTER SCHEMA dbo TRANSFER HR.Student;
Alter Schema dbo transfer HR.instructor;
Alter Schema dbo transfer sales.Department;

select *
from Student
where st_age<23


select *
from Student
where st_age<(select AVG(st_age) from Student) 


select *,(Select Count(st_id) from student)
from student

select *, 14 as numberOfStudents
from student

select dept_name
from Department
where Dept_Id in (select distinct dept_id
				  from student
				  where dept_id is not null)


select distinct dept_name
from student s inner join department d
	on s.Dept_id=d.Dept_id

/*select distinct dept_name
from department*/

select *
from student 
where st_age> all(select st_age from student where
st_address='cairo')

select *
from student 
where st_age> any(select st_age from student where
st_address='cairo')

select *
from student 
where st_address!='cairo' and st_age>
any(select st_age from student where
st_address='cairo')

--join +DML
--subqueries + DML

delete from Stud_Course
where st_id in (select st_id
				from Student S inner join Department D
				on S.Dept_id=D.Dept_id and dept_name='sd')

--set operators
--union   union all   intersect  except

--batch
--set of independent queries

select st_fname
from Student
union all 
select ins_name
from Instructor


select st_fname as names,St_Id as ids
from Student
union all 
select ins_name,ins_id
from Instructor


select st_fname
from Student
union     -- distinct    order + unique
select ins_name
from Instructor

select st_fname
from Student
intersect
select ins_name
from Instructor


select st_fname
from Student
except
select ins_name
from Instructor


------ see the video about excecution odrder
--from
--join
--on
--where
--group by
--having
--select 
--order by
--top

--No Error because Order By executed After select
select st_fname +' '+st_lname as fullName
from student
order by fullName

--Error because where executed before select
select st_fname +' '+st_lname as fullName
from student
where fullName='ahmed hassan'

--there are two to solve this problem

--1 put it without alias name in Where clause
select st_fname +' '+st_lname as fullName
from student
where st_fname +' '+st_lname= 'ahmed hassan'

--2 use subqueries => subqueries take more time and may
-- leak performance
select *
from (select st_fname +' '+st_lname as fullname
		from Student) as newtable
where fullname='ahmed hassan'



 

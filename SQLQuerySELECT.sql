use ITI

select * from Student

select * from Student
where Dept_id=10

select * from Student
where St_Address='alex'

select St_Id,St_Fname from Student
where st_age>23


select * from Student
order by st_age asc

select * from Student
order by st_age desc

select * from Department
order by Manager_hiredate desc

select st_fname,dept_id,st_age
from Student
order by St_Address

select st_fname,dept_id,st_age
from Student
order by St_Fname

select st_fname,dept_id,st_age
from Student
order by 1

select st_fname,dept_id,st_age
from Student
order by 2

select st_fname,dept_id,st_age --3 indexes to order by
from Student
order by 4 --Out of range

select st_fname,dept_id,st_age
from Student
order by st_fname

select st_fname,dept_id,st_age
from Student
order by st_fname,dept_id

select st_fname,dept_id,st_age
from Student
order by st_fname asc,dept_id desc


select st_fname+' '+st_lname as fullname
from Student

select [full name]=st_fname+st_lname
from student

select st_fname+' '+st_lname [full name]
from Student

select st_fname+' '+st_lname "full name"
from Student

use ITI

select * from Student
where St_Fname is Null

select * from Student
where St_Fname is not Null

select * from Student
where St_Fname is not null and St_Lname is not Null

select * from student
where St_Address ='Alex' and St_Address='Cairo';

select * from student
where St_Address ='Alex' or St_Address='Cairo';

select * from student
where St_Address in('Alex','Cairo','mansoura');

select *
from Student
where St_Age in (20,30);

select *
from Student
where St_Age between 20 and 40;

select * from Instructor
where Dept_Id in (10,30)


select * from student
where St_Age >=20 and St_Age<=25;

select * from Instructor
where Dept_Id not in (5,10)

select * from Instructor
where Dept_Id not between 10 and 30

select *from Instructor
where Ins_Id >5 and (Dept_Id>10 or Dept_Id=20);

select distinct St_Fname
from student

select distinct St_Age
from student


select distinct St_Age,St_Fname
from student

select St_fname+space(4)+st_Age
from Student;

select St_fname+space(4)+Convert(varchar(5),st_Age)
from Student;
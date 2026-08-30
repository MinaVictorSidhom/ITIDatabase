use ITI

--Cartesian Product 98 column
select st_fname,dept_name
from Student,Department

-- 98
select st_fname,dept_name
from Student cross join Department

--inner join equi join
select st_fname,dept_name
from Student,Department
where Department.Dept_Id=Student.Dept_Id

select st_fname,dept_name
from Student S,Department D
where S.Dept_Id=D.Dept_Id

select st_fname,dept_name,D.Dept_Id
from Student S,Department D
where S.Dept_Id=D.Dept_Id

select*
from Student S,Department D
where S.Dept_Id=D.Dept_Id

select st_fname,*
from Student S,Department D
where S.Dept_Id=D.Dept_Id and St_Address='alex'
order by Dept_Name

select st_fname,dept_name
from Student S inner join Department D
On D.Dept_Id=S.Dept_Id
where St_Age>23

select st_fname,dept_name
from Student S inner join Department D
On D.Dept_Id=S.Dept_Id and St_Age>23

--outer join
select st_fname,dept_name
from Student S left outer join Department D
On D.Dept_Id=S.Dept_Id

select st_fname,dept_name
from Student S right outer join Department D
On D.Dept_Id=S.Dept_Id

select st_fname,dept_name
from Student S full outer join Department D
On D.Dept_Id=S.Dept_Id


--self join

select x.St_Fname as studentNAme, Y.St_Fname as LeaderName
from Student X, Student Y
where Y.St_Id=X.St_super --(y,parent,supervisor) (x,child,student)

select x.St_Fname as studentNAme, Y.*
from Student X, Student Y
where Y.St_Id=X.St_super

select x.St_Fname as studentNAme, Y.St_Fname as LeaderName
from Student X inner join Student Y
on Y.St_Id=X.St_super

--Join Multible Tables

select st_fname,crs_name,grade
from Student S,Course C,Stud_Course SC
where S.St_Id=SC.St_Id and
	  Sc.Crs_Id=C.Crs_Id;

select st_fname,crs_name,grade
from Student S inner join Stud_Course SC
On S.St_Id=SC.St_Id

inner join Course C
on Sc.Crs_Id=C.Crs_Id;


-- Join DML
update Stud_Course
	set Grade+=10

update Stud_Course
	set Grade+=10
where St_Id=1


update Stud_Course
	set Grade+=10
from Student S,Stud_Course C
where S.St_Id=C.St_Id and S.St_Address='cairo';

delete sc
from Stud_Course sc ,Course c
where sc.Crs_Id=c.Crs_Id and Crs_Name='SQL Server'
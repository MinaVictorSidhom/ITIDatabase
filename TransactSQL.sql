--Transact SQL
--Top

select db_name()

USE ITI

select * 
from student
where St_Address='Cairo'

select top(2) *
from Student

select top(5) st_fname
from Student

select top(3) *
from Instructor where salary>5000

-- from select order top
select top(2) salary 
from Instructor
order by Salary desc

select top(7) with ties *
from student
order by st_age desc


--newid()

select newid() --GUID

select *, newid() as new_id
from Student
order by new_id

select top(1)*
from Student
order by newid()

create table MyUsers
(
UserID uniqueidentifier primary key default newid(),
UserName varchar(20),
_password varchar(20)
)

insert into MyUsers(UserName,_password) Values('Mina','will
do it')
insert into MyUsers(UserName,_password) Values('Mina Victor','will
do it')

select *
from MyUsers


--object full path
--servername.DBName.SchemaName.ObjectName

select *
from [DESKTOP-HOOVREK\LOCALDB#8B1AC377].[ITI].[dbo].Student

select * from Company_SD.dbo.Project

--select into 
--DDL
--Create table from existing one

select * into table2
from student

select * into table3
from student

select * into Hr.student
from student

--it is different than this ===> alter schema Hr transfer student

select * into company_sd.dbo.student
from student

select st_id,St_Fname into PartFromStudent
from Student
where St_Address='Alex'


-- insert based on select 
insert into PartFromStudent
select st_id,st_fname from student where St_Age>22


---- bulk insert
--insert from data file 

bulk insert PartFromStudent
from 'D:\DB.txt'
with (fieldterminator=',')

-- see how to use cmd with database

--top select 
--top DML

update top(5) student
		set St_address='alex'


delete top(3) from student

delete top(25) percent
from student


--use ranking functions

select * from(select *,ROW_NUMBER() over (order by st_age desc) as RN
from Student) as newtable
where RN=3

select * from (select *,Dense_rank() over (order by st_age desc) as DR
from Student) as newtable
where DR=1


select * from(select *,Ntile(3) over (order by st_age desc) as G
from Student) as newtable
where G=1

select * from(select *,ROW_NUMBER() over (partition by dept_id
order by st_age desc) as RN
from Student) as newtable
where RN=3

select * from (select *,Dense_rank() over (partition by dept_id order by st_age desc) as DR
from Student) as newtable
where DR=1


select * from(select *,Ntile(2) over (partition by dept_id 
order by st_id desc) as G
from Student) as newtable


-- Windowing 
-- LEAD     LAG

select s.st_id as sid,st_fname as sname,grade,crs_name as Cname
into grades
from student s,Stud_Course sc,Course c
where s.St_Id=sc.St_Id and sc.Crs_Id=c.Crs_Id


select sname,grade,
	   _prev=LAG(grade) over(order by grade),
	   _next=lead(grade) over(order by grade)
from grades

select sname,grade,
	   _prev=LAG(sname) over(order by grade),
	   _next=lead(sname) over(order by grade)
from grades

select sname,grade,Cname,
	   _prev=LAG(grade) over(partition by Cname order by grade),
	   _next=lead(grade) over(partition by Cname order by grade)
from grades

-- take a look in Last_value and First_Value Function
--percent_ranK()



--Merge Statement

create table llast
(
	Lid int,
	Lname varchar(10),
	Lvalue int
)

create table Dailyl
(
	did int,
	dname varchar(10),
	dvalue int
)


merge into llast as T
using Dailyl as S
on T.Lid =S.did

when Matched then
	update set T.Lvalue=S.Dvalue

when not matched then
	insert
	values(S.did,S.dname,S.dvalue)

output $action ;


-- take a look  in video that demostrates Rollup,cube and
-- grouping sets


-- PIVOT & UnPIVOT

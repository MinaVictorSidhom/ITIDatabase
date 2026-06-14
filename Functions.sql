--built in functions

--system function
select db_name()

select user_name()

select suser_name()

select HOST_NAME()

if OBJECT_ID('student') is null
create table student(
	id int,
	name varchar(20)
)

select object_id('exam')
select object_id('student')

select COL_NAME(object_id('student'),1)
select COL_NAME(object_id('student'),2)

select IDENT_CURRENT('mystaff')

select IDENT_CURRENT('employees')

--date functions

select getdate()

select year(getdate())

select month(getdate())

select day(getdate())

select DATEPART(month,getdate())
select DATEPART(year,getdate())
select DATEPART(day,getdate())

select DATEName(month,getdate())
select DATEname(year,getdate())
select DATENAME(day,getdate())

select dept_name, manager_hiredate
from Department

select dept_name, year(manager_hiredate)
from Department

select dept_name, DateDiff(year,manager_hiredate,getdate())
from Department

select dept_name, DateDiff(month,manager_hiredate,getdate())
from Department

select dept_name, DateDiff(day,manager_hiredate,getdate())
from Department


select DATEFROMPARTS(2002,5,17)

select ISDATE('2002/5/17')

select DATEADD(day,7,getdate())
select DATEADD(month,7,getdate())
select DATEADD(year,7,getdate())

select convert(varchar(50),getdate())
select cast(getdate() as varchar(50))

select convert(varchar(50),getdate(),101)
select convert(varchar(50),getdate(),102)
select convert(varchar(50),getdate(),103)
select convert(varchar(50),getdate(),104)
select convert(varchar(50),getdate(),105)

select format(getdate(),'dddd MMMM yyyy')
select format(getdate(),'ddd MMM yyy')
select format(getdate(),'dd MM yy')
select format(getdate(),'dddd')
select format(getdate(),'MMMM')
select format(getdate(),'hh:mm:ss')
select format(getdate(),'hh')
select format(getdate(),'mm')
select format(getdate(),'hh tt')
select format(getdate(),'dd-MM-yy hh:mm:ss')

select format(eomonth(getdate()),'dd')
select format(eomonth(getdate()),'dd MM yy')
select eomonth(getdate(),1)
select eomonth(getdate(),-1)


--Null Handling

select isnull(st_fname,'')
from student

select isnull(st_fname,St_Lname)
from student

select coalesce(st_fname,st_Lname,st_address,'No data')
from Student

select nullif('ahmed','ahmed')

select nullif('ahmed','amr')


---String Functions

select concat(st_fname,' ',st_age)
from student

select concat('Student name= ',st_fname,'&Age=',st_age)
from Student

select concat('Mina ','Victor ','Sidhom ')

select concat_ws('+','Mina',quotename('Victor',']'),'Sidhom')

select UPPER(st_fname),lower(st_lname)
from student

select len(st_fname),st_fname
from Student

select substring(st_fname,1,3)
from Student

select substring(st_fname,2,3),St_Fname
from Student

select *
from Student
where len(St_Fname)>5

select left('Mina',3)
select right('Mina',3)

select CHARINDEX('o','Min Victor')
select PATINDEX('%r','Min Victor')

select REPLACE('Mina','n','No')

select STUFF('ahmedhassan',2,4,'li')

select trim('    ahmed    ')

select LTRIM('      mina     ')

select RTRIM('      mina     ')

select REVERSE(st_fname)
from student;

select REPLICATE(st_fname,2)
from student

select replicate('Mina',2)


--string manipulation  array 

select STRING_AGG(st_fname,'+')
from student

select 'Mina,Victor,Sidhom'

--check compatibility level
select * from string_split('C#,MVC,SQl',',') 

create table mydata(
	eid int primary key,
	ename varchar(20),
	skills varchar(40)
)

select * from mydata

select eid,ename,value
from mydata cross apply string_split(skills,',')

select str('12')


--Aggregate Functions+ grouping

-- math functions: sin cos tan log power

select abs(-2)

select floor(4.88)

select ceiling(4.88)

select Round(4.88888,2)

select SQRT(49)

select square(5)

select power(salary,2)
from Instructor

select RAND()

--logical functions 

select isdate('1/1/2002')
select ISNUMERIC('ahmed')
select ISNUMERIC('12')

--1 if you choose index 2 int it will work if not it will be
--error 
select choose(1,'mina',2,'kiro')

-- work correctly
select choose(3,'mina','victor','kiro')


---Conditional logic 

select ins_name,
		case 
			when salary >=3000 then 'high salary' 
			when salary <3000 then 'low salary'
			else 'no data'
		end   as criteria
from Instructor


select ins_name, iif(salary>7000,'High','low')
from Instructor


update Instructor
			set salary=
						case
							when salary>15000 then salary*1.10
							else salary*1.20
						end

	   
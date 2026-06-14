create schema HR
create schema sales

alter schema HR transfer Student
alter schema HR transfer instructor
alter schema sales transfer department

select * from HR.Student

create table sales.Student
(
	id int primary key,
	ename varchar(20)
)
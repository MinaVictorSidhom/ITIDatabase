use ITI

--Data Types
--Like Operator it is like regex

--identity
create table myemp
(
	id int primary key,
	ename varchar(20)
)

insert into myemp values(1,'Mina');
select * from myemp

drop table myemp;

create table myemp
(
 id int primary key identity(1,1), -- (1,1) is a default
 ename varchar(20)
)

insert into myemp values('Mina')
insert into myemp values('Kero')
insert into myemp values('Omar')

select * from myemp

delete from myemp

create table mystaff
(
 id int identity,
 SSN int primary key,
 ename varchar(20)
)

drop table mystaff
insert into mystaff values(1000,'Mina'),(5000,'Kero'),(4000,'Victor')

select * from myemp

delete from myemp
where id between 16 and 22

--insert data into identity
insert into myemp(id,ename) values(16,'Mona') --must list columns
insert into myemp(id,ename) values(17,'Mona')
insert into myemp(id,ename) values(18,'Hana')

set identity_insert myemp on

set identity_insert myemp off

Select @@IDENTITY

Select SCOPE_IDENTITY()

Select IDENT_CURRENT('myemp')

select IDENT_SEED('myemp')

select IDENT_INCR('myemp')

dbcc checkident('myemp',reseed,0)

select * from myemp
insert into myemp(id,ename) values('Hassan')


select *from student
-- drop  delete  truncate
drop table Student --ddl data&metadata

delete from Student --DML data  --where  --log --rollback
					--child & Parent

truncate table Student --data    sometimes log  can't rollback
					--child -- reset identity

insert into myemp values('Mina')

delete from myemp

select * from myemp
select * from myemp

truncate table myemp

-- look at Foriegn key updates types set null & cascade

-- isnull
select isnull(st_fname,'has no name')from student

select isnull(st_fname,st_lname)from student



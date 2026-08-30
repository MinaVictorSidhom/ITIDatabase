Create Database mydb;
use mydb;

Create table Employee(SSN Int,FName varchar(20),
LName varchar(20),BDate date,Address varchar(50),
Sex varchar(10),Salary int,SuperSSN int,DNO int)


Alter Table Employee
Alter Column SSN int not Null

ALTER TABLE Employee
ADD CONSTRAINT pk_SSN PRIMARY KEY (SSN);

Create table Department(DNumber int Primary key,DName varchar(20),MgrSSN int,MgrStartDate date)

Create table Dept_locations(DNumber int,Dlocation varchar(50)
Primary Key(DNumber,Dlocation)) --Creating Composite Keys 

Create Table Project(PNumber int primary key,PName varchar(50),
PLocation varchar(50),DNum int foreign key references Department(DNumber))

Create table Works_On
(ESSN int,PNo int,Hours int
PRIMARY KEY(ESSN,PNO))

Create table Dependent
(ESSN int,Dependent_Name varchar(30),Sex varchar(10),BDate date
,RelationShip varchar(20),
PRIMARY KEY(ESSN,Dependent_Name)
)
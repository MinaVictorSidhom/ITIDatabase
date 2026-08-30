use Company_SD

--Display the Department id, name and id and the
--name of its manager.

select * from Departments
select * from Employee

-- inner join (inner join key word & on)
select Dnum,Dname,(Fname+' '+Lname) as ManagerName
from Departments D inner join Employee E
on D.MGRSSN=E.SSN

-- inner join (, & on) 
select Dnum,Dname,(Fname+' '+Lname) as ManagerName
from Departments D,Employee E
where D.MGRSSN=E.SSN

--Display the name of the departments
--and the name of the projects under its control.

Select Dname,Pname
from Departments D inner join Project P
on D.Dnum=P.Dnum

-- Display the full data about all the dependence associated 
--with the name of the employee they depend on him/her.

select * 
from Dependent D,Employee E
where D.ESSN =E.SSN





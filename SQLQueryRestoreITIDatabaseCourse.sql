use Company_SD

--1.Display all the employees Data
Select *
From Employee;

--2.Display the employee First name, last name, Salary and Department number.
Select Fname,Lname,Salary,Dno
From Employee

/*3.Display all the projects names, locations and the 
department which is responsible about it.*/

Select Pname,Plocation,Dnum
From Project;

/*4.	If you know that the company policy is to pay an annual commission for each employee with specific percent equals 10% of his/her annual salary .Display each employee full name and his annual commission
in an ANNUAL COMM column (alias).*/

Select Fname+''+Lname as [full name], (salary*10/100) as [ANNUAL COMM] 
From Employee

--5.Display the employees Id, name who earns more than 1000 LE monthly.

Select SSN from Employee
Where Salary>1000;

--6.Display the employees Id, name who earns more than 10000 LE annually

Select SSN from Employee
where Salary>10000

--7.Display the names and salaries of the female employees 

Select fname,salary
from Employee
where Sex='F';

/*8.Display each department id, name which managed 
by a manager with id equals 968574.*/

Select Dnum,Dname
from Departments
where MGRSSN=968574

/*
9.	Display the ids, names and locations of  the pojects which 
controled with department 10.
*/

Select Pnumber,Pname,Plocation
from Project
Where Dnum=10;



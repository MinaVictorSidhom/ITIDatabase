select *from Instructor

select sum(salary) as sum
from Instructor

select count(ins_id) as count
from Instructor

select min(salary),max(salary)
from Instructor

select count(*), count(ins_id),count(ins_degree)
from Instructor -- aggreage functions ignore null 
--except count(*)

select avg(st_age)
from Student

select avg(isnull(St_Age,0))
from Student

select sum(st_age)/count(*)
from Student


use ITI

select sum(salary) as SumSalary,Dept_id
from Instructor
group by Dept_Id


select sum(salary),d.dept_id,dept_name
from Instructor i inner join Department d
	on d.Dept_Id=i.Dept_Id
group by d.Dept_Id,Dept_Name

select count(st_id),St_Address,Dept_Id
from Student
group by St_Address,Dept_Id

select sum(salary),dept_id
from Instructor
group by Dept_Id

select sum(salary),dept_id
from Instructor
where salary>1000
group by Dept_Id

select sum(salary),dept_id
from Instructor
group by Dept_Id

select sum(salary),dept_id
from Instructor
group by Dept_Id
having Sum(salary)>30000


select sum(salary),dept_id
from Instructor
group by Dept_Id
having count(Ins_Id)>6


--having without group by   special case 

select sum(salary),avg(salary)
from Instructor
having count(Ins_Id)<100
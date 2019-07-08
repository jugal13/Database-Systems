-- lab 2

-- 1
select bdate ,address
from Employee
where fname='John' and minit='B' and lname='Smith';

-- 2
select fname,address
from Employee as e , Department as d
where e.dno = d.dnumber and d.dname = 'Research';

-- 3
select pnumber,dnum,lname,address,bdate
from Employee as e , Department as d, Project as p
where p.plocation = 'stafford' and p.dnum = d.dnumber and d.mgr_ssn = e.ssn;

--4
select a.fname,a.lname,b.fname,b.lname
from Employee as a,Employee as b
where a.super_ssn = b.ssn;

-- 5
select ssn
from Employee;

--6
select ssn,dname
from Employee,Department;

-- 7
select distinct(pnumber)
from Employee as e, Project as p, Works_on as w, Department as d
where p.pnumber = w.pno and ((w.essn = e.ssn and e.lname='Smith') or (p.dnum = d.dnumber and e.lname='smith' and d.mgr_ssn=e.ssn));

-- 8
select *
from Employee
where address like '%houston , TX%';

-- 9
select *
from Employee
where bdate like '%195%';

-- 10
select salary*1.10
from Project as p, Employee as e, Works_on as w
where p.pname='ProductX' and p.pnumber = w.pno and w.essn = e.ssn;

-- 11
select *
from Employee
where salary < 40000 and salary > 30000 and dno=5;

-- 12
select *
from Employee as e 
where e.ssn in 
(select distinct(essn)
from Project , Works_on 
where pnumber = pno
) 
order by dno,lname,fname;
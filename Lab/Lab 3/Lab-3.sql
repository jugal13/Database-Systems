-- lab3

--1.	
select fname,minit,lname from Employee where super_ssn is null;

-- 2.
select pno  
from Employee, Works_on,Department 
where essn=ssn and lname='Smith' Or mgr_ssn=Ssn and lname='Smith';

-- 3.
select distinct essn from works_on where (Pno,Hours) In ( select pno,hours from works_on where essn='123456789');
 
-- 4.	
select Fname, lname 
from Employee  
where salary > (select Max(salary) from Employee where Dno=5);


-- 5.	
select distinct Fname,lname 
from Dependent ,Employee 
where ssn not in (select ssn from Employee,Dependent where ssn=Essn);

-- 6. from here
select distinct  fname,lname 
from Employee,Dependent,Department 
where essn=mgr_ssn and essn=ssn;

-- 7.
SELECT Fname, Lname FROM EMPLOYEE WHERE NOT EXISTS ((SELECT Pnumber FROM PROJECT WHERE Dnum=5) EXCEPT (SELECT Pno from WORKS_ON where Essn=ssn));

-- 8.
select essn 
from Works_on
where pno in (1,2,3);

-- 9.
select distinct  essn 
from Works_on
where pno in (1,2,3);

-- 10.
select Fname,lname,Address 
from  Employee
JOIN  Department on  dnumber=dno 
where dname='Research';

 -- 11.
select lname, Bdate,address,Dname 
from Employee 
JOIN Department on mgr_ssn=ssn 
where dnumber in   
(select Department.dnumber 
	from  dept_locations 
	JOIN Department ON dept_locations.dnumber=Department.dnumber 
	where dlocation='Stafford');
CREATE database Company;

use Company;

CREATE TABLE Employee
( fname VARCHAR(15) NOT NULL,
minit CHAR,
lname VARCHAR(15) NOT NULL,
ssn CHAR(9) NOT NULL,
bdate DATE,
address VARCHAR(30),
sex CHAR,
salary DECIMAL(10,2),
super_ssn CHAR(9),
dno INT NOT NULL,
PRIMARY KEY (ssn),
FOREIGN KEY (super_ssn) REFERENCES Employee(ssn));
-- FOREIGN KEY (dno) REFERENCES DEPARTMENT(dnumber) );ssssss

CREATE TABLE Department
( dname VARCHAR(15) NOT NULL,
dnumber INT NOT NULL,
mgr_ssn CHAR(9) NOT NULL,
mgr_start_date DATE,
PRIMARY KEY (dnumber),
UNIQUE (dname),
FOREIGN KEY (mgr_ssn) REFERENCES Employee(ssn) );

CREATE TABLE dept_locations
( dnumber INT NOT NULL,
dlocation VARCHAR(15) NOT NULL,
PRIMARY KEY (dnumber, dlocation),
FOREIGN KEY (dnumber) REFERENCES Department(dnumber) );

CREATE TABLE Project
( pname VARCHAR(15) NOT NULL,
pnumber INT NOT NULL,
plocation VARCHAR(15),
dnum INT NOT NULL,
PRIMARY KEY (pnumber),
UNIQUE (pname),
FOREIGN KEY (dnum) REFERENCES Department(dnumber) );

CREATE TABLE Dependent
( essn CHAR(9) NOT NULL,
dependent_name VARCHAR(15) NOT NULL,
sex CHAR,
bdate DATE,
relationship VARCHAR(8),
PRIMARY KEY (essn, dependent_name),
FOREIGN KEY (essn) REFERENCES Employee(Ssn) );

CREATE TABLE Works_on
(essn CHAR(9) NOT NULL,
pno INT NOT NULL,
hours DECIMAL(10,2),
FOREIGN KEY (essn) REFERENCES Employee(Ssn),
FOREIGN KEY (pno) REFERENCES Project(pnumber)
);

alter table Department add foreign key (mgr_ssn) references Employee(ssn);

SET FOREIGN_KEY_CHECKS=0;
-- SET FOREIGN_KEY_CHECKS=1;  use again to enable foeign key check

insert into Employee values('John','B','Smith',123456789,'1965-01-09','731 fondren , houston , TX','M',30000,333445555,5);
insert into Employee values('Franklin','T','Wong',333445555,'1955-12-08','638 Voss , houston , TX','M',40000,888665555,5);
insert into Employee values('Alicia','J','Zelaya',999887777,'1968-01-19','3321 Castle , Spring , TX','F',25000,987654321,4);
insert into Employee values('Jennifer','S','Wallace',987654321,'1941-06-20','291 Berry , bellaire , TX','F',43000,987654321,4);
insert into Employee values('Ramesh','K','Narayan',666884444,'1962-09-15','975 fire oak , humble , TX','M',38000,333445555,5);
insert into Employee values('Joyce','A','English',453453453,'1972-07-31','5631 Rice , houston , TX','F',25000,333445555,5);
insert into Employee values('Ahmed','V','Jabbar',987987987,'1969-03-29','980 Dallas , houston , TX','M',25000,987654321,4);
insert into Employee values('James','E','Borg',888665555,'1937-11-10','450 stone , houston , TX','M',55000,NULL,1);

insert into Department values('Research',5,333445555,'1988-05-22');
insert into Department values('Administration',4,987654321,'1998-01-01');
insert into Department values('Headquarters',1,888665555,'1981-01-01');

insert into dept_locations values(1,'houston');
insert into dept_locations values(4,'stafford');
insert into dept_locations values(5,'bellaire');
insert into dept_locations values(5,'sugarland');
insert into dept_locations values(5,'houston');

insert into Project values('ProductX',1,'bellaire',5);
insert into Project values('ProductY',2,'sugarland',5);
insert into Project values('ProductZ',3,'houston',5);
insert into Project values('Computerization',10,'stafford',4);
insert into Project values('Reorganization',20,'houston',1);
insert into Project values('Newbenefits',30,'stafford',4);

insert into Dependent values(333445555,'Alice ','F','1986-04-05','Daughter');
insert into Dependent values(333445555,'Theodore','M','1983-10-25','Son');
insert into Dependent values(333445555,'Joy','F','1958-05-03','Spouse');
insert into Dependent values(987654321,'Abner','M','1942-02-28','Spouse');
insert into Dependent values(123456789,'Michael','M','1988-01-04','Son');
insert into Dependent values(123456789,'Alice','F','1988-12-30','Daughter');
insert into Dependent values(123456789,'Elizabeth','F','1967-05-05','Spouse');

insert into Works_on values (123456789,1,32.50);
insert into Works_on values (123456789,2,7.50);
insert into Works_on values (666884444,3,40.0);
insert into Works_on values (453453453,1,20.0);
insert into Works_on values (453453453,2,20.0);
insert into Works_on values (333445555,2,10.0);
insert into Works_on values (333445555,3,10.0);
insert into Works_on values (333445555,10,10.0);
insert into Works_on values (333445555,20,10.0);
insert into Works_on values (999887777,30,30.0);
insert into Works_on values (999887777,10,10.0);
insert into Works_on values (999887777,10,35.0);
insert into Works_on values (999887777,30,5.0);
insert into Works_on values (987654321,30,20.0);
insert into Works_on values (987654321,20,15.0);
insert into Works_on values (888665555,20,NULL);

select * from Employee;
select * from Department;
select * from dept_locations;
select * from Project;
select * from Dependent;
select * from Works_on;

SET FOREIGN_KEY_CHECKS=1;
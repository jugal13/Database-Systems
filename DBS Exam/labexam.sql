create database labexam;
use labexam;

create table sailors (sailid int,sname varchar(255),rating int, age int, primary key(sailid));
create table boats (bid int,bname varchar(255),colour varchar(100), primary key(bid));
create table reserves (sailid int,bid int, day1 date, primary key(sailid,bid),foreign key (sailid) references sailors(sailid) on delete cascade,foreign key (bid) references boats(bid) on delete cascade);

1.
select sname from sailors where sailid in (select sailid from reserves group by sailid having count(sailid)>=1)
or 
select sname from Sailors S,Reserves R where S.Sailid=R.Sailid group by R.sailid having count(r.sailid)>=1;

2. 
select sailid from reserves where bid in (select bid from boats where colour = 'red' or colour = 'green');

3. 
select sid from sailors where sid not in (select sid from reserves);
--for mysql
CREATE DATABASE labexam;
USE labexam;

--for mysql or sqlplus
CREATE TABLE sailors (
  sailid INT,
  sname VARCHAR(255),
  rating INT,
  age INT,
  PRIMARY KEY(sailid)
);

CREATE TABLE boats (
  bid INT,
  bname VARCHAR(255),
  colour VARCHAR(100),
  PRIMARY KEY(bid)
);

CREATE TABLE reserves (
  sailid INT,
  bid INT,
  day1 date,
  PRIMARY KEY(sailid,bid),
  FOREIGN KEY (sailid) REFERENCES sailors(sailid) ON DELETE CASCADE,
  FOREIGN KEY (bid) REFERENCES boats(bid) ON DELETE CASCADE)
;

INSERT INTO sailors VALUES (1,'Hook',9,50);
INSERT INTO sailors VALUES (2,'Cold',8,40);
INSERT INTO sailors VALUES (3,'Boomerang',7,60);
INSERT INTO sailors VALUES (4,'Jack',6,70);
INSERT INTO sailors VALUES (5,'America',10,100);

INSERT INTO boats VALUES (101,'Isabella','red');
INSERT INTO boats VALUES (102,'Esmeralda','green');
INSERT INTO boats VALUES (103,'Mirabella','blue');
INSERT INTO boats VALUES (104,'Rob','white');
INSERT INTO boats VALUES (105,'Beaumont','yellow');

INSERT INTO reserves VALUES (1,101,'2018-02-10');
INSERT INTO reserves VALUES (2,102,'2018-03-10');
INSERT INTO reserves VALUES (3,103,'2018-04-10');
INSERT INTO reserves VALUES (4,104,'2018-05-10');
INSERT INTO reserves VALUES (1,105,'2018-06-10');

-- 1.
SELECT sname FROM sailors WHERE sailid IN (SELECT sailid FROM reserves GROUP BY sailid HAVING count(sailid)>=1)
-- or
SELECT sname FROM Sailors S,Reserves R WHERE S.Sailid=R.Sailid GROUP BY R.sailid HAVING count(r.sailid)>=1;

-- 2.
SELECT sailid FROM reserves WHERE bid IN (SELECT bid FROM boats WHERE colour = 'red' OR colour = 'green');
-- or 
SELECT sailid FROM sailors S, reserves R WHERE S.sailid=R.sailid and (colour='red' OR colour='green');

-- 3.
SELECT sid FROM sailors WHERE sid NOT IN (SELECT sid FROM reserves);
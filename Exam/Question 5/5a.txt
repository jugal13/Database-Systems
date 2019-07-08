CREATE TABLE aircraft(
  aid VARCHAR(9) PRIMARY KEY,
  aname VARCHAR(10),
  crange INT
);
 
CREATE TABLE employees(
  eid VARCHAR(9) PRIMARY KEY,
  ename VARCHAR(10),
  salary INT
);
 
CREATE TABLE certified(
  eid VARCHAR(9)references employees(eid),
  aid VARCHAR(9)references aircraft(aid)
);

INSERT INTO aircraft VALUES('B001','Boeing',4000);
INSERT INTO aircraft VALUES('B002','Boeing',2500);
INSERT INTO aircraft VALUES('BB003','Blackbeard',6000);
INSERT INTO aircraft VALUES('S004','Supermarine',8000);
INSERT INTO aircraft VALUES('L005','Lockheed',2100);

INSERT INTO employees VALUES(1,'Johnny',40000);
INSERT INTO employees VALUES(2,'Timmy',60000);
INSERT INTO employees VALUES(3,'Lawrence',70000);
INSERT INTO employees VALUES(4,'Zuzu',90000);
INSERT INTO employees VALUES(5,'Matt',80000);

INSERT INTO certified VALUES(1,'B001');
INSERT INTO certified VALUES(1,'B002');
INSERT INTO certified VALUES(3,'S004');
INSERT INTO certified VALUES(4,'S004');
INSERT INTO certified VALUES(5,'L005');
INSERT INTO certified VALUES(2,'B002');
INSERT INTO certified VALUES(4,'BB003');
INSERT INTO certified VALUES(3,'BB003');
INSERT INTO certified VALUES(4,'L005');

-- Find names of pilots certified to fly Boeing

SELECT DISTINCT E.ename
FROM employees E, certified C, aircraft A
WHERE E.eid = C.eid AND C.aid = A.aid AND A.aname='Boeing';
-- or
SELECT ename FROM employees WHERE eid IN (SELECT eid FROM certified WHERE aid IN (SELECT aid FROM aircraft WHERE aname="Boeing"))

-- Arrange flight no with respect to ascending order of distance

SELECT aid FROM aircraft ORDER BY crange ASC;

-- Find the name of pilots who can operate flights with a range greater than 3000 miles but are not certified on any Boeing aircraft.

SELECT DISTINCT E.ename FROM employees E WHERE E.eid IN ((SELECT C.eid  FROM certified C WHERE EXISTS (SELECT A.aid FROM aircraft A WHERE A.aid = C.aid AND A.cruisingrange > 3000) AND NOT EXISTS (SELECT A1.aid FROM aircraft A1 WHERE A1.aid = C.aid AND A1.aname LIKE ‘Boeing%’));
-- or
SELECT ename FROM employees WHERE eid IN (SELECT eid FROM certified WHERE aid IN (SELECT aid FROM aircraft WHERE aname <> "Boeing" AND crange > 3000));
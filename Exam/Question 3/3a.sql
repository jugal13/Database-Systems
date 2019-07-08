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
  eid VARCHAR(9) REFERENCES employees(eid),
  aid VARCHAR(9) REFERENCES aircraft(aid)
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

-- Find Emp ID of employee who makes highest salary

SELECT eid FROM employees WHERE salary=(SELECT MAX(salary) FROM employees);

-- Find the name of aircrafts such that all pilots certified to operate them earn more than 50000

SELECT aname FROM aircraft WHERE aid IN (SELECT aid FROM certified WHERE eid IN (SELECT eid FROM employees WHERE salary>50000))
-- or
SELECT	DISTINCT aname 
FROM	aircraft a, certified c, employees e 
WHERE	a.aid=c.aid and c.eid=e.eid and e.salary>50000;
 
-- Find the employees who are certified for the maximum number of aircrafts.

SELECT ename FROM (SELECT ename,count() AS c FROM employees NATURAL JOIN certified GROUP BY ename) AS a WHERE c=(SELECT max(c) FROM (SELECT ename,count() AS c FROM employees NATURAL JOIN certified GROUP BY ename) AS k);
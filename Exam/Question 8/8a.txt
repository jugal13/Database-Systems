CREATE TABLE PLAYER (
  Pid INT, 
  Lname VARCHAR(10), 
  Fname VARCHAR(10), 
  Country VARCHAR(10), 
  Yborn VARCHAR(10), 
  Bplace VARCHAR(10),
  PRIMARY KEY (Pid)
);

CREATE TABLE MATCH (
  MatchID INT, 
  Team1 VARCHAR(10),
  Team2 VARCHAR(10), 
  Ground VARCHAR(10), 
  Date DATE, 
  Winner VARCHAR(10),
  PRIMARY KEY(MatchID)
);

CREATE TABLE BATTING (
  MatchID INT, 
  Pid INT, 
  Nruns INT, 
  Fours INT, 
  Sixes INT,
  PRIMARY KEY(MatchID,Pid),FOREIGN KEY(MatchID) REFERENCES MATCH(MatchID),FOREIGN KEY(Pid) REFERENCES PLAYER(Pid)
);

CREATE TABLE BOWLING (
  MatchID INT, 
  Pid INT, 
  Novers INT, 
  Maidens VARCHAR(10), 
  Nruns INT, 
  Nwickets INT,
  PRIMARY KEY(MatchID,Pid),FOREIGN KEY(MatchID) REFERENCES MATCH(MatchID),FOREIGN KEY(Pid) REFERENCES PLAYER(Pid)
);

INSERT INTO PLAYER VALUES(1,"Virat","Kohli","India","1990","Bangalore");
INSERT INTO PLAYER VALUES(2,"MS","Dhoni","India","1980","Ranchi");
INSERT INTO PLAYER VALUES(3,"Brett","Lee","Australia","1983","Sydney");
INSERT INTO PLAYER VALUES(4,"Kevin","Peterson","England","1985","London");
INSERT INTO PLAYER VALUES(5,"Sachin","Tendulkar","India","1979","Mumbai");

INSERT INTO MATCH VALUES(1,"Australia","India","G1",NULL,"Australia");
INSERT INTO MATCH VALUES(2,"India","Australia","G2",NULL,"India");
INSERT INTO MATCH VALUES(3,"England","India","G3",NULL,"England");
INSERT INTO MATCH VALUES(4,"India","England","G4",NULL,"India");
INSERT INTO MATCH VALUES(5,"Australia","England","G5",NULL,"Australia");

INSERT INTO BATTING VALUES(1,1,34,2,3);
INSERT INTO BATTING VALUES(1,2,60,3,3);
INSERT INTO BATTING VALUES(2,2,53,5,1);
INSERT INTO BATTING VALUES(3,1,0,2,1);
INSERT INTO BATTING VALUES(4,3,25,1,1);

INSERT INTO BATTING VALUES(1,1,0,15,1);
INSERT INTO BATTING VALUES(1,2,0,20,2);
INSERT INTO BATTING VALUES(2,2,0,10,1);
INSERT INTO BATTING VALUES(3,1,0,17,2);
INSERT INTO BATTING VALUES(4,3,0,12,3);

-- Display the sorted list of ground names where Australia has played as team1.
SELECT Ground FROM MATCH WHERE Team1='Australia' ORDER BY Ground;

-- Find the match information of all matches in which Dhoni did batting.
SELECT * FROM (PLAYER natural join MATCH) natural join BATTING WHERE Lname='Dhoni';
-- or
SELECT * From MATCH WHERE MatchID IN (SELECT MatchID FROM BATTING WHERE Pid IN (SELECT Pid FROM PLAYER WHERE Lname='Dhone'))

-- Find the names of players who did batting in match 2689.
SELECT Fname,Lname FROM (PLAYER natural join MATCH) natural join BATTING WHERE MatchID=2686;
-- or
SELECT Fname,Lname FROM PLAYER WHERE Pid IN (SELECT Pid FROM BATTING WHERE MatchID=2686);
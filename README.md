# Database Systems

## Note:
```JS extension only to highlight the terms in mongodb commands``` 

## Lab 

### Lab 1
    
1. [CREATE TABLE Employee fname VARCHAR(15), minit CHAR, ,lname VARCHAR(15),ssn CHAR(9), bdate DATE, address VARCHAR(30), sex CHAR, salary DECIMAL(10,2), super_ssn CHAR(9), dno INT, PRIMARY KEY (ssn), FOREIGN KEY (super_ssn) REFERENCES Employee(ssn), FOREIGN KEY (dno) REFERENCES DEPARTMENT(dnumber)](Lab/Lab&#32;1)
2. [CREATE TABLE Department dname VARCHAR(15), dnumber INT, mgr_ssn CHAR(9), mgr_start_date DATE, PRIMARY KEY (dnumber), UNIQUE (dname), FOREIGN KEY (mgr_ssn) REFERENCES Employee(ssn)](Lab/Lab&#32;1)
3. [CREATE TABLE dept_locations dnumber INT, dlocation VARCHAR(15), PRIMARY KEY (dnumber, dlocation), FOREIGN KEY (dnumber) REFERENCES Department(dnumber)](Lab/Lab&#32;1)
4. [CREATE TABLE Project pname VARCHAR(15), pnumber INT, plocation VARCHAR(15), dnum INT, PRIMARY KEY (pnumber) UNIQUE (pname), FOREIGN KEY (dnum) REFERENCES Department(dnumber)](Lab/Lab&#32;1)
5. [CREATE TABLE Dependent essn CHAR(9), dependent_name VARCHAR(15), sex CHAR, bdate DATE, relationship VARCHAR(8), PRIMARY KEY (essn, dependent_name), FOREIGN KEY (essn) REFERENCES Employee(Ssn)](Lab/Lab&#32;1)
6. [CREATE TABLE Works_on essn CHAR(9),pno INT, hours DECIMAL(10,2), FOREIGN KEY (essn) REFERENCES Employee(Ssn), FOREIGN KEY (pno) REFERENCES Project(pnumber)](Lab/Lab&#32;1)
7. [Insert 10 rows of data into each table](Lab/Lab&#32;1)


### Lab 2

1. [Retrieve the birth date and address of the employee(s) whose name is ‘John B. Smith’.](Lab/Lab&#32;2)
2. [Retrieve the name and address of all employees who work for the ‘Research’ department. Repeat the above query using aliases.](Lab/Lab&#32;2)
3. [For every project located in ‘Stafford’, list the project number, the controlling department number, and the department manager’s last name, address, and birth date.](Lab/Lab&#32;2)
4. [For each employee, retrieve the employee’s first and last name and the first and last name of his or her immediate supervisor.](Lab/Lab&#32;2)
5: [What is the result of the query](Lab/Lab&#32;2)
    ``` SELECT Ssn FROM EMPLOYEE; ```
6: [What is the result of the query](Lab/Lab&#32;2)
    ``` SELECT Ssn, Dname FROM EMPLOYEE, DEPARTMENT; ```
7. [Make a list of all project numbers for projects that involve an employee whose last name is ‘Smith’, either as a worker or as a manager of the department that controls the project.](Lab/Lab&#32;2)
8. [Retrieve all employees whose address is in Houston, Texas.](Lab/Lab&#32;2)
9. [Find all employees who were born during the 1950s.](Lab/Lab&#32;2)
10. [Show the resulting salaries if every employee working on the ‘ProductX’ project is given a 10 percent raise.](Lab/Lab&#32;2)
11. [Retrieve all employees in department 5 whose salary is between $30,000 and $40,000.](Lab/Lab&#32;2)
12. [Retrieve a list of employees and the projects they are working on, ordered by department and, within each department, ordered alphabetically by last name, then first name.](Lab/Lab&#32;2)

### Lab 3

1. [Retrieve the names of all employees who do not have supervisors.](Lab/Lab&#32;3)
2. [Make a list of all project numbers for projects that involve an employee whose last name is ‘Smith’, either as a worker or as a manager of the department that controls the project using logical OR connective](Lab/Lab&#32;3)
3. [Select the Essns of all employees who work the same (project, hours) combination on some project that employee ‘John Smith’ (whose Ssn = ‘123456789’) works on.](Lab/Lab&#32;3)
4. [List the names of employees whose salary is greater than the salary of all the employees in department 5](Lab/Lab&#32;3)
5. [Retrieve the names of employees who have no dependents.](Lab/Lab&#32;3)
6. [List the names of managers who have at least one dependent.](Lab/Lab&#32;3)
7. [Retrieve the name of each employee who works on all the projects controlled by department number 5 using EXISTS and NOT EXISTS functions.](Lab/Lab&#32;3)
8. [Retrieve the Social Security numbers of all employees who work on project numbers 1, 2, or 3 with duplicate Ssns listed.](Lab/Lab&#32;3)
9. [Retrieve the Social Security numbers of all employees who work on project numbers 1, 2, or 3 without duplicate Ssns listed.](Lab/Lab&#32;3)
10. [Retrieve the name and address of all employees who work for the ‘Research’ department using JOIN... ON operation](Lab/Lab&#32;3)
11. [For every project located in ‘Stafford’, list the project number, the controlling department number, and the department manager’s last name, address, and birth date using JOIN.. ON operation](Lab/Lab&#32;3)
12. [Check if outer joins can be specified by using the comparison operators +=, =+, and +=+ for left, right, and full outer join, respectively,when specifying the join condition.  For example, for each employee, retrieve the employee’s last name and the last name of his or her immediate supervisor. The above query can be solved using SELECT E.Lname, S.Lname FROM EMPLOYEE E, EMPLOYEE S WHERE E.Super_ssn += S.Ssn;](Lab/Lab&#32;3)
13. [Find the total number of employees of the ‘Research’ department and sum of the salaries of all employees of the ‘Research’ department, as well as the maximum salary, the minimum salary, and the average salary in this department.](Lab/Lab&#32;3)
14. [Count the number of distinct salary values in the database.](Lab/Lab&#32;3)
15. [Retrieve the names of all employees who have two or more dependents](Lab/Lab&#32;3)
16. [For each department, retrieve the department number, the number of employees in the department, and their average salary.](Lab/Lab&#32;3)
17. [For each project, retrieve the project number, the project name, and the number of employees who work on that project.](Lab/Lab&#32;3)
18. [For each project on which more than two employees work, retrieve the project number, the project name, and the number of employees who work on the project.](Lab/Lab&#32;3)
19. [For each project, retrieve the project number, the project name, and the number of employees from department 5 who work on the project.](Lab/Lab&#32;3)
20. [For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than 40,000.](Lab/Lab&#32;3)

## Exam
1. 
    1. Consider the Sailor database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        SAILORS(Sid, Sname, Rating, Age)
        BOATS(Bid, Bname, Colour)
        RESERVES(Sid, Bid, day​)
        ```
        [Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.](Exam/Question&#32;1/1a.sql)
        
        1. [Find the names of sailors who have reserved at least one boat.](Exam/Question&#32;1/1a.sql)
        2. [Find the Sid’s of sailors who have reserved a red (or) agreenboat.](Exam/Question&#32;1/1a.sql)
        3. [Find the Sid’s of sailors who have not reserved a boat.](Exam/Question&#32;1/1a.sql)
    
    2. Consider the following restaurant database with the following attributes -
        ```
        Name, address –(building, street, area, pincode),id, cuisine, nearby landmarks, online delivery- yes/no, famous for(name of the dish).
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List the name and address of all restaurants in Bangalore with Italian cuisine](Exam/Question&#32;1/1b.js)
        2. [List the name, address and nearby landmarks of all restaurants in Bangalore where north Indianthali is available.](Exam/Question&#32;1/1b.js)
2. 
    1. Consider the Employee database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        EMPLOYEE (Fname, Lname, ​SSN​, Addrs, Sex, Salary, SuperSSN, Dno) 
        DEPARTMENT (Dname, ​Dnumber​, MgrSSN, MgrStartDate)
        PROJECT(​Pno​, Pname, Dnum) 
        WORKS_ON (​ESSN, Pno​, Hours)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Retrieve the names of all employees whose salary is greater than the salary of all employees in dept 5.](Exam/Question&#32;1/2a.sql)
        2. [Retrieve the ssn of all employees who work on project numbers 1,2 or 3](Exam/Question&#32;1/2a.sql)
        3. [Display the total Number of hours put in by all employees on every project.](Exam/Question&#32;1/2a.sql)

    2. Consider the following restaurant table with the following attributes -
        ```
        Name, address –(building, street, area, pincode), id, cuisine, nearby landmarks, online delivery- (yes/no), famous for(name of the dish)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List the name, address and nearby landmarks of all restaurants in Bangalore where north Indian thali is available](Exam/Question&#32;2/2b.js)
        2. [List the name and address of restaurants and also the dish the restaurant is famous for, in Bangalore.](Exam/Question&#32;2/2b.js)
3.
    1. Consider the Aircraft database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        AIRCRAFT​ (​Aircraft ID​, Aircraft_name, Cruising_range)
        CERTIFIED​ (​Emp ID, Aircraft ID​)
        EMPLOYEE​ (​Emp ID​, Ename, Salary)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Find the employee ID’s of employee who make the highest salary.](Exam/Question&#32;3/3a.sql)
        2. [Find the name of aircrafts such that all pilots certified to operate them earn more than 50000](Exam/Question&#32;3/3a.sql)
        3. [Find the employees who are certified for the maximum number of aircrafts.](Exam/Question&#32;3/3a.sql)
    2. Consider the following restaurant table with the following attributes -
        ```
        Name, address –(building, street, area, pincode), id, cuisine, nearby landmarks, online delivery- (yes/no), famous for(name of the dish)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List the name, address and nearby landmarks of all restaurants in Bangalore where north Indian thali is available.](Exam/Question&#32;3/3b.js)
        2. [List the name and address of restaurants and also tdish the restaurant is famous for, in Bangalore where online delivery is available.](Exam/Question&#32;3/3b.js)
4.
    1. Consider the Supply-Parts database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        SUPPLIER​ (​Sid​, Sname, Address)
        PART​ (​PID​, Pname, Color)
        SHIPMENT​ (​Sid, PID​, Cost)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Find the Sid’s of suppliers who supply a green part](Exam/Question&#32;4/4a.sql)
        2. [For every supplier print the name of the supplier and the total number of parts that he/she supplies](Exam/Question&#32;4/4a.sql)
        3. [Update the part color supplied by supplier s3 to yellow](Exam/Question&#32;4/4a.sql)
    2. Consider the following Tourist places table with the following attributes - 
        ```
        Place, address – (state), id, tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the tourist places of Karnataka](Exam/Question&#32;4/4b.js)
        2. [List the tourist attractions of Kerala. Exclude accommodation and food](Exam/Question&#32;4/4b.js)
5.
    1. Consider the Aircraft database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        AIRCRAFT​ (​Aircraft ID​, Aircraft_name, Cruising_range)
        CERTIFIED​ (​Emp ID, Aircraft ID​)
        EMPLOYEE​ (​Emp ID​, Ename, Salary)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Find the names of pilots certified for Boeing aircraft](Exam/Question&#32;5/5a.js)
        2. [Arrange the flight no with respect to the ascending order of distance.](Exam/Question&#32;5/5a.sql)
        3. [Find the name of pilots who can operate flights with a range greater than 3000 miles but are not certified on any Boeing aircraft.](Exam/Question&#32;5/5a.sql)
    2. Consider the following Tourist places table with the following attributes - 
        ```
        Place, address –(state, id), tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List the tourist attractions of Kerala. Exclude accommodation and food.](Exam/Question&#32;5/5b.js)
        2. [List the places sorted state wise.](Exam/Question&#32;5/5b.js)
6.
    1. Consider the Employee database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        EMPLOYEE (Fname, Lname, ​SSN​, Addrs, Sex, Salary, SuperSSN, Dno)
        DEPARTMENT (Dname, ​Dnumber,​ MgrSSN, MgrStartDate)
        DEPENDENT(​Dname, ESSN​)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [For each department, retrieve the department name and the average salary of all employees working in that department](Exam/Question&#32;6/6a.sql)
        2. [List the names of managers who have at least one dependent](Exam/Question&#32;6/6a.sql)
        3. [Display the details of all departments having ‘tech’ as their substring](Exam/Question&#32;6/6a.sql)
    2. Consider the following Tourist places table with the following attributes -
        ```
        Place, address – (state, id), tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the tourist places of Karnataka](Exam/Question&#32;6/6b.js)
        2. [List the places sorted state wise](Exam/Question&#32;6/6b.js)
7.
    1. Consider the following Accident Tracker Schema. The primary keys are underlined.
        ```
        PERSON (​driver – id #:​ String, name: string, address: string)
        CAR (​Regno​: string, model: string, year: int)
        ACCIDENT (​report-number​: int, acc_date: date, location: string) 
        OWNS (​driver-id #:​ string, ​Regno:​ string)
        PARTICIPATED (​driver-id: string, Regno: string, report-number: int​, damageamount: int)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Display the unique Regno’s of the cars involved in accidents.](Exam/Question&#32;7/7a.sql)
        2. [Display the car Regno and model of the car which has the maximum damage amount.](Exam/Question&#32;7/7a.sql)
        3. [Display the number of cars owned by each driver.](Exam/Question&#32;7/7a.sql) 
    2. Consider the following Movie table with the following attributes - 
        ```
        Actor_name,Actor_id, Actor_birthdate, Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the movies acted by John in the year 2018](Exam/Question&#32;7/7b.js)
        2. [List only the actors names and type of the movie directed by Ram](Exam/Question&#32;7/7b.js)
8.
    1. Consider the Cricket database given below. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        PLAYER (​PId​, Lname, Fname, Country, Yborn, Bplace)
        MATCH (​MatchId​, Team1,Team2, Ground, Date, Winner)
        BATTING (​MatchId​, ​Pid​, Nruns, Fours, Sixes)
        BOWLING (​MatchId, Pid​, Novers, Maidens, Nruns, Nwickets)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [Display the sorted list of ground names where Australia has played as team1](Exam/Question&#32;8/8a.sql)
        2. [Find the match information of all matches in which Dhoni did batting.](Exam/Question&#32;8/8a.sql)
        3. [Find the names of players who did batting in match 2689](Exam/Question&#32;8/8a.sql)
    2. Consider the following Movie table with the following attributes -
        ```
        Actor_name,Actor_id, Actor_birthdate , Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the movies acted by John and Elly in the year 2012.](Exam/Question&#32;8/8b.js)
        2. [List only the name and type of the movie where Ram has acted sorted by movie names](Exam/Question&#32;8/8b.js)   
9.
    1. Consider the following shipment schema. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        CUSTOMER (​cust #​ , cname, city) 
        ORDER (​order#​, odate, cust #, ord-Amt)
        ORDER – ITEM (​order #, Item #,​ qty) 
        ITEM (​item #​, unit price)
        SHIPMENT (​order #, ​ ship-date)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [List the customer names who have placed more than 2 orders.](Exam/Question&#32;9/9a.sql)
        2. [Find the total order amount for each day](Exam/Question&#32;9/9a.sql)
        3. [List the customer details who has the largest order amount.](Exam/Question&#32;9/9a.sql)
    2. Consider the following Movie table with the following attributes - 
        ```
        Actor_name,Actor_id, Actor_birthdate , Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the movies acted by John in the year 2018](Exam/Question&#32;9/9b.js)
        2. [List only the actors names and type of the movie directed by Ram](Exam/Question&#32;9/9b.js)
10.
    1. Consider the following shipment schema. The primary keys are underlined. Assume relevant data types for attributes.
        ```
        CUSTOMER (​cust #​ , cname, city)
        ORDER (​order#​, odate, cust #, ord-Amt)
        ORDER – ITEM (​order #​, ​Item​ #, qty)
        ITEM (​item #​, unit price)
        SHIPMENT (​order #, ​ship-date)
        ```
        Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
        1. [List name of the customer, no. of orders placed by each customer residing in Bangalore city.](Exam/Question&#32;10/10a.sql)
        2. [List the names of the customers who have ordered at least 10 items](Exam/Question&#32;10/10a.sql)
        3. [List the customer names who have not ordered for item no. 10.](Exam/Question&#32;10/10a.sql)
    2. Consider the following Movie table with the following attributes - 
        ```
        Actor_name, Actor_id, Actor_birthdate, Director_name, Director_id, Director_birthdate, film_title, year of production, type (thriller, comedy, etc.)
        ```
        Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
        1. [List all the movies acted by John and Elly in the year 2012.](Exam/Question&#32;10/10b.js)
        2. [List only the name and type of the movie where Ram has acted, sorted by movie names.](Exam/Question&#32;10/10b.js)
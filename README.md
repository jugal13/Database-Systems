# Database Systems

## Note:
    JS extension only to highlight the terms in mongodb commands

## Lab 

### Lab 1
    
    1. CREATE TABLE Employee fname VARCHAR(15), minit CHAR, ,lname VARCHAR(15),ssn CHAR(9), bdate DATE, address VARCHAR(30), sex CHAR, salary DECIMAL(10,2), super_ssn CHAR(9), dno INT, PRIMARY KEY (ssn), FOREIGN KEY (super_ssn) REFERENCES Employee(ssn), FOREIGN KEY (dno) REFERENCES DEPARTMENT(dnumber)
    2. CREATE TABLE Department dname VARCHAR(15), dnumber INT, mgr_ssn CHAR(9), mgr_start_date DATE, PRIMARY KEY (dnumber), UNIQUE (dname), FOREIGN KEY (mgr_ssn) REFERENCES Employee(ssn)
    3. CREATE TABLE dept_locations dnumber INT, dlocation VARCHAR(15), PRIMARY KEY (dnumber, dlocation), FOREIGN KEY (dnumber) REFERENCES Department(dnumber)
    4. CREATE TABLE Project pname VARCHAR(15), pnumber INT, plocation VARCHAR(15), dnum INT, PRIMARY KEY (pnumber) UNIQUE (pname), FOREIGN KEY (dnum) REFERENCES Department(dnumber)
    5. CREATE TABLE Dependent essn CHAR(9), dependent_name VARCHAR(15), sex CHAR, bdate DATE, relationship VARCHAR(8), PRIMARY KEY (essn, dependent_name), FOREIGN KEY (essn) REFERENCES Employee(Ssn)
    6. CREATE TABLE Works_on essn CHAR(9),pno INT, hours DECIMAL(10,2), FOREIGN KEY (essn) REFERENCES Employee(Ssn), FOREIGN KEY (pno) REFERENCES Project(pnumber)
    7. Insert 10 rows of data into each table


### Lab 2

    1. Retrieve the birth date and address of the employee(s) whose name is ‘John B. Smith’.
    2. Retrieve the name and address of all employees who work for the ‘Research’ department. Repeat the above query using aliases.
    3. For every project located in ‘Stafford’, list the project number, the controlling department number, and the department manager’s last name, address, and birth date.
    4. For each employee, retrieve the employee’s first and last name and the first and last name of his or her immediate supervisor.
    5: What is the result of the query
      SELECT Ssn
        FROM EMPLOYEE;
    6: What is the result of the query
      SELECT Ssn, Dname
        FROM EMPLOYEE, DEPARTMENT;
    7. Make a list of all project numbers for projects that involve an employee whose last name is ‘Smith’, either as a worker or as a manager of the department that controls the project.
    8. Retrieve all employees whose address is in Houston, Texas.
    9. Find all employees who were born during the 1950s.
    10. Show the resulting salaries if every employee working on the ‘ProductX’ project is given a 10 percent raise.
    11. Retrieve all employees in department 5 whose salary is between $30,000 and $40,000.
    12. Retrieve a list of employees and the projects they are working on, ordered by department and, within each department, ordered alphabetically by last name, then first name.

### Lab 3

    1. Retrieve the names of all employees who do not have supervisors.
    2. Make a list of all project numbers for projects that involve an employee whose last name is ‘Smith’, either as a worker or as a manager of the department that controls the project using logical OR connective
    3. Select the Essns of all employees who work the same (project, hours) combination on some project that employee ‘John Smith’ (whose Ssn = ‘123456789’) works on.
    4. List the names of employees whose salary is greater than the salary of all the employees in department 5
    5. Retrieve the names of employees who have no dependents.
    6. List the names of managers who have at least one dependent.
    7. Retrieve the name of each employee who works on all the projects controlled by department number 5 using EXISTS and NOT EXISTS functions.
    8. Retrieve the Social Security numbers of all employees who work on project numbers 1, 2, or 3 with duplicate Ssns listed.
    9. Retrieve the Social Security numbers of all employees who work on project numbers 1, 2, or 3 without duplicate Ssns listed.
    10. Retrieve the name and address of all employees who work for the ‘Research’ department using JOIN... ON operation
    11. For every project located in ‘Stafford’, list the project number, the controlling department number, and the department manager’s last name, address, and birth date using JOIN.. ON operation
    12. Check if outer joins can be specified by using the comparison operators +=, =+, and +=+ for left, right, and full outer join, respectively,when specifying the join condition.  For example, for each employee, retrieve the employee’s last name and the last name of his or her immediate supervisor. The above query can be solved using SELECT E.Lname, S.Lname FROM EMPLOYEE E, EMPLOYEE S WHERE E.Super_ssn += S.Ssn;
    13. Find the total number of employees of the ‘Research’ department and sum of the salaries of all employees of the ‘Research’ department, as well as the maximum salary, the minimum salary, and the average salary in this department.
    14. Count the number of distinct salary values in the database.
    15. Retrieve the names of all employees who have two or more dependents
    16. For each department, retrieve the department number, the number of employees in the department, and their average salary.
    17. For each project, retrieve the project number, the project name, and the number of employees who work on that project.
    18. For each project on which more than two employees work, retrieve the project number, the project name, and the number of employees who work on the project.
    19. For each project, retrieve the project number, the project name, and the number of employees from department 5 who work on the project.
    20. For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than 40,000.

## Exam
    1. 
    a) Consider the Sailor database given below. The primary keys are underlined. Assume relevant data types for attributes.

    SAILORS(Sid, Sname, Rating, Age)
    BOATS(Bid, Bname, Colour)
    RESERVES(Sid, Bid, day​)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. Find the names of sailors who have reserved at least one boat.
    ii. Find the Sid’s of sailors who have reserved a red (or) agreenboat.
    iii. Find the Sid’s of sailors who have not reserved a boat.
    
    b) Consider the following restaurant database with the following attributes -
    Name, address –(building, street, area, pincode),id, cuisine, nearby landmarks, online delivery- yes/no, famous for(name of the dish)
    
    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
    
    i. List the name and address of all restaurants in Bangalore with Italian cuisine
    ii. List the name, address and nearby landmarks of all restaurants in Bangalore where north Indianthali is available.

    2. 
    a) Consider the Employee database given below. The primary keys are underlined. Assume relevant data types for attributes.

    EMPLOYEE (Fname, Lname, ​SSN​, Addrs, Sex, Salary, SuperSSN, Dno) 
    DEPARTMENT (Dname, ​Dnumber​, MgrSSN, MgrStartDate)
    PROJECT(​Pno​, Pname, Dnum) 
    WORKS_ON (​ESSN, Pno​, Hours)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. Retrieve the names of all employees whose salary is greater than the salary of all employees in dept 5.
    ii. Retrieve the ssn of all employees who work on project numbers 1,2 or 3
    iii. Display the total Number of hours put in by all employees on every project.

    b) Consider the following restaurant table with the following attributes -
    Name, address –(building, street, area, pincode), id, cuisine, nearby landmarks, online delivery- (yes/no), famous for(name of the dish)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List the name, address and nearby landmarks of all restaurants in Bangalore where north Indian thali is available
    ii. List the name and address of restaurants and also the dish the restaurant is famous for, in Bangalore.

    3.
    a) Consider the Aircraft database given below. The primary keys are underlined. Assume relevant data types for attributes.
    
    AIRCRAFT​ (​Aircraft ID​, Aircraft_name, Cruising_range)
    CERTIFIED​ (​Emp ID, Aircraft ID​)
    EMPLOYEE​ (​Emp ID​, Ename, Salary)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. Find the employee ID’s of employee who make the highest salary.
    ii. Find the name of aircrafts such that all pilots certified to operate them earn more than 50000
    iii. Find the employees who are certified for the maximum number of aircrafts.
   
    b) Consider the following restaurant table with the following attributes -
    Name, address –(building, street, area, pincode), id, cuisine, nearby landmarks, online delivery- (yes/no), famous for(name of the dish)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List the name, address and nearby landmarks of all restaurants in Bangalore where north Indian thali is available.
    ii. List the name and address of restaurants and also the dish the restaurant is famous for, in Bangalore where online delivery is available.

    4.
    a) Consider the Supply-Parts database given below. The primary keys are underlined. Assume relevant data types for attributes.
    
    SUPPLIER​ (​Sid​, Sname, Address)
    PART​ (​PID​, Pname, Color)
    SHIPMENT​ (​Sid, PID​, Cost)
   
    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. Find the Sid’s of suppliers who supply a green part
    ii. For every supplier print the name of the supplier and the total number of parts that he/she supplies
    iii. Update the part color supplied by supplier s3 to yellow

    b) Consider the following Tourist places table with the following attributes - Place, address – (state), id, tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.
    
    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List all the tourist places of Karnataka
    ii. List the tourist attractions of Kerala. Exclude accommodation and food

    5.
    a) Consider the Aircraft database given below. The primary keys are underlined. Assume relevant data types for attributes.

    AIRCRAFT​ (​Aircraft ID​, Aircraft_name, Cruising_range)
    CERTIFIED​ (​Emp ID, Aircraft ID​)
    EMPLOYEE​ (​Emp ID​, Ename, Salary)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. Find the names of pilots certified for Boeing aircraft
    ii. Arrange the flight no with respect to the ascending order of distance.
    iii. Find the name of pilots who can operate flights with a range greater than 3000 miles but are not certified on any Boeing aircraft.
   
    b) Consider the following Tourist places table with the following attributes - Place, address –(state, id), tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.
    
    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List the tourist attractions of Kerala. Exclude accommodation and food.
    ii. List the places sorted state wise.

    6.
    a) Consider the Employee database given below. The primary keys are underlined. Assume relevant data types for attributes.
       
    EMPLOYEE (Fname, Lname, ​SSN​, Addrs, Sex, Salary, SuperSSN, Dno)
    DEPARTMENT (Dname, ​Dnumber,​ MgrSSN, MgrStartDate)
    DEPENDENT(​Dname, ESSN​)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. For each department, retrieve the department name and the average salary of all employees working in that department
    ii. List the names of managers who have at least one dependent
    iii. Display the details of all departments having ‘tech’ as their substring
    
    b) Consider the following Tourist places table with the following attributes - Place, address – (state, id), tourist attractions,best time of the year to visit,modes of transport(include nearest airport, railway station etc), accommodation, food - what not to miss for sure.

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List all the tourist places of Karnataka
    ii. List the places sorted state wise
     
    7.
    a) Consider the following Accident Tracker Schema. The primary keys are underlined.
    PERSON (​driver – id #:​ String, name: string, address: string) 
    CAR (​Regno​: string, model: string, year: int)
    ACCIDENT (​report-number​: int, acc_date: date, location: string) 
    OWNS (​driver-id #:​ string, ​Regno:​ string)
    PARTICIPATED (​driver-id: string, Regno: string, report-number: int​, damageamount: int)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
    
    i. Display the unique Regno’s of the cars involved in accidents.
    ii. Display the car Regno and model of the car which has the maximum damage amount.
    iii. Displaythe number of cars owned by each driver.
       
    b) Consider the following Movie table with the following attributes - Actor_name,Actor_id, Actor_birthdate, Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List all the movies acted by John in the year 2018
    ii. List only the actors names and type of the movie directed by Ram
    
    8.
    a) Consider the Cricket database given below. The primary keys are underlined. Assume relevant data types for attributes.
    
    PLAYER (​PId​, Lname, Fname, Country, Yborn, Bplace)
    MATCH (​MatchId​, Team1,Team2, Ground, Date, Winner)
    BATTING (​MatchId​, ​Pid​, Nruns, Fours, Sixes)
    BOWLING (​MatchId, Pid​, Novers, Maidens, Nruns, Nwickets)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.


    i. Display the sorted list of ground names where Australia has played as team1
    ii. Find the match information of all matches in which Dhoni did batting.
    iii. Find the names of players who did batting in match 2689
    
    b) Consider the following Movie table with the following attributes - Actor_name,Actor_id, Actor_birthdate , Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:
    
    i. List all the movies acted by John and Elly in the year 2012.
    ii. List only the name and type of the movie where Ram has acted sorted by movie names
     
    9.
    a) Consider the following shipment schema. The primary keys are underlined. Assume relevant data types for attributes.
    
    CUSTOMER (​cust #​ , cname, city) 
    ORDER (​order#​, odate, cust #, ord-Amt)
    ORDER – ITEM (​order #, Item #,​ qty) 
    ITEM (​item #​, unit price)
    SHIPMENT (​order #, ​ ship-date)
    
    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.

    i. List the customer names who have placed more than 2 orders.
    ii. Find the total order amount for each day
    iii. List the customer details who has the largest order amount.
    
    b) Consider the following Movie table with the following attributes - Actor_name,Actor_id, Actor_birthdate , Dirctor_name,Director_id, Director_birthdate, film_title, year of production ,type (thriller, comedy, etc.)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List all the movies acted by John in the year 2018
    ii. List only the actors names and type of the movie directed by Ram
    
    10.
    a) Consider the following shipment schema. The primary keys are underlined. Assume relevant data types for attributes.

    CUSTOMER (​cust #​ , cname, city)
    ORDER (​order#​, odate, cust #, ord-Amt)
    ORDER – ITEM (​order #​, ​Item​ #, qty)
    ITEM (​item #​, unit price)
    SHIPMENT (​order #, ​ship-date)

    Create the above tables in SQL. Specify primary and foreign keys properly. Enter at least 5 tuples in each table with relevant data. Solve the following queries.
    
    i. List name of the customer, no. of orders placed by each customer residing in Bangalore city.
    ii. List the names of the customers who have ordered at least 10 items
    iii. List the customer names who have not ordered for item no. 10.
    
    b) Consider the following Movie table with the following attributes - Actor_name, Actor_id, Actor_birthdate, Director_name, Director_id, Director_birthdate, film_title, year of production, type (thriller, comedy, etc.)

    Create 10 collections with data relevant to the following questions. Write and execute MongoDB queries:

    i. List all the movies acted by John and Elly in the year 2012.
    ii. List only the name and type of the movie where Ram has acted, sorted by movie names.
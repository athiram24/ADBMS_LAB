CREATE database db;
-- use db;

CREATE TABLE EMPLOYEE
(Empno INT ,
Empname VARCHAR(15),
Gender CHAR(10),
DOB DATE,
DOJ DATE,
Designation VARCHAR(25),
Basic INT ,
Deptno INT,
PAN BIGINT ,
SENO INT,
PRIMARY KEY(Empno),
FOREIGN KEY (Deptno) REFERENCES DEPARTMENT(Deptno),
CHECK(Gender = 'Female' OR Gender = 'Male' OR Gender = 'others'));

CREATE TABLE DEPARTMENT
(Deptno int,
NAME  varchar(25),
MENO int4,
PRIMARY KEY(Deptno));


CREATE TABLE PROJECT 
(Projno INT,
 Name VARCHAR(20),
 Date DATE,
 Worked_hours timestamp);
 SHOW COLUMNS FROM PROJECT;
 SHOW COLUMNS FROM EMPLOYEE;
 SHOW COLUMNS FROM DEPARTMENT;
 
 
 -- populating tables
INSERT INTO EMPLOYEE VALUES (101, 'John Smith', 'Male', '1990-05-15', '2015-06-01', 'Manager', 50000,10, 1234567890, 123); -- Employee table
INSERT INTO EMPLOYEE VALUES(102, 'Jane Doe', 'Female', '1995-09-21', '2017-08-15', 'Engineer', 35000,20, 2345678901, 124);
INSERT INTO EMPLOYEE VALUES (103, 'Alex Johnson', 'Male', '1993-03-10', '2016-02-10', 'Analyst', 28000,30, 3456789012, 125);
INSERT INTO EMPLOYEE VALUES(104, 'Kim Lee', 'Female', '1998-11-05', '2019-01-20', 'Developer', 30000,10, 4567890123, 126);
INSERT INTO EMPLOYEE VALUES(105, 'Sreekumar', 'Male', '1997-01-06', '2023-01-20', 'Manager', 60000,20, 5678901234, 127);
INSERT INTO EMPLOYEE VALUES(106, 'Lee min ho', 'Male', '1998-10-05', '2019-01-20', 'Developer', 38000,30, 6789012345,128);
INSERT INTO EMPLOYEE VALUES(107, 'Jijian', 'Female', '1998-11-05', '2019-01-20', 'Analyst', 45000,10, 7890123456, 129);


INSERT INTO DEPARTMENT VALUES(10, 'Finance', 101); -- department table
INSERT INTO DEPARTMENT VALUES(20, 'Engineering', 102);
INSERT INTO DEPARTMENT VALUES(30, 'Human Resources', 103);

INSERT INTO PROJECT  VALUES(1, 'Project A', '2022-01-01', '2022-01-01 08:00:00');
INSERT INTO PROJECT VALUES(2, 'Project B', '2022-02-01', '2022-02-01 08:00:00');
INSERT INTO PROJECT VALUES(3, 'Project C', '2022-03-01', '2022-03-01 08:00:00');


-- displaying values


SELECT * FROM EMPLOYEE;
SELECT * FROM DEPARTMENT;
SELECT * FROM PROJECT;

 -- 
SELECT * FROM DEPARTMENT WHERE Deptno = (SELECT  deptno FROM EMPLOYEE GROUP BY deptno HAVING count(deptno)>2);
CREATE VIEW DepartmentDetails AS (SELECT Deptno,Name FROM DEPARTMENT WHERE Deptno = (SELECT Deptno FROM EMPLOYEE  GROUP BY Deptno));
SELECT * FROM DepartmentDetails;

 


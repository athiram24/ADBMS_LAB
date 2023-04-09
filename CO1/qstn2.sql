USE ORG;
CREATE TABLE EMPLOYEE(
Empno INT PRIMARY KEY AUTO_INCREMENT,
Empname VARCHAR(25) NOT NULL,
DOB DATE,
Address VARCHAR(50),
DOJ DATE,
Mobno BIGINT,
Deptno INT,
FOREIGN KEY (Deptno) REFERENCES DEPARTMENT(Deptno),
Salary DECIMAL(10,2),
Designation VARCHAR(50));


                -- creating tables with the given atributes and constraints
SHOW COLUMNS FROM EMPLOYEE;
               -- displaying employee table
CREATE TABLE DEPARTMENT (
Deptno INT PRIMARY KEY,
Deptname VARCHAR(25),
Location VARCHAR(50));
SHOW COLUMNS FROM DEPARTMENT;   

-- Inserting values in dept table

INSERT INTO DEPARTMENT VALUES('1','BTECH','Chemical_block');
INSERT INTO DEPARTMENT VALUES('2','MTECH','Mech_block');
INSERT INTO DEPARTMENT VALUES('3','MCA','Chemical_block');
INSERT INTO DEPARTMENT VALUES('4','CIVIL','Main_block');
INSERT INTO DEPARTMENT VALUES('5','BTECH','Office_block');

-- Inserting values in employee table

INSERT INTO EMPLOYEE VALUES('101','ABHIJITH','2002-05-25','Abhi bhavanam','2012-06-01','9745009755','1','7000.00','Lab_Assistant');
INSERT INTO EMPLOYEE VALUES('102','AISWARYA','1999-11-25','Aishu vilas','2022-06-03','9746005655','2','23000.00','Teacher');
INSERT INTO EMPLOYEE VALUES('103','BINDHU','2001-11-25','BIndhu nilayam','2012-06-03','9746005633','3','46000.00','HOD');
INSERT INTO EMPLOYEE VALUES('104','DHEENA','2002-11-25','Dheena vilas','2023-12-03','9846115655','4','21000.00','HOD');
INSERT INTO EMPLOYEE VALUES('105','SOUBHAGYA','2002-01-01','Soubhagya vilas','2023-12-03','9176015655','5','36000.00','Advisor');
INSERT INTO EMPLOYEE VALUES('106','JOHN','2000-01-01','John villa','2023-12-03','9746101950','2','48000.00','HOD');

SELECT * FROM DEPARTMENT;
SELECT * FROM EMPLOYEE; -- Displaying records from tables
SELECT Empno,Empname FROM EMPLOYEE WHERE Deptno = '2';
     -- Displaying empno and name for the employees in deptno 2
SELECT Empno,Empname,Deptno,Salary,Designation FROM EMPLOYEE ORDER BY Salary DESC;
SELECT Empno,Empname FROM EMPLOYEE WHERE Salary BETWEEN 2000 AND 5000;
SELECT  DISTINCT Designation FROM EMPLOYEE;
DESC DEPARTMENT;
SELECT Deptname,SUM(Salary) FROM EMPLOYEE INNER JOIN DEPARTMENT ON EMPLOYEE.Deptno = DEPARTMENT.Deptno GROUP BY Deptname;
UPDATE EMPLOYEE SET Salary = '25000.00' WHERE Designation = 'Typist' ;
UPDATE EMPLOYEE SET Mobno = '9756191550' WHERE Empname = 'JOHN' ;
DELETE FROM EMPLOYEE WHERE Salary = '7000' ;
SELECT Deptname  FROM EMPLOYEE INNER JOIN DEPARTMENT ON EMPLOYEE.Deptno = DEPARTMENT.Deptno GROUP BY Deptname HAVING SUM(Salary)>'25000.00';

INSERT INTO EMPLOYEE(Empname,DOB,Address,DOJ,Mobno,Deptno,Salary,Designation)VALUES('Athira','2002-02-24','Charuvila puthen veedu','2023-04-02','9846009744','1','56000.00','Teacher');
INSERT INTO EMPLOYEE(Empname,DOB,Address,DOJ,Mobno,Deptno,Salary,Designation)VALUES('Anaswara','2000-12-21','Anas vilas','2023-02-02','7024100640','7','36000.00','Advisor');
INSERT INTO EMPLOYEE(Empname,DOB,Address,DOJ,Mobno,Deptno,Salary,Designation)VALUES('Kiran','1999-11-14','Karunya Nilayam','2023-10-12','8097423280','6','2000.00','Clerk');
INSERT INTO EMPLOYEE(Empname,DOB,Address,DOJ,Mobno,Deptno,Salary,Designation)VALUES('Aswathy','1998-10-13','Achu vilas','2023-04-12','9846776541','10','51000.00','Teacher');
INSERT INTO EMPLOYEE(Empname,DOB,Address,DOJ,Mobno,Deptno,Salary,Designation)VALUES('Punya','2000-12-24','punya nilayam','2023-04-12','9736009704','8','60000.00','HOD');


INSERT INTO DEPARTMENT (Deptno,Deptname,Location) VALUES ('6','OFFICE','Officeblock');
INSERT INTO DEPARTMENT (Deptno,Deptname,Location) VALUES ('7','CHEMICAL','chemblock');
INSERT INTO DEPARTMENT (Deptno,Deptname,Location) VALUES ('8','OFFICE','Officeblock');
INSERT INTO DEPARTMENT (Deptno,Deptname,Location) VALUES ('9','Mechblock','Mainblock');
INSERT INTO DEPARTMENT (Deptno,Deptname,Location) VALUES ('10','OFFICE','Officeblock');

/* UPDATE EMPLOYEE SET Deptno = '8' WHERE Empname = 'Punya';
UPDATE EMPLOYEE SET Deptno = '10' WHERE Empname = 'Aswathy'; */





CREATE DATABASE ORG; -- Create database and use the database
USE ORG;
CREATE TABLE EMPLOYEE(
Empno INT PRIMARY KEY AUTO_INCREMENT,
Empname VARCHAR(25) NOT NULL,
DOB DATE,
Address VARCHAR(50),
DOJ DATE,
Mobno BIGINT,
Deptno INT,
Salary DECIMAL(10,2));
                -- creating tables with the given atributes and constraints
SHOW COLUMNS FROM EMPLOYEE;
               -- displaying employee table
CREATE TABLE DEPARTMENT (
Deptno INT PRIMARY KEY,
Deptname VARCHAR(25),
Location VARCHAR(50));     
            -- Creating another table,department
SHOW TABLES;

            -- Listing all the tables in the current db
SHOW COLUMNS FROM EMPLOYEE;
            -- Displaying employee table
ALTER TABLE EMPLOYEE ADD Designation VARCHAR(50); 
                    -- Adding new column to the employee table
ALTER TABLE DEPARTMENT DROP Location; 
                    -- Deleting a column from department table
DROP TABLE EMPLOYEE;
DROP TABLE DEPARTMENT; 
      -- Deleting table
SHOW COLUMNS FROM DEPARTMENT;
DROP DATABASE ORG; -- Deleting database.
ALTER TABLE EMPLOYEE ADD FOREIGN KEY (Deptno) REFERENCES DEPARTMENT(Deptno);




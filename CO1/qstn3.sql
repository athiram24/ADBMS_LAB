	use	ORG;
    show tables;
    SELECT * FROM EMPLOYEE;
    SELECT empno,empname,salary FROM EMPLOYEE WHERE salary > (SELECT AVG(salary) FROM EMPLOYEE); -- retrieving details of employee whose salary greter than average salary.
    SELECT * FROM EMPLOYEE WHERE salary = (SELECT MIN(salary) FROM EMPLOYEE);   -- details of employees whose salary is equal to the minimum salary of organisation.
	SELECT * FROM EMPLOYEE E LEFT JOIN DEPARTMENT D ON E.deptno = D.deptno;--  Display the employee details by implementing left inner join
    SELECT * FROM EMPLOYEE E RIGHT JOIN DEPARTMENT D ON E.deptno = D.deptno;--  Display the employee details by implementing right inner join
    
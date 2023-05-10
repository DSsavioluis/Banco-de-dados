-- AULA 7
-- Q0
select Bdate, Address
from EMPLOYEE
where Fname = 'john' and Minit = 'b' and Lname = 'smith';

-- Q1
select Fname, Lname, Address
from EMPLOYEE, DEPARTMENT
where Dname = 'research' and Dnumber = Dno;

-- Q2
SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Dnum = Dnumber AND Mgr_ssn = Ssn AND Plocation = 'Stafford';

-- Q3
SELECT E.Fname, E.Lname, S.Fname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn = S.Ssn;

-- Q4
SELECT Ssn
FROM EMPLOYEE;

-- Q5
SELECT Ssn, Dname
FROM EMPLOYEE, DEPARTMENT;

-- Q6
SELECT *
FROM EMPLOYEE
WHERE Dno = 5;

-- Q7
SELECT *
FROM EMPLOYEE, DEPARTMENT
WHERE Dname = 'Research' AND Dno = Dnumber;

-- Q8
SELECT ALL Salary
FROM EMPLOYEE;

-- Q9
SELECT DISTINCT Salary
FROM EMPLOYEE;


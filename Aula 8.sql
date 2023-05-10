### AULA 8

#Q1
INSERT INTO EMPLOYEE
VALUES ( 'Richard', 'K', 'Marini', '653298653', '1962-12-30', '98 Oak Forest, Katy, TX', 'M', 37000, '653298653', 4 );

#Q2
INSERT INTO EMPLOYEE (Fname, Lname, Dno, Ssn)
VALUES ('Richard', 'Marini', 4,'653298653');

#Q3
INSERT INTO EMPLOYEE (Fname, Lname, Ssn, Dno)
VALUES ('Robert', 'Hatcher', '980760540', 2);

#Q4
INSERT INTO EMPLOYEE (Fname, Lname, Dno)
VALUES ('Robert', 'Hatcher', 5);
INSERT INTO EMPLOYEE (Fname, Lname, Dno)
VALUES ('Robert', 'Hatcher', 5);

#Q5
create table WORKS_ON_INFO(
Emp_name varchar(15),
Proj_name varchar(15),
Hours_per_week decimal(3,1));

#Q6
insert  into WORKS_ON_INFO(
Emp_name, Proj_name, Hours_per_week)
select E.Lname, P.Pname, W.Hours
from PROJECT P,WORKS_ON W,EMPLOYEE E 
where P.Pnumber = W.Pno and W.Essn = E.Ssn;

#Q7
create table D5EMPS LIKE EMPLOYEE
(SELECT E.*
FROM EMPLOYEE AS E 
WHERE E.Dno = 5) with data;

CREATE TABLE D5EMPS
  AS (SELECT *
      FROM EMPLOYEE
      WHERE Dno = 5);


#Q8
DELETE FROM EMPLOYEE 
WHERE Lname = 'Brown';

#Q9
DELETE FROM EMPLOYEE
WHERE Ssn = '123456789';

#Q10 
DELETE FROM EMPLOYEE
WHERE Dno = 5;

#Q11
DELETE FROM EMPLOYEE;

#Q12
UPDATE PROJECT
SET Plocation = 'Bellaire', Dnum = 5
where Pnumber = 10;

#Q13
UPDATE EMPLOYEE
set Salary = Salary * 1.1
where Dno = 5;

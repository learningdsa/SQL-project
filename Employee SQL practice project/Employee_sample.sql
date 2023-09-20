use test001;

CREATE TABLE Employee (
EmpID int NOT NULL,
EmpName varchar(255),
Gender char,
Salary int,
City varchar(255));



INSERT INTO Employee
VALUES (1, 'Arjun', 'M', 75000, 'Pune'),
(2, 'Ekadanta', 'M', 125000, 'Bangalore'),
(3, 'Lalita', 'F', 150000 , 'Mathura'),
(4, 'Madhav', 'M', 250000 , 'Delhi'),
(5, 'Visakha ', 'F', 120000 , 'Mathura');


select * from Employee;

CREATE TABLE EmployeeDetail (
EmpID int NOT NULL,
Project Varchar(20),
EmpPosition varchar(20),
DOJ date);

INSERT INTO EmployeeDetail
VALUES (1, 'P1', 'Executive', '2019-01-26');


INSERT INTO EmployeeDetail VALUES
(2,'P2','Executive','2020-05-04'),
(3, 'P1', 'Lead', '2021-10-21'),
(4, 'P3', 'Manager', '2019-11-29'),
(5, 'P2', 'Manager', '2020-08-01');

select * from EmployeeDetail ;

-- Questions to be Answered
--1. List down employees with salary betwwn 2 and 3L.
select EmpName, Salary from Employee
where Salary between 200000 and 300000;

-- Madhav wiht 250000 salary.






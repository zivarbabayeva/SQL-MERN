create database CompanyDB

create table Employees(
EmployeeID int primary key identity(1,1),
Name nvarchar(50),
Surname nvarchar(70),
Position nvarchar(60),
Salary float(50),
DepartmentID int,
CompanyID int foreign key references Company(CompanyID)
)

create table Company(
CompanyID int primary key identity(1,1),
Name nvarchar(60),
DepartmentID int
)

create table Department(
DepartmentID int primary key identity(1,1),
name nvarchar(50),
CompanyID int foreign key references Company(CompanyID),
EmployeeID int foreign key references Employees(EmployeeID)
)

select * from Employees
Where Name='Zivar'

SELECT MIN(Salary) AS SmallestSalary
FROM Employees; 
SELECT MAX(Salary) AS LargestSalary
FROM Employees;
SELECT AVG(Salary) As AverageSalary
FROM Employees;
SELECT Name, Surname, Salary FROM Employees
WHERE Salary >= (SELECT AVG(Salary) FROM Employees); 
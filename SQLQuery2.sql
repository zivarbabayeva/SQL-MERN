create database MarketDB
create table Products(
ProductId int primary key identity(1,1),
Name nvarchar(50),
Price float
)
create table Brands(
BrandID int primary key identity(1,1),
Name nvarchar(50),
ProductId int foreign key references Products(ProductID)
)
insert into Products values 
(10,'qend',20),
(11,'pesok',25),
(12,'konfet',23),
(13,'tort',50),
(14,'dondurma',9);

SELECT AVG(Price)
FROM Products;
SELECT MIN(Price) AS SmallestPrice
FROM Products; 
SELECT MAX(Price) AS LargestPrice
FROM Products;
SELECT AVG(Price) As AveragePrice
FROM Products;
SELECT ProductID, Name, Price FROM Products
WHERE Price <= (SELECT AVG(Price) FROM Products); 

ALTER TABLE Products
ADD Brand nvarchar(60);
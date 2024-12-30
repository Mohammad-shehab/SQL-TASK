create database SQLTask1;

go


use SQLTask1;
go

create schema Task;

go

create table Task.Employees
(
id int primary key identity (1,1) not null,
name nvarchar(50) not null,
position nvarchar(50) not null,
salary decimal(18 ,2),
department_id int not null,
date_of_joining date not null)


insert into Task.Employees
values('John Doe','Manager',6000,1,'2020-05-10'),
	('Jane Smith','Developer',4500,2,'2021-06-15'),
	('Alan Turing','Analyst',4000,3,'2022-03-20'),
	('Grace Hopper','Scientist',7000,1,'2019-11-25'),
	('Ada Lovelace','Developer',5000,2,'2023-01-10')

select * from Task.Employees



create table Task.Deparments
(
id int primary key identity (1,1) not null,
name nvarchar(50) not null,
location nvarchar(50) not null)


insert into Task.Deparments
values('HR','New York'),
	('IT','San Francisco'),
	('Finance','Chicago')

select * from Task.Deparments

insert into Task.Employees
values('Mohammad Shehab','King',10000,1,'2024-05-10')
select * from Task.Employees


UPDATE Task.Employees
SET salary = 5000
WHERE name = 'Jane Smith';

select * from Task.Employees

DELETE FROM Task.Employees
where id =3

select * from Task.Employees

insert into Task.Deparments
values('Gaming','my room')

select * from Task.Deparments

UPDATE Task.Deparments
SET location = 'Boston'
WHERE name = 'HR';

select * from Task.Deparments

UPDATE Task.Employees
set salary =(salary * 1.10)

select * from Task.Employees


DELETE FROM Task.Employees
where department_id =3

select * from Task.Employees


insert into Task.Employees
values('Ali Shehab','sql ',10000,2,'2024-05-10')
select * from Task.Employees

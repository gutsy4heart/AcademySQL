CREATE DATABASE Academy

USE Academy
CREATE TABLE Departments(
	ID INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	Financing MONEY NOT NULL CHECK (Financing >= 0.0) DEFAULT 0.0,
	[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK ([Name] <> N'')
)

INSERT INTO Departments (Financing, [Name]) VALUES ('$2715.97', 'Dentistry');
INSERT INTO Departments (Financing, [Name]) VALUES ('$5173.70', 'Training');
INSERT INTO Departments (Financing, [Name]) VALUES ('$533.14', 'Chemist');
INSERT INTO Departments (Financing, [Name]) VALUES ('$2807.53', 'Teachering');
INSERT INTO Departments (Financing, [Name]) VALUES ('$4020.21', 'Software Development');
INSERT INTO Departments (Financing, [Name]) VALUES ('$6933.19', 'Engineering');
INSERT INTO Departments (Financing, [Name]) VALUES ('$5809.08', 'Back-End Developer');
INSERT INTO Departments (Financing, [Name]) VALUES ('$4152.07', 'Product Management');
INSERT INTO Departments (Financing, [Name]) VALUES ('$29200.21', 'Web Development');
INSERT INTO Departments (Financing, [Name]) VALUES ('$7097.25', 'Accounting');
INSERT INTO Departments (Financing, [Name]) VALUES ('$14004.51', 'Geology');

--DELETE FROM Departments WHERE [Name] = 'Geology'
--DROP TABLE Departments

CREATE TABLE Faculties(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Dean NVARCHAR(MAX) NOT NULL CHECK (Dean <> N''),
	[Name] NVARCHAR(100) NOT NULL UNIQUE CHECK ([Name] <> N'')
)

INSERT INTO Faculties(Dean, [Name]) VALUES ('Essa', 'Managment');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Chucho', 'Computer Science');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Bobbie', 'Geology');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Vivyanne', 'Finance');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Courtnay', 'Engineering');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Abraham', 'Mathematics')
INSERT INTO Faculties(Dean, [Name]) VALUES ('Sosuke', 'Software Developer');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Darcy', 'Business');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Tallie', 'Teaching');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Fara', 'Philology');
INSERT INTO Faculties(Dean, [Name]) VALUES ('Sumner', 'Chemistry');

DROP TABLE Departments

CREATE TABLE Groups(					   
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(10) NOT NULL UNIQUE CHECK ([Name] <> N''),
	Rating INT NOT NULL CHECK (Rating BETWEEN 0 AND 5),
	[Year] INT NOT NULL CHECK ([Year] BETWEEN 1 AND 5)
)

INSERT INTO Groups([Name], Rating, [Year]) VALUES ('756A',2,5);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('356',2,4);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('813',2,3);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('714A',5,3);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('139R',1,2);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('369G',3,5);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('951F',3,1);
INSERT INTO Groups([Name], Rating, [Year]) VALUES ('246J',4,4);



CREATE TABLE Teachers(
	ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	EmploymentDay DATE NOT NULL CHECK (EmploymentDay >= '01.01.1990'),
	IsAssistant BIT NOT NULL DEFAULT 0,
	IsProfessor BIT NOT NULL DEFAULT 0,
	[Name] NVARCHAR(MAX) NOT NULL CHECK ([Name] <> N''),
	Position NVARCHAR(MAX) NOT NULL CHECK (Position <> N''),
	Premium MONEY NOT NULL CHECK (Premium > 0) DEFAULT 0,
	Salary MONEY NOT NULL CHECK (Salary >= 0),
	Surname NVARCHAR(MAX) NOT NULL CHECK (Surname <> N'')
)
 
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('01.05.2000', 0, 1, 'John', 'Professor of Mathematics', 100, 500, 'Doe');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('15.10.2002', 1, 0, 'Jane', 'Assistant Lecturer in Physics', 500, 300, 'Smith');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('20.01.2010', 0, 0, 'Emily', 'Lecturer in Chemistry', 80, 400, 'Johnson');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('22.03.1995', 0, 1, 'Michael', 'Professor of Biology', 600, 1600, 'Williams');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('13.07.2002', 0, 0, 'Olivia', 'Lecturer in Computer Science', 900, 450, 'Brown');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('05.11.1998', 1, 0, 'Ethan', 'Assistant Lecturer in History', 160, 350, 'Jones');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('18.06.1999', 0, 1, 'Sophia', 'Professor of Literature', 110, 1550, 'Garcia');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('12.09.2010', 0, 0, 'James', 'Lecturer in Philosophy', 700, 370, 'Miller');
INSERT INTO Teachers(EmploymentDay, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES('12.09.1999', 0, 1, 'Aizen', 'Computer Sciences', 730, 370, 'Sosuke');

--DROP TABLE Teachers
--DELETE FROM Teachers WHERE [Name] = 'Sophia'

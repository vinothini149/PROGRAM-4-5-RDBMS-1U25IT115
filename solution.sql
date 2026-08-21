CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Course (
    CourseID VARCHAR(10) PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT,
    DepartmentID VARCHAR(10) NOT NULL
);

INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID)
VALUES
(101, 'database management system', 4, '1'),
(102, 'data structures', 3, '2'),
(103, 'computer networks', 4, '3');

SELECT * FROM Course;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(20) NOT NULL,
    Gender VARCHAR(10),
    DepartmentID VARCHAR(10) NOT NULL
);

INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID)
VALUES
(1001, 'arun', 'male', '101'),
(1002, 'divya', 'female', '102'),
(1003, 'karthik', 'male', '101');

SELECT * FROM Student;

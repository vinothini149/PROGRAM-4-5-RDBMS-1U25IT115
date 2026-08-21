CREATE DATABASE tusionDB;
USE tusionDB;
CREATE TABLE Course (
    CourseID INT(10) PRIMARY KEY,
    CourseName VARCHAR(10),
    Credits INT,
    DepartmentID INT
);
DESC Course;
INSERT INTO Course (CourseID, CourseName, Credits, DepartmentID)
VALUES
(101, 'Database Management System', 4, 1),
(102, 'Data Structures', 3, 2),
(103, 'Computer Networks', 4, 3);

SELECT * FROM Course;

CREATE DATABASE schoolDB;
USE schoolDB;
CREATE TABLE Student(
    StudentId VARCHAR(20),
    StudentName VARCHAR(20),
    Gender VARCHAR(10),
    DepartmentID VARCHAR(10)
);
desc Student;
INSERT INTO Student (StudentID, StudentName, Gender, DepartmentID)
VALUES
(1001, 'Arun', 'Male', 101),
(1002, 'Divya', 'Female', 102),
(1003, 'Karthik', 'Male', 101);

SELECT * FROM Student;


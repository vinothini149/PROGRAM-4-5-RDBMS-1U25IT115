CREATE DATABASE tusionDB;
USE tusionDB;
CREATE TABLE Course(
    CourseID INT(5) PRIMARY KEY,
    CourseName VARCHAR(20)NOT NULL,
    Credits INT,
    DepartmentID VARCHAR(10)NOT NULL
);
INSERT INTO Course(
    CourseID,CourseName,Credits,DepartmentID)
VALUES
(101,'database management system',4,1),
(102,'data structures',3,2),
(103,'computer networks',4,3);

SELECT*FROM Course;
INSERT INTO Student(StudentID,StudentName,Gender,DepartmentID)
VALUES
    (1001,'arun','male',101),
    (1002,'divya','female',102),
    (1003,'karthik','male',101);

SELECT*FROM student;


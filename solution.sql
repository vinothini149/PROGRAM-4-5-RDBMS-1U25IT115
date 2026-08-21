CREATE DATABASE tusionDB;
USE tusionDB;
CREATE TABLE course(
    courseID INT(5) PRIMARY KEY,
    course name VARCHAR(200)NOT NULL,
    credits INT,
    departmentID VARCHAR(10)NOT NULL
);
INSERT INTO
    course(courseID,course name, credits, departmentID)
VALUES
(101,'database management system ',4,1),
(102,'data structures',3,2),
(103,'computer networks',4,3);

SELECT*FROM course;
INSERT INTO student(studentID,studentName,gender, departmentID)
VALUES
    (1001,'arun','male',101),
    (1002,'divya','female',102),
    (1003,'karthik','male',101);

SELECT*FROM student;


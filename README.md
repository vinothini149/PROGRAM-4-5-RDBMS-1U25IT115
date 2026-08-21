# PROGRAM 4 & 5 – DBMS SQL Assignment

## Program 4 – Create Course Table

Create a Course table with the following fields:

- CourseID
- CourseName
- Credits
- DepartmentID

Insert at least 3 records into the Course table.

Display the Course table structure using:

DESCRIBE Course;

---

## Program 5 – Insert Student Records

Insert the following records into the Student table:

| StudentID | StudentName | Gender | DepartmentID |
|------------|-------------|--------|--------------|
| 1001 | Arun | Male | 101 |
| 1002 | Divya | Female | 102 |
| 1003 | Karthik | Male | 101 |

Display all Student records using:

SELECT * FROM Student;

Also display the table structures using DESCRIBE.

---

# Student Instructions

1. Open `solution.sql`.

2. Write your SQL program in `solution.sql`.

3. Create the Course table.

4. Insert at least 3 Course records.

5. Display the Course table structure.

6. Insert the 3 required Student records.

7. Display all Student records.

8. Save your changes.

9. Commit the changes.

10. Push the changes to GitHub.

11. Click the **Actions** tab.

12. Open:

Program 4 and 5 Auto Grading

13. Check your result.

---

# Important Rules

- Write your program only in `solution.sql`.
- Do not modify `tests/test.sh`.
- Do not modify `.github/workflows/main.yml`.
- Do not delete any files.
- Use the exact Student values given in the question.
- Insert at least 3 Course records.
- Use DESCRIBE to display table structures.
- Use SELECT * FROM Student to display Student records.

---

# Auto-Grading

GitHub Actions will automatically check:

1. CollegeDB database
2. Student table
3. Course table
4. CourseID
5. CourseName
6. Credits
7. DepartmentID
8. At least 3 Course records
9. Arun record
10. Divya record
11. Karthik record
12. All 3 required Student records

---

# Successful Submission

Your GitHub Actions result should show:

Passed: 12
Failed: 0

ALL TEST CASES PASSED

PROGRAM 4 & 5 COMPLETED SUCCESSFULLY

---

# Repository Structure

17.08.2026-UNIT-1-PGM-4-5

├── README.md
├── solution.sql
│
├── tests
│   └── test.sh
│
└── .github
    └── workflows
        └── main.yml

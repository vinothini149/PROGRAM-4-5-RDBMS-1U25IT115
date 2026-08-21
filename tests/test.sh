#!/bin/bash

MYSQL="mysql -h 127.0.0.1 -P 3306 -u root -proot --protocol=tcp -N -B"

PASS=0
FAIL=0

echo "=========================================="
echo " PROGRAM 4 & 5 AUTO GRADING"
echo "=========================================="

pass() {
    echo "✅ PASS: $1"
    PASS=$((PASS + 1))
}

fail() {
    echo "❌ FAIL: $1"
    FAIL=$((FAIL + 1))
}

# ==========================================
# TEST 1 - CollegeDB
# ==========================================

DB=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.SCHEMATA
WHERE SCHEMA_NAME='CollegeDB';
")

if [ "$DB" = "1" ]; then
    pass "CollegeDB database exists"
else
    fail "CollegeDB database does not exist"
fi


# ==========================================
# TEST 2 - Student table
# ==========================================

STUDENT_TABLE=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Student';
")

if [ "$STUDENT_TABLE" = "1" ]; then
    pass "Student table exists"
else
    fail "Student table does not exist"
fi


# ==========================================
# TEST 3 - Course table
# ==========================================

COURSE_TABLE=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Course';
")

if [ "$COURSE_TABLE" = "1" ]; then
    pass "Course table exists"
else
    fail "Course table does not exist"
fi


# ==========================================
# TEST 4 - CourseID column
# ==========================================

COURSEID=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Course'
AND COLUMN_NAME='CourseID';
")

if [ "$COURSEID" = "1" ]; then
    pass "CourseID column exists"
else
    fail "CourseID column is missing"
fi


# ==========================================
# TEST 5 - CourseName column
# ==========================================

COURSENAME=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Course'
AND COLUMN_NAME='CourseName';
")

if [ "$COURSENAME" = "1" ]; then
    pass "CourseName column exists"
else
    fail "CourseName column is missing"
fi


# ==========================================
# TEST 6 - Credits column
# ==========================================

CREDITS=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Course'
AND COLUMN_NAME='Credits';
")

if [ "$CREDITS" = "1" ]; then
    pass "Credits column exists"
else
    fail "Credits column is missing"
fi


# ==========================================
# TEST 7 - DepartmentID column
# ==========================================

DEPARTMENTID=$($MYSQL -e "
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA='CollegeDB'
AND TABLE_NAME='Course'
AND COLUMN_NAME='DepartmentID';
")

if [ "$DEPARTMENTID" = "1" ]; then
    pass "Course DepartmentID column exists"
else
    fail "Course DepartmentID column is missing"
fi


# ==========================================
# TEST 8 - At least 3 Course records
# ==========================================

COURSE_COUNT=$($MYSQL -e "
SELECT COUNT(*)
FROM CollegeDB.Course;
")

if [ "$COURSE_COUNT" -ge 3 ]; then
    pass "At least 3 Course records inserted"
else
    fail "Less than 3 Course records inserted"
fi


# ==========================================
# TEST 9 - Arun
# ==========================================

ARUN=$($MYSQL -e "
SELECT COUNT(*)
FROM CollegeDB.Student
WHERE StudentID=1001
AND StudentName='Arun'
AND Gender='Male'
AND DepartmentID=101;
")

if [ "$ARUN" = "1" ]; then
    pass "Student 1001 Arun inserted correctly"
else
    fail "Student 1001 Arun is incorrect or missing"
fi


# ==========================================
# TEST 10 - Divya
# ==========================================

DIVYA=$($MYSQL -e "
SELECT COUNT(*)
FROM CollegeDB.Student
WHERE StudentID=1002
AND StudentName='Divya'
AND Gender='Female'
AND DepartmentID=102;
")

if [ "$DIVYA" = "1" ]; then
    pass "Student 1002 Divya inserted correctly"
else
    fail "Student 1002 Divya is incorrect or missing"
fi


# ==========================================
# TEST 11 - Karthik
# ==========================================

KARTHIK=$($MYSQL -e "
SELECT COUNT(*)
FROM CollegeDB.Student
WHERE StudentID=1003
AND StudentName='Karthik'
AND Gender='Male'
AND DepartmentID=101;
")

if [ "$KARTHIK" = "1" ]; then
    pass "Student 1003 Karthik inserted correctly"
else
    fail "Student 1003 Karthik is incorrect or missing"
fi


# ==========================================
# TEST 12 - Required students
# ==========================================

STUDENT_COUNT=$($MYSQL -e "
SELECT COUNT(*)
FROM CollegeDB.Student
WHERE StudentID IN (1001,1002,1003);
")

if [ "$STUDENT_COUNT" = "3" ]; then
    pass "All 3 required Student records exist"
else
    fail "Required Student records are incomplete"
fi


# ==========================================
# FINAL RESULT
# ==========================================

echo ""
echo "=========================================="
echo " FINAL RESULT"
echo "=========================================="

echo "Passed: $PASS"
echo "Failed: $FAIL"

echo "=========================================="

if [ "$FAIL" -eq 0 ]; then

    echo "🎉 ALL TEST CASES PASSED"
    echo "🎉 PROGRAM 4 & 5 COMPLETED SUCCESSFULLY"

    exit 0

else

    echo "❌ SOME TEST CASES FAILED"

    exit 1

fi

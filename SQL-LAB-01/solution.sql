-- 1. Create a database named CollegeDB.
CREATE DATABASE CollegeDB;

-- 2. Select / use the database CollegeDB.
USE CollegeDB;

-- 3. Create a table Student with following columns:
-- ○ RollNo INT
-- ○ Name VARCHAR(50)
-- ○ Dept VARCHAR(20)
-- ○ Age INT
-- ○ Phone VARCHAR(15)
CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Dept VARCHAR(20),
    Age INT,
    Phone VARCHAR(15)
);

-- 4. Create a table Course with columns:
-- ○ CourseID INT
-- ○ CourseName VARCHAR(50)
-- ○ Credits INT
CREATE TABLE Course (
    CourseID INT,
    CourseName VARCHAR(50),
    Credits INT
);

-- 5. Add a new column City in table Student.
ALTER TABLE Student
ADD City VARCHAR(30);

-- 6. Add a new column Semester in table Student.
ALTER TABLE Student
ADD Semester INT;

-- 7. Rename column Phone to MobileNo in table Student. (if supported in your DB)
ALTER TABLE Student
RENAME COLUMN Phone TO MobileNo;

-- 8. Delete (drop) the table Course.
ALTER TABLE Student
CHANGE Phone MobileNo VARCHAR(15);


-- PART-B

-- 9. Insert 5 student records into Student.
INSERT INTO Student
(RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES
(21, 'Manish', 'CSE', 21, '9876543210', 'Delhi', 5),
(32, 'Sushil', 'CSE', 20, '9123456780', 'Patna', 4),
(33, 'Vivek',  'CSE', 22, '9988776655', 'Ranchi', 6),
(16, 'Rahul',  'CSE', 19, '9090909090', 'Kolkata', 3),
(38, 'Prem',   'CSE', 23, '9000011111', 'Lucknow', 7);



# Database Lab 04 – Data Retrieval Using SQL (Oracle Express Edition)

## 📌 Objective

The objective of this lab is to understand and practice retrieving and analyzing data from existing database tables using **read-only SQL queries** in Oracle Database Express Edition. This includes:

- Displaying table data
- Using column aliases
- Filtering records using WHERE clause
- Sorting results using ORDER BY
- Limiting results using ROWNUM
- Generating derived/computed outputs
- Working with DATE functions

This lab does not modify the database structure or stored data.

---

## 🛠️ Database Environment

- **Database:** Oracle Database Express Edition (XE)
- **Tool Used:** Oracle SQL Developer
- **Language:** SQL (Oracle Syntax)
- **Schema Owner:** USER

---

## 🗂️ Tables Used

The following tables were created and populated in previous labs:

### 1. Department

| Column Name      | Data Type     | Description              |
|------------------|--------------|--------------------------|
| DepartmentID     | NUMBER       | Primary Key              |
| DepartmentName   | VARCHAR2(50) | Name of Department       |
| OfficeLocation   | VARCHAR2(50) | Department Office Block  |

---

### 2. Faculty

| Column Name   | Data Type     | Description              |
|---------------|--------------|--------------------------|
| FacultyID     | NUMBER       | Primary Key              |
| Name          | VARCHAR2(50) | Faculty Name             |
| Designation   | VARCHAR2(50) | Faculty Position         |
| Email         | VARCHAR2(50) | Faculty Email            |
| DepartmentID  | NUMBER       | Foreign Key              |

---

### 3. Course

| Column Name   | Data Type     | Description              |
|---------------|--------------|--------------------------|
| CourseID      | NUMBER       | Primary Key              |
| CourseName    | VARCHAR2(50) | Course Title             |
| Credits       | NUMBER       | Credit Value             |
| DepartmentID  | NUMBER       | Foreign Key              |
| FacultyID     | NUMBER       | Foreign Key              |

---

### 4. Student

| Column Name     | Data Type     | Description              |
|------------------|--------------|--------------------------|
| StudentID        | NUMBER       | Primary Key              |
| Name             | VARCHAR2(50) | Student Name             |
| DateOfBirth      | DATE         | Student DOB              |
| Gender           | VARCHAR2(10) | Student Gender           |
| ContactNumber    | VARCHAR2(15) | Student Mobile           |
| DepartmentID     | NUMBER       | Foreign Key              |

---

### 5. Enrollment

| Column Name   | Data Type     | Description              |
|---------------|--------------|--------------------------|
| StudentID     | NUMBER       | Foreign Key              |
| CourseID      | NUMBER       | Foreign Key              |
| Semester      | VARCHAR2(10) | Semester Number          |
| Grade         | VARCHAR2(5)  | Student Grade            |

---

## 📋 Lab Tasks Performed

The following categories of queries were executed:

### Part A – Basic Data Display
- Display all columns using aliases
- Display selected columns with custom names
- Improve readability using column aliasing

### Part B – Conditional Data Display
- Filter students by department
- Filter students by gender
- Filter faculty by designation
- Filter courses by credits
- Filter students by date of birth

### Part C – Sorting and Limiting Results
- Sort student records alphabetically
- Sort records by date of birth
- Sort courses by credit value
- Limit number of rows using ROWNUM

### Part D – Derived / Computed Output
- Calculate student age from DOB
- Display updated credits without modifying table
- Extract year from date of birth
- Extract email domain from faculty email

---

## 📊 Example Queries
```sql
--Display students with alias names

SELECT
    StudentID AS Roll_No,
    Name AS Student_Name,
    DepartmentID AS Dept_ID
FROM Student;

--Display students sorted by name

SELECT *
FROM Student
ORDER BY Name ASC;

--Calculate student age

SELECT
    Name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
FROM Student;

--Display first 5 course records

SELECT *
FROM Course
WHERE ROWNUM <= 5;

--📸 Output Screenshots--
--Screenshots of successful query execution are included in the folder:
--Data_Retrieval_Screenshots/


📁 Files Included
Lab-04/
│
├── README.md
├── Lab_04_solution.sql
├── Data_Retrieval_Screenshots/
└── Questions-DB-Lab-4.pdf


--Display all students
SELECT * FROM Student;

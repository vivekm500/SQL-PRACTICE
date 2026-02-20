# Database Management Systems Lab – Lab 05
## Data Retrieval from Multiple Tables Using JOINs (Oracle Express Edition)

---

## 📌 Objective

The objective of this lab is to understand and apply **INNER JOIN operations** to retrieve meaningful information from multiple related tables using primary–foreign key relationships. This lab focuses on combining data from different tables without modifying the database structure or stored data.

---

## 🛠️ Database Environment

- **Database:** Oracle Database Express Edition (XE)
- **Tool Used:** Oracle SQL Developer
- **Language:** SQL (Oracle Syntax)
- **Query Type:** Read-only queries using INNER JOIN

---

## 🗂️ Database Schema Overview

The database consists of the following relational tables:

### 1. Department

| Column Name      | Data Type     | Description |
|------------------|--------------|-------------|
| DepartmentID     | NUMBER       | Primary Key |
| DepartmentName   | VARCHAR2(50) | Name of department |
| OfficeLocation   | VARCHAR2(50) | Office location |

---

### 2. Student

| Column Name     | Data Type     | Description |
|-----------------|--------------|-------------|
| StudentID      | NUMBER       | Primary Key |
| Name           | VARCHAR2(50) | Student name |
| DateOfBirth    | DATE         | Date of birth |
| Gender         | VARCHAR2(10) | Gender |
| ContactNumber  | VARCHAR2(15) | Mobile number |
| DepartmentID   | NUMBER       | Foreign Key → Department |

---

### 3. Faculty

| Column Name     | Data Type     | Description |
|-----------------|--------------|-------------|
| FacultyID      | NUMBER       | Primary Key |
| Name           | VARCHAR2(50) | Faculty name |
| Designation   | VARCHAR2(50) | Job title |
| Email         | VARCHAR2(50) | Email address |
| DepartmentID  | NUMBER       | Foreign Key → Department |

---

### 4. Course

| Column Name    | Data Type     | Description |
|----------------|--------------|-------------|
| CourseID      | NUMBER       | Primary Key |
| CourseName    | VARCHAR2(50) | Course name |
| Credits       | NUMBER       | Credit value |
| DepartmentID  | NUMBER       | Foreign Key → Department |
| FacultyID     | NUMBER       | Foreign Key → Faculty |

---

### 5. Enrollment

| Column Name  | Data Type     | Description |
|--------------|--------------|-------------|
| StudentID    | NUMBER       | Foreign Key → Student |
| CourseID     | NUMBER       | Foreign Key → Course |
| Semester     | VARCHAR2(10) | Semester |
| Grade        | VARCHAR2(5)  | Grade |

Primary Key: (StudentID, CourseID, Semester)

---

## 🔗 Relationships Between Tables

Department
├── Student
├── Faculty
└── Course
├── Enrollment
└── Student


---

## 📋 Lab Tasks Performed

The following JOIN queries were executed:

### Part A: Student–Enrollment JOIN
- Display student details with enrolled courses
- Display student name and semester
- Display student grades

### Part B: Course–Faculty JOIN
- Display courses with faculty names
- Display courses taught by specific faculty
- Display faculty and courses they teach

### Part C: Student–Course–Enrollment JOIN
- Display student names with course names
- Display student, course, and semester
- Display student, course, and grade for specific semester

### Part D: Department-Based JOIN
- Display student with department and course
- Display department-wise course list
- Display faculty with department names

### Part E: Filtering and Sorting JOIN Queries
- Filter students by department
- Sort student-course results
- Sort faculty-course results

### Part F: Analytical JOIN Queries
- Count students per course
- Count courses per faculty
- Count students per department
- Find maximum grade per course

---

## 📊 Example JOIN Queries

### Student Name and Course Name

```sql
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;

📁 Project Structure

SQL-Lab-05/
│
├── Lab_05_Queries.sql
├── Questions-DB-LAB-5.pdf
├── README.md
└── Results-Lab-5.pdf
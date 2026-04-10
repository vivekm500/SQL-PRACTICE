# Database Management Systems Lab – Lab 07

## Subqueries (Nested Queries) – Oracle Database Express Edition (XE)

---

## 📌 Objective

The objective of this lab is to understand and apply **subqueries (nested queries)** in SQL to retrieve and analyze data from a relational database.

This includes:

* Single-row subqueries
* Multi-row subqueries using `IN`
* Subqueries with aggregate functions
* Subqueries using `EXISTS`
* Analytical and nested subqueries

All queries are executed using **Oracle Database Express Edition (XE)** without modifying the database schema.

---

## 🛠️ Environment Details

* **Database:** Oracle Database Express Edition (XE)
* **Tool Used:** Oracle SQL Developer
* **Language:** SQL (Oracle Syntax)
* **Query Type:** Read-only (SELECT queries only)

---

## 📂 Project Structure

```
SQL-LAB-07
│
├── lab_07_queries.sql
├── Questions-DB-Lab-7.pdf
├── Results-Lab-07.pdf
└── README.md
```

---

## 🗂️ Database Schema Used

This lab is based on the previously created **College Database**, which includes:

| Table Name | Description                         |
| ---------- | ----------------------------------- |
| Department | Stores department details           |
| Student    | Stores student information          |
| Faculty    | Stores faculty details              |
| Course     | Stores course information           |
| Enrollment | Stores student-course relationships |

---

## 🔗 Key Concepts Covered

### 1. Subqueries (Nested Queries)

A query inside another query. The inner query executes first.

---

### 2. Single-Row Subquery

Returns a single value.

```sql
SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 21
);
```

---

### 3. Multi-Row Subquery (IN)

Used when multiple values are returned.

```sql
SELECT Name
FROM Student
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    WHERE Gender = 'Female'
);
```

---

### 4. Subquery with Aggregate Functions

```sql
SELECT CourseName
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);
```

---

### 5. Subquery with EXISTS

```sql
SELECT Name
FROM Student S
WHERE EXISTS (
    SELECT 1
    FROM Enrollment E
    WHERE S.StudentID = E.StudentID
);
```

---

## 📋 Lab Tasks Performed

### Part A – Basic Subqueries

* Students in same department
* Students with same gender
* Department-based filtering

### Part B – Subqueries using IN

* Students from departments with female students
* Students present in Enrollment table
* Students enrolled in courses

### Part C – Aggregate Subqueries

* Courses above average credits
* Students above average ID
* Departments above average student count

### Part D – Subqueries instead of JOIN

* Students enrolled (using EXISTS)
* Courses with students
* Department allocation checks

### Part E – Analytical Subqueries

* Course with maximum credits
* Students enrolled in multiple courses
* Department with maximum students

### Part F – Challenging Queries

* Students in same course
* Students not enrolled
* Courses with no enrollments

---

## 📄 Files Description

### `lab_07_queries.sql`

Contains all SQL queries written to solve Lab-07 questions using Oracle syntax.

---

### `Questions-DB-Lab-7.pdf`

Official lab assignment document containing all questions.

---

### `Results-Lab-07.pdf`

Contains screenshots/results of query execution.

---

## 📊 Output Verification

All queries were executed successfully, and outputs were verified using:

```sql
SELECT * FROM Student;
SELECT * FROM Enrollment;
```

---

## ⚠️ Important Oracle Notes

| MySQL Syntax | Oracle Equivalent       |
| ------------ | ----------------------- |
| LIMIT        | ROWNUM                  |
| YEAR()       | EXTRACT(YEAR FROM date) |
| CURDATE()    | SYSDATE                 |

---

## 🎯 Key Learnings

* Understanding execution order of subqueries
* Difference between `IN`, `EXISTS`, and `=`
* Using subqueries instead of JOIN
* Writing nested queries with aggregation
* Filtering data using derived conditions

---

## 👨‍💻 Author

**Student Name:** *(Your Name)*
**Course:** Database Management Systems Lab
**Lab Number:** Lab-07
**Database:** Oracle XE

---

## ✅ Conclusion

This lab demonstrated the power of **subqueries in SQL** for solving complex problems without directly joining tables. It strengthened understanding of nested queries, logical filtering, and data analysis using Oracle SQL.

Subqueries are essential for building efficient and flexible database queries in real-world applications.

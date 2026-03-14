# SQL Lab 06 – Data Aggregation using GROUP BY and HAVING

## 📌 Objective

The objective of this lab is to understand how to summarize and analyze data using SQL **aggregate functions** and apply **GROUP BY** and **HAVING** clauses to generate grouped reports from database tables.

All queries were executed using **Oracle Database Express Edition (XE)** without modifying the existing database schema or stored data.

---

# 🛠 Database Environment

* **Database:** Oracle Database Express Edition (XE)
* **Tool Used:** Oracle SQL Developer
* **Language:** SQL
* **Query Type:** Read-only aggregation queries

---

# 📂 Lab-6 Folder Structure

```
SQL-LAB-06
│
├── lab_6_queries.sql
├── Questions-DB-Lab-6.pdf
├── README.md
│
└── Results-Screenshots-Lab-6
    ├── img1-lab-6.png
    ├── img2-lab-6.png
    ├── img3-lab-6.png
    ├── img4-lab-6.png
    ├── img5-lab-6.png
    ├── img6-lab-6.png
    ├── img7-lab-6.png
    ├── img8-lab-6.png
    └── img9-lab-6.png
```

---

# 🗂 Database Tables Used

The queries in this lab are based on the previously created **College Database schema** consisting of the following tables:

| Table Name | Description                           |
| ---------- | ------------------------------------- |
| Department | Stores department information         |
| Student    | Stores student details                |
| Faculty    | Stores faculty information            |
| Course     | Stores course details                 |
| Enrollment | Stores student-course enrollment data |

These tables are connected using **primary key and foreign key relationships**.

---

# 📊 SQL Concepts Covered

This lab demonstrates the use of the following SQL concepts:

* Aggregate Functions

  * `COUNT()`
  * `MAX()`
  * `MIN()`

* GROUP BY Clause
  Used to group rows based on column values.

* HAVING Clause
  Used to filter grouped results.

* Aggregation with JOIN
  Used to summarize data across multiple tables.

---

# 📋 Lab Tasks

The lab consists of **22 SQL queries** divided into multiple sections:

### Part A – Basic Aggregate Queries

* Total number of students
* Total number of faculty members
* Total number of courses
* Maximum credits among courses
* Minimum credits offered

### Part B – GROUP BY on Single Tables

* Students per department
* Faculty per department
* Courses per department
* Enrollments per semester
* Students per grade

### Part C – GROUP BY with HAVING

* Departments with more than 3 students
* Semesters with more than 2 enrollments
* Grades assigned to multiple students
* Departments offering multiple courses

### Part D – Aggregation with JOIN

* Students enrolled per course
* Course name with number of students
* Department-wise student count
* Courses taught by each faculty

### Part E – Analytical Queries

* Course with maximum grade
* Courses per department
* Students enrolled per semester
* Courses with more than 2 enrolled students

---

# 📸 Result Screenshots

The execution results for the SQL queries are included in:

```
Results-Screenshots-Lab-6
```

Screenshots provided:

| Screenshot | Description                    |
| ---------- | ------------------------------ |
| img1-lab-6 | Aggregate queries              |
| img2-lab-6 | GROUP BY results               |
| img3-lab-6 | Department student counts      |
| img4-lab-6 | Semester enrollment counts     |
| img5-lab-6 | HAVING clause results          |
| img6-lab-6 | Course enrollment counts       |
| img7-lab-6 | Faculty course counts          |
| img8-lab-6 | Analytical aggregation queries |
| img9-lab-6 | Final query results            |

---

# 📄 Files Included

### `lab_6_queries.sql`

Contains all SQL queries used to solve the lab questions.

### `Questions-DB-Lab-6.pdf`

Original lab assignment document.

### `Results-Screenshots-Lab-6`

Screenshots showing successful execution of queries.

---

# 🎯 Key Learning Outcomes

After completing this lab, the following concepts were understood:

* Performing data aggregation using SQL
* Grouping records using `GROUP BY`
* Filtering grouped results using `HAVING`
* Combining aggregation with `JOIN`
* Writing analytical SQL queries for reports

---

# 👨‍💻 Author

**Student:** *Vivek Kumar*
**Course:** Database Management Systems Lab
**Lab Number:** Lab 06
**Database:** Oracle Database Express Edition (XE)

---

# ✅ Conclusion

This lab successfully demonstrated how to analyze and summarize relational data using SQL aggregation techniques. The use of **GROUP BY**, **HAVING**, and **aggregate functions** enables efficient data reporting and analysis in relational database systems.

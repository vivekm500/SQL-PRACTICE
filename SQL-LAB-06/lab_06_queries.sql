-- Part A: Basic Aggregate Queries

-- 1. Display the total number of students in the Student table.
SELECT COUNT(*) AS Total_Students
FROM Student;

-- 2. Display the total number of faculty members in the Faculty table. 
SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

-- 3. Display the total number of courses available in the Course table. 
SELECT COUNT(*) AS Total_Courses
FROM Course;

-- 4. Display the maximum credits among all courses. 
SELECT MAX(Credits) AS Max_Credits
FROM Course;

-- 5. Display the minimum credits offered by any course.
SELECT MIN(Credits) AS Min_Credits
FROM Course;


-- Part B: GROUP BY on Single Tables 

-- 6. Display the number of students in each DepartmentID from the Student table. 
SELECT DepartmentID,
COUNT(*) AS Number_of_Students
FROM Student
GROUP BY DepartmentID;

-- 7. Display the number of faculty members in each DepartmentID from the Faculty table. 
SELECT DepartmentID,
COUNT(*) AS Number_of_Faculty
FROM Faculty
GROUP BY DepartmentID;

-- 8. Display the number of courses offered by each DepartmentID from the Course table. 
SELECT DepartmentID,
COUNT(*) AS Number_of_Courses
FROM Course
GROUP BY DepartmentID;

-- 9. Display the number of enrollments in each Semester from the Enrollment table. 
SELECT Semester,
COUNT(*) AS Enrollment_Count
FROM Enrollment
GROUP BY Semester;

-- 10. Display the number of students for each Grade in the Enrollment table.
SELECT Grade,
COUNT(*) AS Student_Count
FROM Enrollment
GROUP BY Grade;


-- Part C: GROUP BY with HAVING 

-- 11. Display departments having more than 3 students. 
SELECT DepartmentID,
COUNT(*) AS Student_Count
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > 3;

-- 12. Display semesters where more than 2 enrollments exist. 
SELECT Semester,
COUNT(*) AS Enrollment_Count
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

-- 13. Display grades that are assigned to more than one student. 
SELECT Grade,
COUNT(*) AS Student_Count
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

-- 14. Display DepartmentIDs where more than one course is offered.
SELECT DepartmentID,
COUNT(*) AS Course_Count
FROM Course
GROUP BY DepartmentID
HAVING COUNT(*) > 1;


-- Part D: Aggregation with JOIN 

-- 15. Display the number of students enrolled in each CourseID.
SELECT CourseID,
COUNT(StudentID) AS Enrolled_Students
FROM Enrollment
GROUP BY CourseID;

-- 16. Display CourseName and number of students enrolled in that course. 
SELECT C.CourseName,
COUNT(E.StudentID) AS Enrolled_Students
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;

-- 17. Display DepartmentID and number of students belonging to that department. 
SELECT D.DepartmentID,
COUNT(S.StudentID) AS Student_Count
FROM Department D
INNER JOIN Student S
ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentID;

-- 18. Display Faculty Name and number of courses taught by each faculty member.
SELECT F.Name,
COUNT(C.CourseID) AS Courses_Taught
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
GROUP BY F.Name;


-- Part E: Analytical Queries 

-- 19. Display CourseName and maximum grade obtained in that course. 
SELECT C.CourseName,
MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;

-- 20. Display DepartmentID and total number of courses offered in that department. 
SELECT DepartmentID,
COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID;

-- 21. Display Semester and total number of students enrolled in that semester. 
SELECT Semester,
COUNT(StudentID) AS Total_Students
FROM Enrollment
GROUP BY Semester;

-- 22. Display courses that have more than 2 students enrolled.
SELECT C.CourseName,
COUNT(E.StudentID) AS Student_Count
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName
HAVING COUNT(E.StudentID) > 2;
--Part A: Basic Subqueries

--1.  Display names of students who belong to the same department as student ‘S401’.

SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 21
);

--2.  Display students who have the same gender as student ‘S402’

SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender
    FROM Student
    WHERE StudentID = 32
);

--3.  Display students belonging to the same department as ‘S403’.

SELECT Name
FROM Student
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM Student
    WHERE StudentID = 33
);

--Part A: Basic Subqueries

--4.  Display students whose DepartmentID exists where Gender is ‘Female’.

SELECT Name
FROM Student
WHERE Gender = 'Female'
AND DepartmentID IN (
    SELECT DepartmentID
    FROM Student
    WHERE Gender = 'Female'
);


--Q5. Students whose ID appears in Enrollment

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);

--Q6. Students enrolled in any course

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
);



--PART C: Aggregate Subqueries

--Q7. Courses with credits > average

SELECT CourseName
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);

--Q8. Students with StudentID > average StudentID

SELECT Name
FROM Student
WHERE StudentID > (
    SELECT AVG(StudentID)
    FROM Student
);

--Q9. Departments with more students than average

SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY DepartmentID
    )
);

--PART D: Subqueries instead of JOIN

--Q10. Students enrolled in courses (NO JOIN)

SELECT Name
FROM Student
WHERE EXISTS (
    SELECT 1
    FROM Enrollment
    WHERE Student.StudentID = Enrollment.StudentID
);

--Q11. Students allocated to any department

SELECT Name
FROM Student
WHERE DepartmentID IS NOT NULL;

--Q12. Courses having at least one student

SELECT CourseName
FROM Course
WHERE CourseID IN (
    SELECT CourseID
    FROM Enrollment
);

--PART E: Analytical Subqueries

--Q13. Course with maximum credits

SELECT CourseName
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

--Q14. Students enrolled in more than one course

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    GROUP BY StudentID
    HAVING COUNT(*) > 1
);

--Q15. Department with maximum students

SELECT DepartmentID
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) AS cnt
        FROM Student
        GROUP BY DepartmentID
    )
);

--PART F: Challenging Questions

--Q16. Students in same course as StudentID 21

SELECT Name
FROM Student
WHERE StudentID IN (
    SELECT StudentID
    FROM Enrollment
    WHERE CourseID IN (
        SELECT CourseID
        FROM Enrollment
        WHERE StudentID = 21
    )
);

--Q17. Students NOT enrolled in any course

SELECT Name
FROM Student
WHERE StudentID NOT IN (
    SELECT StudentID
    FROM Enrollment
);

--Q18. Courses with NO students

SELECT CourseName
FROM Course
WHERE CourseID NOT IN (
    SELECT CourseID
    FROM Enrollment
);
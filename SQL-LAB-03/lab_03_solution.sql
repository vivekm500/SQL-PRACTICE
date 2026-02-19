-- 1. Department
INSERT INTO Department
(DepartmentID, DepartmentName, OfficeLocation)
VALUES
(105, 'CSE', 'Block A');

INSERT INTO Department
(DepartmentID, DepartmentName, OfficeLocation)
VALUES
(102, 'ME', 'Block B');

INSERT INTO Department
(DepartmentID, DepartmentName, OfficeLocation)
VALUES
(157, 'AI&ML', 'Block C');

INSERT INTO Department
(DepartmentID, DepartmentName, OfficeLocation)
VALUES
(101, 'CE', 'Block D');

INSERT INTO Department
(DepartmentID, DepartmentName, OfficeLocation)
VALUES
(110, 'EEE', 'Block E');

-- Data Sources -> Time Table


-- 2. Faculty
INSERT INTO faculty VALUES (201, 'Mr. Sujeet Kumar', 'Assistant Professor', NULL, '105');
INSERT INTO faculty VALUES (202, 'Mr. Amit Kumar', 'Assistant Professor', NULL, '105');

INSERT INTO faculty VALUES (203, 'Mr. Kunal Kumar', 'Assistant Professor', NULL, '101');
INSERT INTO faculty VALUES (204, 'Mr. Akhilesh Kumar', 'Assistant Professor', NULL, '101');

INSERT INTO faculty VALUES (205, 'Dr. Ajay Giri', 'Assistant Professor', NULL, '102');
INSERT INTO faculty VALUES (206, 'Mr. Uttam Kumar', 'Assistant Professor', NULL, '102');

INSERT INTO faculty VALUES (207, 'Mr. H. K. Mishra', 'Assistant Professor', NULL, '110');
INSERT INTO faculty VALUES (208, 'Ms. Mitesh Kumar', 'Assistant Professor', NULL, '110');

INSERT INTO faculty VALUES (209, 'Md. Haque', 'Assistant Professor', NULL, '157');
INSERT INTO faculty VALUES (210, 'Mr. Praveen Kumar', 'Assistant Professor', NULL, '157');

-- Data sources -> Time Table/College Website - https://www.bpmcemadhepura.org/

-- 3. Course
INSERT INTO course VALUES (301, 'Database Management System', 4, '105', 201);
INSERT INTO course VALUES (302, 'Operating System', 4, '105', 202);
INSERT INTO course VALUES (303, 'Data Structures', 4, '105', 201);
INSERT INTO course VALUES (304, 'Structural Analysis', 4, '101', 203);
INSERT INTO course VALUES (305, 'Engineering Mechanics', 3, '101', 204);
INSERT INTO course VALUES (306, 'Thermodynamics', 4, '102', 205);
INSERT INTO course VALUES (307, 'Strength of Materials', 4, '102', 206);
INSERT INTO course VALUES (308, 'Basic Electrical Engineering', 3, '110', 207);
INSERT INTO course VALUES (309, 'Power Systems', 4, '110', 208);
INSERT INTO course VALUES (310, 'Machine Learning Fundamentals', 4, '157', 209);

-- Data sources -> Time Table / College Website-Department page -> link - https://www.bpmcemadhepura.org/

-- 4. Student
INSERT ALL
INTO Student VALUES (21, 'Manish Kumar', DATE '2003-05-14', 'Male', '9876543210', 105)
INTO Student VALUES (32, 'Sushil Sagar', DATE '2004-02-20', 'Male', '9123456780', 105)
INTO Student VALUES (33, 'Vivek Kumar',  DATE '2002-11-08', 'Male', '9988776655', 105)
INTO Student VALUES (16, 'Rahul Kumar',  DATE '2005-01-15', 'Male', '9090909090', 102)
INTO Student VALUES (38, 'Prem Kumar',   DATE '2003-07-30', 'Male', '9000011111', 105)
INTO Student VALUES (25, 'Binit Kumar', DATE '2004-09-12', 'Male', '9876501234', 157)
INTO Student VALUES (17, 'Priya Kumari',   DATE '2002-04-25', 'Female', '9123405678', 110)
INTO Student VALUES (09,  'Akriti Sharma', DATE '2003-12-03', 'Female', '9988701122', 157)
INTO Student VALUES (05,  'Ravi Kumar',   DATE '2005-06-18', 'Male', '9090803344', 110)
INTO Student VALUES (51, 'Raju Kumar',   DATE '2002-08-09', 'Male', '9301205566', 102)
SELECT * FROM dual;

-- Data Source -> Friends


INSERT INTO enrollment VALUES (21, 301, 4, 'A');
INSERT INTO enrollment VALUES (32, 302, 4, 'B+');
INSERT INTO enrollment VALUES (33, 303, 4, 'A');

INSERT INTO enrollment VALUES (16, 304, 5, 'B');
INSERT INTO enrollment VALUES (38, 305, 5, 'A');

INSERT INTO enrollment VALUES (25, 306, 5, 'A+');
INSERT INTO enrollment VALUES (17, 307, 5, 'B+');

INSERT INTO enrollment VALUES (09, 308, 3, 'A');
INSERT INTO enrollment VALUES (05, 309, 3, 'B');

INSERT INTO enrollment VALUES (51, 310, 4, 'A');

-- All Screensshots of successful data insertion are in folder Data_Insertion_Screenshots

-- Question PDF is also attached for your reference with the file  name Questions-DB-Lab-3.pdf
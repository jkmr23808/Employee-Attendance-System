create database employees;
use employees;


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    ManagerID INT
);


Create table Employees (
    EmployeeID int primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Email varchar(100),
    DepartmentID int,
    DateHired date,
    Foreign key (DepartmentID) references Departments(DepartmentID)
);


CREATE TABLE AttendanceRecords (
    RecordID INT PRIMARY KEY,
    EmployeeID INT,
    ClockInTime DATETIME,
    ClockOutTime DATETIME,
    WorkDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


Create table LeaveRequests ( 
    LeaveRequestID INT PRIMARY KEY,
    EmployeeID INT,
    LeaveStartDate DATE,
    LeaveEndDate DATE,
    LeaveType VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE Absences (
    AbsenceID INT PRIMARY KEY,
    EmployeeID INT,
    AbsenceDate DATE,
    Reason VARCHAR(100),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


Insert into Departments (DepartmentID, DepartmentName, ManagerID) VALUES
(1, 'Human Resources', NULL),
(2, 'IT', NULL),
(3, 'Sales', NULL),
(4, 'Marketing', NULL),
(5, 'Finance', NULL);


INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, DepartmentID, DateHired) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1, '2023-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 2, '2023-02-20'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 3, '2023-03-25'),
(4, 'Bob', 'Brown', 'bob.brown@example.com', 4, '2023-04-10'),
(5, 'Charlie', 'Davis', 'charlie.davis@example.com', 5, '2023-05-05'),
(6, 'Eve', 'Clark', 'eve.clark@example.com', 1, '2023-06-12'),
(7, 'Dave', 'Wilson', 'dave.wilson@example.com', 2, '2023-07-18'),
(8, 'Grace', 'Lewis', 'grace.lewis@example.com', 3, '2023-08-22'),
(9, 'Mallory', 'Garcia', 'mallory.garcia@example.com', 4, '2023-09-15'),
(10, 'Oscar', 'Martinez', 'oscar.martinez@example.com', 5, '2023-10-01'),
(11, 'Trent', 'Anderson', 'trent.anderson@example.com', 1, '2023-01-30'),
(12, 'Samantha', 'Thompson', 'samantha.thompson@example.com', 2, '2023-02-28'),
(13, 'Laura', 'Hernandez', 'laura.hernandez@example.com', 3, '2023-03-10'),
(14, 'Michael', 'Moore', 'michael.moore@example.com', 4, '2023-04-20'),
(15, 'Nina', 'Jackson', 'nina.jackson@example.com', 5, '2023-05-15'),
(16, 'Paul', 'White', 'paul.white@example.com', 1, '2023-06-30'),
(17, 'Quinn', 'Harris', 'quinn.harris@example.com', 2, '2023-07-25'),
(18, 'Rita', 'Martin', 'rita.martin@example.com', 3, '2023-08-05'),
(19, 'Steve', 'Thompson', 'steve.thompson@example.com', 4, '2023-09-22'),
(20, 'Tina', 'Robinson', 'tina.robinson@example.com', 5, '2023-10-10'),
(21, 'Victor', 'Walker', 'victor.walker@example.com', 1, '2023-01-10'),
(22, 'Wendy', 'Perez', 'wendy.perez@example.com', 2, '2023-02-15'),
(23, 'Xander', 'Young', 'xander.young@example.com', 3, '2023-03-12'),
(24, 'Yara', 'King', 'yara.king@example.com', 4, '2023-04-30'),
(25, 'Zach', 'Scott', 'zach.scott@example.com', 5, '2023-05-25');


INSERT INTO AttendanceRecords (RecordID, EmployeeID, ClockInTime, ClockOutTime, WorkDate) VALUES
(1, 1, '2023-10-01 09:00:00', '2023-10-01 17:00:00', '2023-10-01'),
(2, 2, '2023-10-01 09:15:00', '2023-10-01 17:15:00', '2023-10-01'),
(3, 3, '2023-10-01 09:05:00', '2023-10-01 17:05:00', '2023-10-01'),
(4, 4, '2023-10-01 09:10:00', '2023-10-01 17:10:00', '2023-10-01'),
(5, 5, '2023-10-01 09:20:00', '2023-10-01 17:20:00', '2023-10-01'),
(6, 6, '2023-10-02 09:00:00', '2023-10-02 17:00:00', '2023-10-02'),
(7, 7, '2023-10-02 09:15:00', '2023-10-02 17:15:00', '2023-10-02'),
(8, 8, '2023-10-02 09:05:00', '2023-10-02 17:05:00', '2023-10-02'),
(9, 9, '2023-10-02 09:10:00', '2023-10-02 17:10:00', '2023-10-02'),
(10, 10, '2023-10-02 09:20:00', '2023-10-02 17:20:00', '2023-10-02'),
(11, 11, '2023-10-03 09:00:00', '2023-10-03 17:00:00', '2023-10-03'),
(12, 12, '2023-10-03 09:15:00', '2023-10-03 17:15:00', '2023-10-03'),
(13, 13, '2023-10-03 09:05:00', '2023-10-03 17:05:00', '2023-10-03'),
(14, 14, '2023-10-03 09:10:00', '2023-10-03 17:10:00', '2023-10-03'),
(15, 15, '2023-10-03 09:20:00', '2023-10-03 17:20:00', '2023-10-03'),
(16, 16, '2023-10-04 09:00:00', '2023-10-04 17:00:00', '2023-10-04'),
(17, 17, '2023-10-04 09:15:00', '2023-10-04 17:15:00', '2023-10-04'),
(18, 18, '2023-10-04 09:05:00', '2023-10-04 17:05:00', '2023-10-04'),
(19, 19, '2023-10-04 09:10:00', '2023-10-04 17:10:00', '2023-10-04'),
(20, 20, '2023-10-04 09:20:00', '2023-10-04 17:20:00', '2023-10-04'),
(21, 21, '2023-10-05 09:00:00', '2023-10-05 17:00:00', '2023-10-05'),
(22, 22, '2023-10-05 09:15:00', '2023-10-05 17:15:00', '2023-10-05'),
(23, 23, '2023-10-05 09:05:00', '2023-10-05 17:05:00', '2023-10-05'),
(24, 24, '2023-10-05 09:10:00', '2023-10-05 17:10:00', '2023-10-05'),
(25, 25, '2023-10-05 09:20:00', '2023-10-05 17:20:00', '2023-10-05');


INSERT INTO LeaveRequests (LeaveRequestID, EmployeeID, LeaveStartDate, LeaveEndDate, LeaveType, Status) VALUES
(1, 1, '2023-10-10', '2023-10-12', 'Sick', 'Approved'),
(2, 2, '2023-10-15', '2023-10-17', 'Vacation', 'Pending'),
(3, 3, '2023-10-20', '2023-10-22', 'Personal', 'Approved'),
(4, 4, '2023-10-25', '2023-10-26', 'Family', 'Rejected'),
(5, 5, '2023-10-30', '2023-11-02', 'Sick', 'Approved'),
(6, 6, '2023-10-12', '2023-10-14', 'Vacation', 'Approved'),
(7, 7, '2023-10-16', '2023-10-18', 'Personal', 'Pending'),
(8, 8, '2023-10-21', '2023-10-23', 'Family', 'Approved'),
(9, 9, '2023-10-05', '2023-10-06', 'Sick', 'Approved'),
(10, 10, '2023-10-13', '2023-10-15', 'Vacation', 'Rejected'),
(11, 11, '2023-10-11', '2023-10-13', 'Personal', 'Approved'),
(12, 12, '2023-10-14', '2023-10-17', 'Family', 'Pending'),
(13, 13, '2023-10-20', '2023-10-21', 'Sick', 'Approved'),
(14, 14, '2023-10-22', '2023-10-24', 'Vacation', 'Rejected'),
(15, 15, '2023-10-05', '2023-10-07', 'Personal', 'Approved'),
(16, 16, '2023-10-09', '2023-10-10', 'Family', 'Approved'),
(17, 17, '2023-10-12', '2023-10-15', 'Sick', 'Pending'),
(18, 18, '2023-10-17', '2023-10-18', 'Vacation', 'Approved'),
(19, 19, '2023-10-23', '2023-10-24', 'Personal', 'Approved'),
(20, 20, '2023-10-25', '2023-10-27', 'Family', 'Pending'),
(21, 21, '2023-10-05', '2023-10-06', 'Sick', 'Approved'),
(22, 22, '2023-10-08', '2023-10-10', 'Vacation', 'Rejected'),
(23, 23, '2023-10-15', '2023-10-17', 'Personal', 'Approved'),
(24, 24, '2023-10-18', '2023-10-20', 'Family', 'Pending'),
(25, 25, '2023-10-25', '2023-10-27', 'Sick', 'Approved');


INSERT INTO Absences (AbsenceID, EmployeeID, AbsenceDate, Reason) VALUES
(1, 1, '2023-09-29', 'Illness'),
(2, 2, '2023-09-30', 'Family Emergency'),
(3, 3, '2023-10-01', 'Personal Issues'),
(4, 4, '2023-10-02', 'Medical Appointment'),
(5, 5, '2023-10-03', 'Illness'),
(6, 6, '2023-10-04', 'Travel'),
(7, 7, '2023-10-05', 'Sick Leave'),
(8, 8, '2023-10-06', 'Family Matter'),
(9, 9, '2023-10-07', 'Illness'),
(10, 10, '2023-10-08', 'Personal Reasons'),
(11, 11, '2023-10-09', 'Travel'),
(12, 12, '2023-10-10', 'Sick Leave'),
(13, 13, '2023-10-11', 'Family Matter'),
(14, 14, '2023-10-12', 'Illness'),
(15, 15, '2023-10-13', 'Personal Reasons'),
(16, 16, '2023-10-14', 'Travel'),
(17, 17, '2023-10-15', 'Sick Leave'),
(18, 18, '2023-10-16', 'Family Matter'),
(19, 19, '2023-10-17', 'Illness'),
(20, 20, '2023-10-18', 'Personal Reasons'),
(21, 21, '2023-10-19', 'Travel'),
(22, 22, '2023-10-20', 'Sick Leave'),
(23, 23, '2023-10-21', 'Family Matter'),
(24, 24, '2023-10-22', 'Illness'),
(25, 25, '2023-10-23', 'Personal Reasons');


SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM AttendanceRecords;
SELECT * FROM Absences;
SELECT * FROM LeaveRequests;


SELECT EmployeeID, FirstName, LastName, Email
FROM Employees
WHERE DepartmentID = 1 
AND DateHired > '2023-01-01';


SELECT RecordID, EmployeeID, ClockInTime, ClockOutTime, WorkDate
FROM AttendanceRecords
WHERE WorkDate = '2023-10-01' 
OR EmployeeID IN (
    SELECT EmployeeID 
    FROM Employees 
    WHERE DepartmentID = 2
);


SELECT EmployeeID, FirstName, LastName, Email
FROM Employees
WHERE NOT (DepartmentID = 3);


SELECT COUNT(*) AS AttendanceCount
FROM AttendanceRecords
WHERE EmployeeID > 1;


SELECT SUM(EmployeeID) AS ID
FROM Employees;


SELECT MAX(DateHired) AS MostRecentHire
FROM Employees;


SELECT AVG(EmployeeID) AS ID
FROM Employees;


SELECT MIN(DateHired) AS MostRecentHire
FROM Employees;


SELECT *
FROM Employees
ORDER BY LastName ASC
LIMIT 10;


SELECT *
FROM Employees
ORDER BY DateHired DESC
LIMIT 5;


SELECT *
FROM Departments
WHERE DepartmentName LIKE '%Sales%';


SELECT *
FROM Employees
WHERE FirstName LIKE 'J%';


SELECT DepartmentID, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY DepartmentID;


SELECT LeaveType, COUNT(*) AS RequestCount
FROM LeaveRequests
GROUP BY LeaveType;


SELECT LeaveType, COUNT(*) AS RequestCount
FROM LeaveRequests
GROUP BY LeaveType
HAVING COUNT(*) < 10;


SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;


SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    ar.WorkDate, 
    ar.ClockInTime, 
    ar.ClockOutTime
FROM 
    Employees e
LEFT JOIN 
    AttendanceRecords ar 
ON 
    e.EmployeeID = ar.EmployeeID;


SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    ar.WorkDate, 
    ar.ClockInTime, 
    ar.ClockOutTime
FROM 
    Employees e
RIGHT JOIN 
    AttendanceRecords ar 
ON 
    e.EmployeeID = ar.EmployeeID;


SELECT 
    e.EmployeeID, 
    e.FirstName, 
    ar.RecordID, 
    ar.WorkDate
FROM 
    Employees e
CROSS JOIN 
    AttendanceRecords ar;
    ---------------------------------------------------------------------------------------
    
    
SELECT FirstName AS Name FROM Employees
UNION
SELECT DepartmentName AS Name FROM Departments;


SELECT e.FirstName, e.LastName, lr.LeaveType
FROM Employees e
JOIN LeaveRequests lr ON e.EmployeeID = lr.EmployeeID
UNION
SELECT e.FirstName, e.LastName, 'No Leave' AS LeaveType
FROM Employees e
WHERE e.EmployeeID NOT IN (SELECT EmployeeID FROM LeaveRequests);


SELECT CONCAT(FirstName, ' ', LastName) AS Name FROM Employees
UNION ALL
SELECT DepartmentName AS Name FROM Departments;


SELECT ClockInTime AS Time, 'Attendance' AS Source FROM AttendanceRecords
UNION ALL
SELECT LeaveStartDate AS Time, 'Leave Request' AS Source FROM LeaveRequests;

---------------------------------------------------------------------------------------------------------------


CREATE VIEW EmployeeDetails AS
SELECT e.EmployeeID, e.FirstName, e.LastName, e.Email, d.DepartmentName, e.DateHired
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT * FROM EmployeeDetails;


CREATE VIEW EmployeesWithoutDepartment AS
SELECT EmployeeID, 
       FirstName, 
       LastName, 
       Email
FROM Employees
WHERE DepartmentID IS NULL;


SELECT * FROM EmployeesWithoutDepartment;


CREATE VIEW EmployeesWithDepartment AS
SELECT EmployeeID, 
       FirstName, 
       LastName, 
       Email, 
       DepartmentID
FROM Employees
WHERE DepartmentID IS NOT NULL;
SELECT * FROM EmployeesWithDepartment;
-------------------------------------------------------------------------------------------------------


CREATE VIEW EmployeeHireCategory AS
SELECT EmployeeID, 
       FirstName, 
       LastName, 
       DateHired,
       CASE 
           WHEN DateHired < '2020-01-01' THEN 'Old Hire'
           WHEN DateHired >= '2020-01-01' AND DateHired < '2023-01-01' THEN 'Recent Hire'
           ELSE 'New Hire'
       END AS HireCategory
FROM Employees;
-----------------------------------------------------------------------------------------------------------


CREATE PROCEDURE AddEmployee(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_Email VARCHAR(100),
    IN p_DepartmentID INT,
    IN p_DateHired DATE
)

    INSERT INTO Employees (FirstName, LastName, Email, DepartmentID, DateHired)
    VALUES (p_FirstName, p_LastName, p_Email, p_DepartmentID, p_DateHired);


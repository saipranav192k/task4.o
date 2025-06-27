CREATE DATABASE IF NOT EXISTS college;
USE college;

DROP TABLE IF EXISTS StudentMarks;

-- Step 1: Create the table
CREATE TABLE StudentMarks (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Marks INT
);


INSERT INTO StudentMarks (StudentID, Name, Department, Marks) VALUES
(1, 'Alice', 'CSE', 88),
(2, 'Bob', 'CSE', 76),
(3, 'Charlie', 'ECE', 91),
(4, 'David', 'ECE', 84),
(5, 'Eva', 'CSE', 93),
(6, 'Frank', 'MECH', 70),
(7, 'Grace', 'MECH', 60);



-- 1. Total Marks per Department
SELECT Department, SUM(Marks) AS Total_Marks
FROM StudentMarks
GROUP BY Department;

-- 2. Average Marks per Department
SELECT Department, AVG(Marks) AS Average_Marks
FROM StudentMarks
GROUP BY Department;

-- 3. Count of Students in Each Department
SELECT Department, COUNT(*) AS Student_Count
FROM StudentMarks
GROUP BY Department;

-- 4. Departments with Average Marks > 80
SELECT Department, AVG(Marks) AS Avg_Marks
FROM StudentMarks
GROUP BY Department
HAVING AVG(Marks) > 80;

SELECT Department, ROUND(AVG(Marks), 2) AS Avg_Marks
FROM StudentMarks
GROUP BY Department;

-- 6. Distinct Departments
SELECT DISTINCT Department FROM StudentMarks;

-- 7. Maximum Marks in Each Department
SELECT Department, MAX(Marks) AS Highest_Mark
FROM StudentMarks
GROUP BY Department;

-- 8. Minimum Marks in Each Department
SELECT Department, MIN(Marks) AS Lowest_Mark
FROM StudentMarks
GROUP BY Department;
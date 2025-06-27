
This project demonstrates the creation and analysis of a simple student marks database using SQL. The operations include creating a database, inserting data, and running useful aggregation queries to derive insights from student performance data.

🏗️ Database and Table Creation
Creates a database named college.

Drops the existing StudentMarks table if it exists.

Defines a table StudentMarks with the following fields:

StudentID (Primary Key)

Name (Student Name)

Department (e.g., CSE, ECE, MECH)

Marks (Integer)

📝 Sample Data Inserted
Sample records of 7 students across 3 departments (CSE, ECE, MECH) with their marks are inserted into the table.

📊 SQL Queries and Their Purpose
Total Marks per Department
Calculates the sum of marks for each department using GROUP BY.

Average Marks per Department
Returns the average marks obtained by students in each department.

Count of Students in Each Department
Counts the number of students per department.

Departments with Average Marks > 80
Filters departments having an average mark greater than 80 using HAVING.

Rounded Average Marks
Returns average marks rounded to 2 decimal places for better readability.

List of Distinct Departments
Retrieves unique department names from the dataset.

Maximum Marks in Each Department
Displays the highest mark scored in each department.

Minimum Marks in Each Department
Shows the lowest mark scored in each department

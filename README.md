# Student-Management-SQL-Project
This project demonstrates the use of key SQL concepts like Database Creation, Table Creation, Data Insertion, Data Querying, Aggregation, Grouping, and Updating Records.

# 🎓 Student Management System - SQL Project  

## 📋 Project Overview  
This project was created as part of a task assigned by **MAINFLOW Technologies** to demonstrate practical skills in **SQL for database management and data analysis**.  
The database simulates a **Student Management System**, focusing on managing student records, analyzing academic performance, and practicing core SQL operations.

---

## 🛠️ Technologies Used  
- **MySQL / SQL**
- **Database Management Systems (DBMS)**
- **Data Query Language (DQL)**
- **Data Manipulation Language (DML)**

---

## 📂 Project Structure  
| File       | Description                              |
|------------|------------------------------------------|
| `TASK 1.sql` | SQL queries for creating, managing, and analyzing student data |

---

## 🔑 Key Features & Queries Performed  

### 1️⃣ Database & Table Creation  
- Created `Student_Managment` database.  
- Designed `Student` table with fields: ID, Name, Gender, Age, Academic Grade, and Subject Scores.

### 2️⃣ Data Insertion  
- Inserted sample records of 10 students with realistic data.

### 3️⃣ Data Retrieval & Analysis  
- Retrieved all student records.
- Fetched the **top-performing student based on total score**.
- Counted the **number of students by academic grade**.
- Calculated **average subject scores by gender**.
- Listed students with **high Math scores** (above 80).

### 4️⃣ Data Update  
- Updated academic grades based on conditions.

---

## 📊 Example Queries Explained  

| Query Description                              | Purpose                               |
|------------------------------------------------|---------------------------------------|
| `SELECT * FROM Student`                        | View all student data                 |
| `ORDER BY Total_Score DESC LIMIT 1`            | Find the top-performing student       |
| `GROUP BY Academic_Grade`                      | Count students per academic grade     |
| `AVG(Score) GROUP BY Gender`                  | Calculate average scores by gender    |
| `WHERE MathScore > 80`                         | Filter students with high Math scores |
| `UPDATE Academic_Grade = 'A' WHERE ID = 4`     | Update academic grade                 |

-- CREATING A DATABASE SYSTEM
CREATE DATABASE Student_Managment;

-- USING THAT DATABASE SYSTEM 
USE Student_Managment;-- use of that database system

-- CREATING TABLE FOR DATABASE SYSTEM
CREATE TABLE Student(
STUDENT_ID INT AUTO_INCREMENT PRIMARY KEY, 
NAME VARCHAR(50),
Gender VARCHAR(1), 
age INT NOT NULL,
Academic_Grade VARCHAR(1),
Mathsscore int, Sciencescore int, Englishscore int
);

-- INSERTING VALUES IN DATABASE
INSERT INTO Student(Name, Gender, Age, Academic_Grade, MathsScore, ScienceScore, EnglishScore)
VALUES 
('Aarav Sharma', 'M', 16, 'A', 92, 89, 94),
('Ananya Verma', 'F', 15, 'B', 78, 82, 80),
('Rohan Iyer', 'M', 17, 'A', 88, 91, 87),
('Ishita Singh', 'F', 16, 'C', 65, 68, 70),
('Aditya Mehta', 'M', 15, 'B', 81, 79, 85),
('Priya Nair', 'F', 17, 'A', 90, 93, 95),
('Karan Patel', 'M', 16, 'B', 77, 75, 80),
('Sneha Reddy', 'F', 15, 'A', 95, 96, 94),
('Vikram Das', 'M', 17, 'C', 60, 58, 65),
('Neha Joshi', 'F', 16, 'B', 82, 85, 88);

-- VIEW ALL DATA
SELECT * FROM Student;

-- FIND TOP PERFORMER (TOP SCORE)
SELECT  Student_id, name, 
(mathsscore + sciencescore + englishscore) AS Total_Score
FROM STUDENT
ORDER BY Total_Score DESC
LIMIT 1;

-- COUNT STUDENT BY ACADEMIC GRADE
SELECT academic_grade, COUNT(*) AS Number_of_students
FROM student
Group by  academic_grade;

-- AVERAGE SCORE BY GENDER
SELECT GENDER,
AVG(MATHSSCORE) AS AVG_MATHS, 
AVG(SCIENCESCORE) AS AVG_SCIENCE, 
AVG(ENGLISHSCORE) AS AVG_ENGLISH 
FROM STUDENT 
GROUP BY GENDER;

-- FINDING STUDENTS WITH HIGH MATHS SCORE
SELECT STUDENT_ID, NAME,  MATHSSCORE FROM STUDENT
WHERE MATHSSCORE > 80;

-- UPDATING GRADE OF STUDENT
UPDATE STUDENT
SET ACADEMIC_GRADE = 'A'
WHERE STUDENT_ID = 4;

-- VIEWING THE UPDATED LIST
SELECT * FROM STUDENT;

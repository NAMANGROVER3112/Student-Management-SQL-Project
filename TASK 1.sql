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
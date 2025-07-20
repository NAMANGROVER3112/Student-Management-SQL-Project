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


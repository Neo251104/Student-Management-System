#  Student Management System (SQL Server)

##  Project Overview

This project is a relational **Student Management System** built using Microsoft SQL Server.  

It demonstrates database design, data integrity enforcement, relational joins, aggregations, and intermediate SQL concepts.

The goal of this project was to strengthen practical SQL skills for Data Analytics, Data Science, and backend development roles.

---

##  Database Structure

The system consists of three main tables:

###  Students
- StudentID (Primary Key)
- FirstName
- LastName
- Age (CHECK constraint: Age >= 16)
- Gender
- City

###  Courses
- CourseID (Primary Key)
- CourseName
- Department
- Credits (CHECK constraint: Credits > 0)

###  Enrollments
- EnrollmentID (Primary Key)
- StudentID (Foreign Key)
- CourseID (Foreign Key)
- Grade
- EnrollmentDate (DEFAULT GETDATE())

Relationships:
- One Student → Many Enrollments
- One Course → Many Enrollments
- ON DELETE CASCADE enforced

---

##  Features Implemented

###  Data Definition
- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- CHECK constraints
- DEFAULT constraints

###  Data Manipulation
- INSERT
- UPDATE
- DELETE
- SELECT

###  Filtering & Conditions
- WHERE
- AND / OR
- LIKE
- IN
- BETWEEN
- IS NULL / IS NOT NULL

###  Sorting & Limiting
- ORDER BY
- TOP

###  Aggregation
- COUNT
- AVG
- SUM
- MIN
- MAX
- GROUP BY
- HAVING

###  Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL OUTER JOIN
- SELF JOIN

###  Set Operators
- UNION
- UNION ALL

---

##  Skills Demonstrated

- Relational database design
- Data integrity enforcement
- Writing optimized multi-table queries
- Analytical SQL thinking
- Understanding one-to-many relationships

---

##  Future Improvements

- Advanced subqueries (EXISTS, ANY, ALL)
- Window functions (ROW_NUMBER, RANK)
- Indexing for performance
- Analytical dashboard integration

---

##  Author

Neo Letswalo  
Aspiring Data Scientist | SQL | Python | Backend Systems  
Johannesburg, South Africa

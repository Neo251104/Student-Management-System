Create Database StudentManagementDB;
Use StudentManagementDB;

Create table Students (
StudentID Int Identity(1,1) Primary key,
FirstName Varchar(50) Not Null,
LastName Varchar(50) Not Null, 
Age Int Check (Age >= 16),
Gender Varchar(10),
City Varchar(50)
);

Create table Courses (
CourseID Int Identity(1,1) Primary key,
CourseName Varchar(100) Not Null,
Department Varchar(50) Not Null,
Credits Int Check (Credits > 0)
);

Create table Enrollments (
EnrollmentID Int Identity(1,1) Primary key,
StudentID Int Not Null,
CourseID Int Not Null,
Grade Decimal(5,2),
EnrollmentDate Date Default GetDate(),
Constraint Fk_Student Foreign key (StudentID) References Students(StudentID) on Delete Cascade,
Constraint Fk_Course Foreign key (CourseID) References Courses(CourseID) on Delete Cascade
);

Insert into Students (FirstName, LastName, Age, Gender, City)
Values
('Neo', 'Letswalo', 21, 'Male', 'Limpopo'),
('Hopewell', 'Ratau', 22, 'Male', 'Mashishing'),
('Thandi', 'Skhosana', 27, 'Female', 'Durban'),
('Lerato', 'Mokeona', 25, 'Female', 'Pretoria');

Insert into Courses (CourseName, Department, Credits)
Values
('Data Analysis', 'IT', 3),
('Accounting', 'Finance', 4),
('Data Science', 'IT', 4),
('Marketing', 'Commerce', 3);

Insert into Enrollments (StudentID, CourseID, Grade)
Values
(1, 1, 85.5),
(1, 2, 78.0),
(2, 1, 90.0),
(3, 3, 65.5),
(3, 4, 70.4),
(4, 4, 68.6);

Select * From Students;

Select FirstName, City
From Students;

Select * From Courses;

Select CourseName, Credits
From Courses;

Select Distinct City 
From Students;

Select Distinct Department
From Courses;

Select * From Students
Where Age > 20;

Select * From Courses
Where Credits = 3;

Select * From Students
Order by Age Asc;

Select * From Students
Order by LastName Desc;

Select * From Students
Where Age > 20 And City = 'Limpopo';

Select * From Students
Where City = 'Limpopo' Or City = 'Pretoria';

Select * From Students
Where City <> 'Limpopo';

Insert into Students (FirstName, LastName, Age, Gender, City)
Values
('Thabo', 'Mabena', 18, 'Male', 'Pretoria');

Insert into Courses (CourseName, Department, Credits)
Values 
('Cybersecurity Basics', 'IT', 3);

Select * From Students
Where City Is Null;

Select * From Students
Where City Is Not Null;

Update Students
Set City = 'Lydenburg'
Where City = 'Mashishing';

Update Courses
Set Credits += 1;

Delete Students 
Where StudentID = 5;

Select Top 3 * From Students;

Select Top 2 * From Courses
Order by Credits Desc;

Select Count(*) as Total_Students
From Students;

Select Avg(Age) as Age_Average
From Students;

Select Min(Age) as Youngest_Student
From Students;

Select Max(Grade) as Highest_Grade
From Enrollments;

Select City, Count(*) as StudentCount
From Students
Group by City;

Select Sum(Credits) as TotalCredits
From Courses;

Select Department, Avg(Credits) as AvgCredits
From Courses
Group by Department;

Select * From Students
Where FirstName Like 'N%';

Select * From Courses
Where CourseName Like '%Data%';

Select * From Students
Where LastName Like '%na';

Select * From Students
Where FirstName Like '_____';

Select * From Students
Where City in ('Lydenburg', 'Pretoria', 'Limpopo');

Select * From Students
Where Age Between 18 and 25;

Select FirstName as 'Name'
From Students;

Select CourseName as 'Subject'
From Courses;

Select 
s.FirstName, 
s.LastName,
c.CourseName
From Students s
Join Enrollments e on s.StudentID = e.StudentID
Join Courses c on e.CourseID = c.CourseID;

Select 
s.FirstName,
s.LastName,
c.CourseName
From Students s
Left Join Enrollments e on s.StudentID = e.StudentID
Left Join Courses c on e.CourseID = c.CourseID;

Select
c.CourseName,
s.FirstName,
s.LastName
From Courses c
Right Join Enrollments e on c.CourseID = e.CourseID
Right Join Students s on e.StudentID = s.StudentID;

Select 
s.FirstName, 
s.LastName, 
c.CourseName
From Students s
Full Outer Join Enrollments e on s.StudentID = e.StudentID
Full Outer Join Courses c on e.CourseID = c.CourseID
Order by s.FirstName, c.CourseName;

Select 
s1.FirstName as Student1, s1.LastName as Last1,
s2.FirstName as Student2, s2.LastName as Last2,
s1.City
From Students s1
Join Students s2 on S1.City = S2.City and S1.StudentID <> S2.StudentID
ORDER BY S1.City;

Select FirstName AS Name 
From Students
Union
Select CourseName AS Name 
From Courses;

Select FirstName AS Name 
From Students
Union ALL
Select CourseName AS Name 
From Courses;



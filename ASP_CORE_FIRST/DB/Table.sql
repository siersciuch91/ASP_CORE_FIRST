create table Course
(
	ID int not null identity(1,1) primary key,
	Title varchar(255) not null,
	Credits int
)

create table Student
(
	ID int not null identity(1,1) primary key, 
	LastName varchar(100) not null,
	FirstName varchar(50) not null,
	EnrollmentDate datetime not null
)

create table Enrollment 
(
	ID int not null identity(1,1) primary key,
	CourseID int not null foreign key references Course(ID),
	StudentID int not null foreign key references Student(ID),
	Grade char(1) not null
)
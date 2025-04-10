create database hospital;
create table patient
(serial_no int,
names varchar(200),
addres varchar(200),
fees dec(10,2)
);
select * from patient;
insert into patient( serial_no,names,addres,fees) values 
(1,'rahul','Kolkata',2010),
(2,'ram','Mumbai',40),
(3,'riya','Indore',200),
(4,'piya','Kolkata',205),
(5,'sara','Central',200);

update patient set names='masuma',addres='kolkata' where serial_no=1;  #important step

select * from patient where serial_no=5;

insert into patient(serial_no,names,addres,fees) values 
(7,'Tiraas','Bangalore',500),
(8,'Hilayri','Burdwan',500),
(9,'Ramesa','Burdwan',5090),
(10,'Ram','Bangalore',534),
(11,'Rahul','Bangalore',500),
(12,'Mkasam','Bangalore',450),
(13,'Olivia','Bangalore',5000);

select * from patient

alter database hospital modify name=CLASS_of_12;
EXEC sp_rename 'patient', 'student';

select *from student;
select top 10 * from student;
select * from student where addres='bangalore';
select *from student where fees not between 200 and 500

select distinct names from student;   #distictfilterout duplicate  give unnique valuesee

#create_another_table 
create table marks
(subjects varchar(200),
marks int,
serial_no int);
insert into marks(subjects,marks,serial_no) values 
('Math',56,1),
('english',76,2),
('bengali',98,3),
('geography',77,4),
('history',50,5),
('political science',45,6),
('lifescience',67,7),
('maths',88,8),
('english',88,9),
('science',55,9),
('geo',77,10),
('benagli',70,11),
('english',88,12),
('physics',90,13);

SELECT 
    student.serial_no,
    student.names,
    student.addres,
    student.fees,
    marks.subjects,
    marks.marks
FROM 
    student
INNER JOIN 
    marks
ON 
    student.serial_no = marks.serial_no;



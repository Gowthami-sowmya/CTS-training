create database AllianceFeedbackSystemDb;
use AllianceFeedbackSystemDb;
drop database AllianceFeedbackSystemDb;
-- Exercise 2.1----------------------------------
-- create tables----------------------------------------------
-- Trainer_Info--
create table Trainer_info(Trainer_Id char(20) primary key,Salutation Char(7),
Trainer_Name Char(30),Trainer_Location Char(30),
Trainer_Track Char(15),
Trainer_Qualification Char(100),
Trainer_Experiance Int(11),
Trainer_Email Char(100),
Trainer_Password Char(20));

-- Batch_Info-------
create table Batch_info(Batch_Id Char(20) primary key,
Batch_Owner Char(30),Batch_BU_Name Char(30));
select*from Batch_info;

-- Module_Info-----
create table Module_Info(Module_Id Char(20) primary key,Module_Name Char(40),
Module_Duration Int(11));
select * from Module_Info;

-- Associate_Info---------
create table Associate_Info(Associate_Id Char(20) primary key,Salutation Char(7),
Associate_Name Char(30),Associate_Location Char(30),Associate_Track	Char(15),
Associate_Qualification	Char(200),Associate_Email Char(100),
Associate_Password Char(20));
select*from Associate_Info;

-- Questions-------------------------------
create table Questions(Question_Id char(20) primary key,
Module_Id Char(20),
Question_Text varChar(900),
foreign key (Module_Id) references Module_Info(Module_Id));
select*from Questions;

-- Associate_Status--------------
create table Associate_status(Associate_Id char(20),
Module_Id char(20) ,
Start_Date char(20),
End_Date char(20),
foreign key(Module_Id) references Module_Info(Module_Id),
foreign key(Associate_Id) references Associate_Info(Associate_Id));
select * from Associate_status;
drop table Associate_status;


-- Trainer_feedback-------------------------------------------

create table Trainer_feedback(Trainer_id varchar(20),
Question_id varchar(20) ,
Batch_id varchar(20) ,
Module_id varchar(20) ,
Trainer_Rating int,
foreign key(Trainer_Id) references Trainer_Info(Trainer_Id),
foreign key(Question_Id) references Questions(Question_Id),
foreign key(Batch_Id) references Batch_Info(Batch_Id),
foreign key(Module_Id) references Module_Info(Module_Id));
select * from Trainer_feedback;


-- Associate_feedback-------------------
create table Associate_feedback(Associate_Id varchar(20) ,
Question_Id varchar(20),
Module_Id varchar(20) ,
Associate_Rating int,
foreign key(Associate_Id) references Associate_Info(Associate_Id),
foreign key(Question_Id) references Questions(Question_Id),
foreign key(Module_Id) references Module_Info(Module_Id));
select * from Associate_feedback;


-- Login_Details--

create table Login_Details(User_id varchar(20),
User_Password varchar(20));
select * from Login_Details;

-- (exercise 2.2)------------------

-- (modify the table Associate_status to include two columns)----------------
alter table Associate_status add Batch_Id char(20) references Batch_Info(Batch_Id);

alter table Associate_status add Trainer_Id char(20) references Trainer_Info(Trainer_Id);

select*from Associate_status;

-- (modify two columns data types of the table Associate_status)--------
alter table Associate_status modify  Start_Date date;
alter table Associate_status modify End_Date date;

-- exercise 2.3----------------------------------------------------

-- (insert details into table Trainer_Info)---------------
-- Trainer_Info--
insert into Trainer_info values('F001','Mr.','PANKAJ GHOSH','Pune','Java','Bachelor of Technology',12,'Pankaj.Ghosh@alliance.com','fac1@123');
insert into Trainer_info values('F002','Mr.','SANJAY RADHAKRISHNAN' ,'Bangalore','DotNet','Bachelor of Technology',12,'Sanjay.Radhakrishnan@alliance.com','fac2@123');
insert into Trainer_info values('F003','Mr.','VIJAY MATHUR','Chennai','Mainframe','Bachelor of Technology',10,'Vijay.Mathur@alliance.com','fac3@123');
insert into Trainer_info values('F004','Mrs.','NANDINI NAIR','Kolkata','Java','Master of Computer Applications',9,'Nandini.Nair@alliance.com','fac4@123');
insert into Trainer_info values('F005','Miss.','ANITHA PAREKH','Hyderabad','Testing','Master of Computer Applications',6,'Anitha.Parekh@alliance.com','fac5@123');
insert into Trainer_info values('F006','Mr.','MANOJ AGRAWAL','Mumbai','Mainframe','Bachelor of Technology',9,'Manoj.Agrawal@alliance.com','fac6@123');
insert into Trainer_info values('F007','Ms.','MEENA KULKARNI','Coimbatore','Testing','Bachelor of Technology',5,'Meena.Kulkarni@alliance.com','fac7@123');
insert into Trainer_info values('F009','Mr.','SAGAR MENON','Mumbai','Java','Master of Science In Information Technology',12,'Sagar.Menon@alliance.com','fac8@123');

select*from Trainer_info;

-- Batch_info--------------------------------------------------

insert into Batch_info values('B001','MRS.SWATI ROY','MSP');
insert into Batch_info values('B002','MRS.ARURNA K','HEALTHCARE');
insert into Batch_info values('B003','MR.RAJESH KRISHNAN','LIFE SCIENCES');
insert into Batch_info values('B004','MR.SACHIN SHETTY','BFS');
insert into Batch_info values('B005','MR.RAMESH PATEL','COMMUNICATIONS');
insert into Batch_info values('B006','MRS.SUSAN CHERIAN','RETAILITY & HOSPITALITY');
insert into Batch_info values('B007','MRS.SAMPADA JAIN','MSP');
insert into Batch_info values('B008','MRS.KAVITA REGE','BPO');
insert into Batch_info values('B009','MR.RAVI SEJPAL','MSP');
select*from Batch_info;

-- Module_Info-------------------------------------

insert into Module_info values('O10SQL','Oracle 10g SQL' ,16);
insert into Module_info values('O10PLSQL','Oracle 10g PL/ SQL' ,16);
insert into Module_info values('J2SE','Core Java SE 1.6',288);
insert into Module_info values('J2EE','Advanced Java EE 1.6',80);
insert into Module_info values('JAVAFX','JavaFX 2.1',80);
insert into Module_info values('DOTNT4','.Net Framework 4.0',50);
insert into Module_info values('SQL2008','MS SQl Server 2008',120);
insert into Module_info values('MSBI08','MS BI Studio 2008',158);
insert into Module_info values('SHRPNT','MS Share Point',80);
insert into Module_info values('ANDRD4','Android 4.0',200);
insert into Module_info values('EM001','Instructor',0);
insert into Module_info values('EM002','Course Material',0);
insert into Module_info values('EM003','Learning Effectiveness',0);
insert into Module_info values('EM004','Environment',0);
insert into Module_info values('EM005','Job Impact',0);
insert into Module_info values('TM001','Attendees',0);
insert into Module_info values('TM002','Course Material',0);
insert into Module_info values('TM003','Environment',0);
select*from Module_info;

-- Associate_Info------------------
insert into Associate_Info values('A001','Miss.','GAYATHRI NARAYANAN','Gurgaon','Java','Bachelor of Technology','Gayathri.Narayanan@hp.com','tne1@123');
insert into Associate_Info values('A002','Mrs.','RADHIKA MOHAN','Kerala','Java','Bachelor of Engineering In Information Technology','Radhika.Mohan@cognizant.com','tne2@123');
insert into Associate_Info values('A003','Mr.','KISHORE SRINIVAS','Chennai','Java','Bachelor of Engineering In Computers','Kishore.Srinivas@ibm.com','tne3@123');
insert into Associate_Info values('A004','Mr.','ANAND RANGANATHAN','Mumbai','DotNet','Master of Computer Applications','Anand.Ranganathan@finolex.com','tne4@123');
insert into Associate_Info values('A005','Miss.','LEELA MENON','Kerala','Mainframe','Bachelor of Engineering In Information Technology','Leela.Menon@microsoft.com','tne5@123');
insert into Associate_Info values('A006','Mrs.','ARTI KRISHNAN','Pune','Testing','Master of Computer Applications','Arti.Krishnan@cognizant.com','tne6@123');
insert into Associate_Info values('A007','Mr.','PRABHAKAR SHUNMUGHAM','Mumbai','Java','Bachelor of Technology','Prabhakar.Shunmugham@honda.com','tne7@123');

select*from Associate_Info;

-- Questions----------------------------------------

insert into Questions values('Q001','EM001','Instructor knowledgeable and able to handle all your queries');
insert into Questions values('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages');
insert into Questions values('Q003','EM002','The course materials presentation, handson,  etc. refered during the training are relevant and useful.');
insert into Questions values('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.');
insert into Questions values('Q005','EM002','The reference materials suggested for each module are adequate.');
insert into Questions values('Q006','EM003','Knowledge and skills presented in this training are applicatible at your work');
insert into Questions values('Q007','EM003','This training increases my proficiency level'); 
insert into Questions values('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions values('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.');
insert into Questions values('Q010','EM005','This training will improve your job performance.');
insert into Questions values('Q011','EM005','This training align with the business priorities and goals.');
insert into Questions values('Q012','TM001','Participants were receptive and had attitude towards learning.');
insert into Questions values('Q013','TM001','All participats gained the knowledge and the practical skills after this training.');
insert into Questions values('Q014','TM002','The course materials presentation, handson,  etc. available for the session covers the entire objectives of the course.');
insert into Questions values('Q015','TM002','Complexity of the course is adequate for the particpate level.');
insert into Questions values('Q016','TM002','Case study and practical demos helpful in understanding of the topic');
insert into Questions values('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.');
insert into Questions values('Q018','TM003','The software/hardware environment provided was adequate  for the purpose of the training.');


select*from Questions;

-- Associate_status----------------------------------

insert into Associate_status  (Associate_Id,Module_Id,Start_Date,End_Date,Batch_Id,Trainer_Id) values('A001','O10SQL','2000-12-15','2000-12-25','B001','F001'),
('A002','O10SQL','2000-12-15','2000-12-25','B001','F001'),
('A003','O10SQL','2000-12-15','2000-12-25','B001','F001'),
('A001','O10PLSQL','2001-2-1','2001-2-12','B002','F002'),
('A002','O10PLSQL','2001-2-1','2001-2-12','B002','F002'),
('A003','O10PLSQL','2001-2-1','2001-2-12','B002','F002'),
('A001','J2SE','2002-8-20','2002-10-25','B003','F003'),
('A002','J2SE','2002-8-20','2002-10-25','B003','F003'),
('A001','J2EE','2005-12-1','2005-12-25','B004','F004'),
('A002','J2EE','2005-12-1','2005-12-25','B004','F004'),
('A003','J2EE','2005-12-1','2005-12-25','B004','F004'),
('A004','J2EE','2005-12-1','2005-12-25','B004','F004'),
('A005','JAVAFX','2005-12-4','2005-12-20','B005','F006'),
('A006','JAVAFX','2005-12-4','2005-12-20','B005','F006'),
('A006','SQL2008','2007-6-21','2007-6-28','B006','F007'),
('A007','SQL2008','2007-6-21','2007-6-28','B006','F007'),
('A002','MSBI08','2009-6-26','2009-6-29','B007','F006'),
('A003','MSBI08','2009-6-26','2009-6-29','B007','F006'),
('A004','MSBI08','2009-6-26','2009-6-29','B007','F006'),
('A002','ANDRD4','2010-6-5','2010-6-28','B008','F005'),
('A005','ANDRD4','2010-6-5','2010-6-28','B008','F005'),
('A003','ANDRD4','2011-8-1','2011-8-20','B009','F005'),
('A006','ANDRD4','2011-8-1','2011-8-20','B009','F005');

select * from Associate_status;

-- exercise 2.4--------------------------------------
-- (update password of trainer F004 from fac4@123 to nn4@123) -----------------------
update Trainer_Info set Trainer_password='nn4@123' where Trainer_Id='F004';
select*from Trainer_Info;

-- exercise 2.5-----------------------------
-- (remove record from Associate_Status table)--------------
delete from Associate_status where Associate_Id='A003' and Module_Id='J2EE' and Batch_Id='B004' and Trainer_Id='F004' and Start_Date='2005-12-1' and End_Date='2005-12-25';
select*from Associate_status;

-- exercise 2.6------------------------------ 
select top(5) from Trainer_Info order by Trainer_Experience desc;
select*from Trainer_Info;
-- exercise 2.8--------------------
-- (create a dummy user in database.grant create & select table privilage to him/her)------------
create database TrainingFeedbackDBtemp;
create login Mylogin with password='123';
create user usertwo for login Mylogin;
grant create table to usertwo;
grant select,insert,update,alter to usertwo;
use TrainingFeedbackDBTemp;
revoke create table,select to usertwo;
select*from Login_Details;

-- exercise 2.9---------------------------------
-- remove table Login_Details from database
drop table Login_Details;
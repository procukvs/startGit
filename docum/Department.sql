create database if not exists Department;
use Department;

drop table if exists Flow;
create table Flow
(idFl integer not null primary key, --  
 Speciality varchar(15) not null,
 Year smallint not null,
 Term smallint not null 
);

drop table if exists Curriculum;
create table Curriculum
(idFl integer not null,
 idDisc integer not null,
 idDir integer not null,
 Lecture integer,
 Seminar integer,
 Practice integer,
 Control integer,
 Individ integer,
 contraint primary key (idFl, idDisc)
);

drop table if exists Discipline;
create table Discipline
(idDisc integer not null primary key,
 Discipline varchar(15) not null
);

drop table if exists Direction;
create table Direction
(idDir integer not null primary key,
 Direction varchar(15) not null
); 

drop table if exists Scientific;
create table Scientific
(idSci integer not null primary key,
 Scientific varchar(15) not null
);

drop table if exists Person;
create table Person
(idPer integer not null primary key,
 Surname varchar(15) not null,
 Name varchar(15) not null,
 Father varchar(15) not null,
 Address varchar(35),
 Telefon varchar(12),
 Sex char(1) not null 
); 

drop table if exists Teacher;
create table Teacher
(idPer integer not null primary key,
 idSci integer, 
 idDir integer,
 idCh integer,  
 Post varchar(15) not null,
 ScienceD varchar(15)
); 

drop table if exists Graduate;
create table Graduate
(idPer integer not null primary key,
 idCh integer, 
 idSci integer, 
 YearS smallint not null,
 idLead integer
); 

drop table if exists Student;
create table Student
(idPer integer not null primary key,
 idFl integer not null, 
 GroupS smallint,
 idLead integer
); 

drop table if exists Chair;
create table Chair
(idCh integer not null primary key,
 Title varchar(15) not null,
 idLead integer
); 

drop table if exists Assignment;
create table Assignment
(idFl integer not null,
 idDisc integer not null,
 tLean char(3) not null,
 tExec char(1) not null,
 idExec integer not null,
 cntLearner smallint,
 contraint primary key (idFl, idDisc, tLean, tExec, idExec)
);

drop table if exists Schedule;
create table Schedule
(idRoom integer not null,
 tDay char(3) not null,
 Pair smallint not null,
 idFl integer not null,
 idDisc integer not null,
 GroupS smallint,
 idPer integer,
 contraint primary key (idRoom, tDay, Pair)
); 

drop table if exists Printing;
create table Printing
(idPr integer not null primary key,
 Title varchar(15) not null,
 idLead integer,
 YearP integer,
 tPrint varchar(10)
);
 
drop table if exists Authors;
create table Authors
(idPer integer not null,
 idPr integer not null,
 contraint primary key (idPer, idPr)
); 


 